/* =================================================================
   app.js — Smart Dietary Advisor · Main Application Logic
   Handles: state, chip toggle, search, API fetch, results rendering,
   recipe modal, toasts, theme, language, accessibility.
   No frameworks — vanilla JS only.
   ================================================================= */

(function () {
  'use strict';

  /* ── State ──────────────────────────────────────────────────── */
  var state = {
    selectedItems: [],
    recipeMedia: {},
    mediaLoaded: false,
    isLoading: false,
    currentLang: 'en'
  };

  /* ── Category display-name mapper ────────────────────────────── */
  /* Keys match the Python FOOD_GROUP_ORDER in app.py */
  var CAT_I18N = {
    'Vegetables': 'cat_Vegetables',
    'Oils': 'cat_Oils',
    'Meats': 'cat_Meats',
    'Sea Food': 'cat_Sea_Food',
    'Carbo': 'cat_Carbo',
    'Milks': 'cat_Milks',
    'Uncategorized': 'cat_Uncategorized'
  };
  var CAT_SLUG = {
    'Vegetables': 'vegetables', 'Oils': 'oils', 'Meats': 'meats',
    'Sea Food': 'sea-food', 'Carbo': 'carbo', 'Milks': 'milks',
    'Uncategorized': 'uncategorized'
  };

  /* Category icon map (Lucide icon names) */
  var CAT_ICONS = {
    'Vegetables': 'leaf', 'Oils': 'droplets', 'Meats': 'beef',
    'Sea Food': 'fish', 'Carbo': 'wheat', 'Milks': 'milk',
    'Uncategorized': 'package'
  };

  /* ── Utilities ───────────────────────────────────────────────── */
  function $(sel, ctx) { return (ctx || document).querySelector(sel); }
  function $$(sel, ctx) { return Array.from((ctx || document).querySelectorAll(sel)); }
  function esc(s) { var d = document.createElement('div'); d.textContent = s; return d.innerHTML; }

  function sqlSafe(s) {
    return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;')
      .replace(/"/g,'&quot;').replace(/'/g,'&#39;');
  }

  function recipeSlug(name) {
    /* API returns Title Case ("Chicken Tikka Masala"); media JSON keys
       use Prolog atoms ("chicken_tikka_masala"). Normalize both ways. */
    var s = String(name || '').toLowerCase();
    if (s.indexOf(' ') !== -1) {
      s = s.replace(/\s+/g, '_');           // "Chicken Tikka" → chicken_tikka
    }
    return s.replace(/[^a-z0-9_]/g, '');    // strip punctuation
  }

  /* ── Icons (Lucide sprite reference) ─────────────────────────── */
  function icon(name, cls) {
    return '<i data-lucide="' + name + '"' + (cls ? ' class="' + cls + '"' : '') + '></i>';
  }

  /* ── Toast System ────────────────────────────────────────────── */
  function showToast(message, type) {
    type = type || 'info';
    var container = $('#toast-container');
    if (!container) return;

    var toast = document.createElement('div');
    toast.className = 'toast ' + type;
    toast.setAttribute('role', 'status');
    toast.setAttribute('aria-live', 'polite');

    var iconName = type === 'success' ? 'check-circle-2' : type === 'error' ? 'alert-circle' : 'info';
    var iconColor = type === 'success' ? '#10b981' : type === 'error' ? '#ef4444' : 'var(--clr-600)';
    toast.innerHTML = '<span class="toast-icon" style="color:' + iconColor + '">' + icon(iconName, 'h-5 w-5') + '</span><span>' + esc(message) + '</span>';

    container.appendChild(toast);
    if (window.lucide) lucide.createIcons({ nodes: [toast] });

    setTimeout(function () {
      toast.classList.add('leaving');
      setTimeout(function () { if (toast.parentNode) toast.remove(); }, 300);
    }, 4000);
  }

  /* ── Recipe Media (loaded once) ──────────────────────────────── */
  function loadMedia() {
    if (state.mediaLoaded) return;
    fetch('/static/data/recipe-details.json')
      .then(function (r) { return r.json(); })
      .then(function (data) { state.recipeMedia = data; state.mediaLoaded = true; })
      .catch(function () { state.recipeMedia = {}; state.mediaLoaded = true; });
  }

  function getMedia(mealName) {
    var slug = recipeSlug(mealName);
    return state.recipeMedia[slug] || null;
  }

  /* ── Chip Toggle ─────────────────────────────────────────────── */
  function initChips() {
    $$('.chip').forEach(function (chip) {
      chip.addEventListener('click', function () {
        var input = chip.querySelector('input');
        if (!input) return;
        input.checked = !input.checked;
        chip.classList.toggle('active', input.checked);
        updateSelectedItems();
        updateLiveStats();

        /* Pulse micro-interaction */
        chip.style.animation = 'none';
        void chip.offsetWidth;
        chip.style.animation = '';
      });
    });
  }

  function updateSelectedItems() {
    state.selectedItems = $$('input[name="fridge_items"]:checked').map(function (i) { return i.value; });
  }

  /* ── Search Filter ───────────────────────────────────────────── */
  function initSearch() {
    var input = $('#pantry-search');
    if (!input) return;
    input.addEventListener('input', function () {
      var q = input.value.toLowerCase().trim();
      $$('.chip').forEach(function (chip) {
        var name = (chip.getAttribute('data-name') || chip.textContent).toLowerCase();
        chip.style.display = (!q || name.indexOf(q) !== -1) ? '' : 'none';
      });
      $$('.category-group').forEach(function (grp) {
        var vis = $$('.chip', grp).some(function (c) { return c.style.display !== 'none'; });
        grp.style.display = vis ? '' : 'none';
      });
    });
  }

  /* ── Live Stats ──────────────────────────────────────────────── */
  function updateLiveStats() {
    var countEl = $('#live-count');
    if (countEl) countEl.textContent = state.selectedItems.length;
  }

  /* ── Range Slider Fill ───────────────────────────────────────── */
  function initSliders() {
    $$('.range-slider').forEach(function (sl) {
      function paint() {
        var min = +sl.min || 0, max = +sl.max || 100, v = +sl.value;
        sl.style.setProperty('--fill', ((v - min) / (max - min) * 100) + '%');
      }
      paint();
      sl.addEventListener('input', paint);
    });
  }

  /* ── Clear Pantry ────────────────────────────────────────────── */
  window.clearPantry = function () {
    $$('input[name="fridge_items"]:checked').forEach(function (i) { i.checked = false; });
    $$('.chip.active').forEach(function (c) { c.classList.remove('active'); });
    updateSelectedItems();
    updateLiveStats();
    var search = $('#pantry-search');
    if (search) { search.value = ''; search.dispatchEvent(new Event('input')); }
    showToast(I18N.t('toastCleared'), 'success');
  };

  /* ── Core: Fetch Meals ───────────────────────────────────────── */
  window.fetchMeals = function () {
    if (state.isLoading) return;

    var items = $$('input[name="fridge_items"]:checked').map(function (i) { return i.value; });
    if (items.length === 0) {
      showToast(I18N.t('toastNoMatch'), 'error');
      return;
    }

    var maxTime = parseInt(($('#max_time') || {}).value || '60', 10);
    var dietRadio = $('input[name="diet"]:checked');
    var diet = dietRadio ? dietRadio.value : 'any';

    /* Allergies: map checked checkboxes to allergy param.
       Per app.py: allergy is sent as a single string. We combine multiple
       allergens by passing the first one found; the backend intersects them. */
    var allergens = $$('input[name="restriction"]:checked').map(function (i) { return i.value; });
    var allergyParam = allergens.length > 0 ? allergens[0] : 'none';

    state.isLoading = true;
    var btn = $('#synthesize-btn');
    if (btn) { btn.disabled = true; btn.querySelector('.btn-text').textContent = I18N.t('synthesizing'); }

    /* Show skeleton + hide results */
    showSkeleton(true);
    hideResults();
    hideEmptyState();

    fetch('/api/suggest', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        fridge: items,
        max_time: maxTime,
        allergy: allergyParam,
        diet: diet
      })
    })
    .then(function (res) {
      if (!res.ok) throw new Error('HTTP ' + res.status);
      return res.json();
    })
    .then(function (data) {
      if (data.error) throw new Error(data.error);
      var meals = data.results || [];
      var partials = data.partials || [];
      renderResults(meals, partials);
      if (meals.length === 0 && partials.length === 0) {
        showEmptyState(false);
        showToast(I18N.t('toastNoMatch'), 'info');
      } else {
        showToast(I18N.t('toastSynthesized', { n: meals.length }), 'success');
      }
    })
    .catch(function (err) {
      console.error('Fetch error:', err);
      showEmptyState(true);
      showToast(I18N.t('toastApiError'), 'error');
    })
    .finally(function () {
      state.isLoading = false;
      showSkeleton(false);
      if (btn) { btn.disabled = false; btn.querySelector('.btn-text').textContent = I18N.t('synthesize'); }
    });
  };

  /* ── Skeleton Toggle ─────────────────────────────────────────── */
  function showSkeleton(show) {
    var el = $('#skeleton-grid');
    if (el) el.style.display = show ? 'grid' : 'none';
  }

  /* ── Results Grid ────────────────────────────────────────────── */
  function hideResults() {
    var g = $('#results-grid');
    if (g) { g.innerHTML = ''; g.style.display = 'none'; }
    var w = $('#results-wrapper');
    if (w) w.style.display = 'none';
    var pw = $('#partials-wrapper');
    if (pw) pw.style.display = 'none';
  }

  function showEmptyState(isError) {
    var el = $('#empty-state');
    if (el) {
      el.style.display = '';
      var h3 = el.querySelector('h3');
      var p = el.querySelector('p');
      if (h3) h3.textContent = isError ? I18N.t('errorTitle') : I18N.t('emptyTitle');
      if (p) p.textContent = isError ? I18N.t('errorDesc') : I18N.t('emptyDesc');
    }
  }

  function hideEmptyState() {
    var el = $('#empty-state');
    if (el) el.style.display = 'none';
  }

  function renderResults(meals, partials) {
    var grid = $('#results-grid');
    if (!grid) return;
    grid.innerHTML = '';
    grid.style.display = '';

    /* Show wrapper */
    var wrapper = $('#results-wrapper');
    if (wrapper) wrapper.style.display = '';

    /* Update count labels */
    var exactLabel = $('#exact-label');
    var exactCount = $('#exact-count');
    if (exactLabel) exactLabel.textContent = I18N.t('exactLabel');
    if (exactCount) exactCount.textContent = meals.length > 0 ? I18N.t('foundCount', { n: meals.length }) : '';

    /* Render exact matches */
    meals.forEach(function (meal, idx) {
      grid.appendChild(buildCard(meal, false, idx));
    });

    /* Render partials */
    if (partials.length > 0) {
      var partialWrapper = $('#partials-wrapper');
      if (partialWrapper) partialWrapper.style.display = '';
      var partialGrid = $('#partials-grid');
      if (partialGrid) {
        partialGrid.innerHTML = '';
        partials.forEach(function (meal, idx) {
          partialGrid.appendChild(buildCard(meal, true, meals.length + idx));
        });
      }
      var partialCount = $('#partial-count');
      if (partialCount) partialCount.textContent = I18N.t('closeMatchCount', { n: partials.length });
    }

    /* Init Lucide icons in newly rendered content */
    if (window.lucide) lucide.createIcons({ nodes: [grid] });
  }

  /* ── Build Recipe Card ───────────────────────────────────────── */
  function buildCard(meal, isPartial, index) {
    var card = document.createElement('article');
    card.className = 'recipe-card stagger-in';
    card.style.setProperty('--i', index);
    card.setAttribute('tabindex', '0');
    card.setAttribute('role', 'button');
    card.setAttribute('aria-label', I18N.t('openRecipe') + ': ' + meal.meal);

    var media = getMedia(meal.meal);
    var imgUrl = media ? media.image : null;

    var isKeto = String(meal.carbs || '').toLowerCase().indexOf('keto') !== -1;
    var isLow = String(meal.carbs || '').toLowerCase().indexOf('low') !== -1;
    var dietBadgeClass = isKeto ? 'keto' : isLow ? 'low' : 'standard';
    var dietLabel = isKeto ? 'Keto' : isLow ? 'Low Carb' : 'Standard';

    var metaPills = '';
    metaPills += '<span class="meta-pill">' + icon('clock', 'h-3.5 w-3.5') + ' ' + esc(meal.time) + ' min</span>';
    /* Show protein with standard unit */
    var m0 = meal.macros || {};
    var proteinTxt = (m0.protein === undefined || m0.protein === null) ? '—' : m0.protein + ' g';
    metaPills += '<span class="meta-pill">' + icon('dumbbell', 'h-3.5 w-3.5') + ' ' + esc(proteinTxt) + '</span>';

    var html = '';

    /* Image — use local meal_images if available, fallback to remote */
    if (imgUrl) {
      html += '<img class="card-image" src="' + esc(imgUrl) + '" alt="' + esc(meal.meal) + '" loading="lazy">';
    } else {
      html += '<div class="card-image" style="display:flex;align-items:center;justify-content:center;background:linear-gradient(135deg,var(--clr-100),var(--bg-tertiary));">' + icon('utensils-crossed', 'h-10 w-10 opacity-30') + '</div>';
    }

    html += '<div class="card-body">';
    html += '<div class="card-top"><h3 class="card-title">' + esc(meal.meal) + '</h3></div>';
    html += '<div class="card-meta">' + metaPills + '</div>';
    html += '<div class="card-badges">';
    html += '<span class="diet-badge ' + dietBadgeClass + '">' + esc(dietLabel) + '</span>';
    html += '<span class="cal-badge">' + icon('flame', 'h-3 w-3') + ' ' + esc(meal.calories) + ' kcal/100 g</span>';
    html += '</div>';

    /* Partial: show missing ingredients */
    if (isPartial && meal.missing && meal.missing.length > 0) {
      html += '<div class="card-meta" style="margin-block-start:8px">';
      html += '<span class="meta-pill" style="background:rgba(220,38,38,0.08);color:#dc2626">' + icon('alert-triangle', 'h-3.5 w-3.5') + ' ' + I18N.t('modalMissing') + ': ' + meal.missing.join(', ') + '</span>';
      html += '</div>';
    }

    html += '</div>';
    card.innerHTML = html;

    /* Click handler — open modal */
    function openModal() { openRecipeModal(meal, isPartial); }
    card.addEventListener('click', openModal);
    card.addEventListener('keydown', function (ev) {
      if (ev.key === 'Enter' || ev.key === ' ') { ev.preventDefault(); openModal(); }
    });

    return card;
  }

  /* ── Recipe Detail Modal ─────────────────────────────────────── */
  function openRecipeModal(meal, isPartial) {
    var overlay = $('#recipe-modal');
    if (!overlay) return;

    var media = getMedia(meal.meal);
    var imgUrl = media ? media.image : null;
    var steps = media ? media.steps : null;
    var ingredients = media ? media.ingredients : null;

    var isKeto = String(meal.carbs || '').toLowerCase().indexOf('keto') !== -1;
    var isLow = String(meal.carbs || '').toLowerCase().indexOf('low') !== -1;
    var dietBadgeClass = isKeto ? 'keto' : isLow ? 'low' : 'standard';
    var dietLabel = isKeto ? 'Keto' : isLow ? 'Low Carb' : 'Standard';

    var body = overlay.querySelector('.modal-body');
    if (!body) return;

    var html = '';

    /* Close button */
    html += '<button class="modal-close" aria-label="Close" id="modal-close-btn">' + icon('x', 'h-5 w-5') + '</button>';

    /* Image — local or remote */
    if (imgUrl) {
      html += '<img class="modal-image" src="' + esc(imgUrl) + '" alt="' + esc(meal.meal) + '">';
    } else {
      html += '<div class="modal-image" style="display:flex;align-items:center;justify-content:center;background:linear-gradient(135deg,var(--clr-100),var(--bg-tertiary));">' + icon('utensils-crossed', 'h-12 w-12 opacity-20') + '</div>';
    }

    html += '<div class="modal-body" style="padding:var(--space-xl)">';

    /* Title + badges */
    html += '<h2 class="modal-title">' + esc(meal.meal) + '</h2>';
    html += '<div class="modal-meta">';
    html += '<span class="diet-badge ' + dietBadgeClass + '">' + esc(dietLabel) + '</span>';
    html += '<span class="meta-pill">' + icon('clock', 'h-3.5 w-3.5') + ' ' + I18N.t('modalPrepTime') + ': ' + esc(meal.time) + ' min</span>';
    html += '<span class="meta-pill">' + icon('flame', 'h-3.5 w-3.5') + ' ' + esc(meal.calories) + ' kcal/100 g</span>';
    html += '</div>';

    /* Macros — International Standard Format */
    var m = meal.macros || {};
    html += '<h3 class="modal-section-title" style="margin-block-start:var(--space-lg)">' + I18N.t('modalMacros') + '</h3>';
    html += '<div class="modal-macros">';
    html += '<div class="macro-card"><span class="macro-val">' + (m.protein !== undefined ? m.protein + ' g' : '—') + '</span><span class="macro-label">' + I18N.t('modalProtein') + '</span></div>';
    html += '<div class="macro-card"><span class="macro-val">' + (m.carbs !== undefined ? m.carbs + ' g' : '—') + '</span><span class="macro-label">' + I18N.t('modalCarbs') + '</span></div>';
    html += '<div class="macro-card"><span class="macro-val">' + (m.fats !== undefined ? m.fats + ' g' : '—') + '</span><span class="macro-label">' + I18N.t('modalFats') + '</span></div>';
    html += '<div class="macro-card"><span class="macro-val">' + (m.calories !== undefined ? m.calories + ' kcal' : '—') + '</span><span class="macro-label">' + I18N.t('modalEnergy') + '</span></div>';
    html += '</div>';

    /* Ingredients — with metric weights if available */
    if (ingredients && ingredients.length > 0) {
      html += '<div class="modal-section">';
      html += '<h3 class="modal-section-title">' + I18N.t('modalIngredients') + '</h3>';
      html += '<div class="ing-list">';
      ingredients.forEach(function (ing) {
        var name = ing.ingredient || ing;
        var amount = ing.amount ? ing.amount + ' ' + (ing.unit || 'g') : '';
        var label = amount ? name + ' (' + amount + ')' : name;
        html += '<span class="ing-badge">' + esc(label) + '</span>';
      });
      if (isPartial && meal.missing) {
        meal.missing.forEach(function (m) {
          html += '<span class="ing-badge missing">' + I18N.t('modalMissing') + ': ' + esc(String(m).replace(/_/g, ' ')) + '</span>';
        });
      }
      html += '</div></div>';
    } else {
      /* Fallback: comma-separated ingredients from API */
      var ings = String(meal.ingredients || '').split(',').map(function (s) { return s.trim(); }).filter(Boolean);
      if (ings.length > 0) {
        html += '<div class="modal-section">';
        html += '<h3 class="modal-section-title">' + I18N.t('modalIngredients') + '</h3>';
        html += '<div class="ing-list">';
        ings.forEach(function (ing) {
          html += '<span class="ing-badge">' + esc(ing) + '</span>';
        });
        if (isPartial && meal.missing) {
          meal.missing.forEach(function (m) {
            html += '<span class="ing-badge missing">' + I18N.t('modalMissing') + ': ' + esc(String(m).replace(/_/g, ' ')) + '</span>';
          });
        }
        html += '</div></div>';
      }
    }

    /* Cooking Steps — with timing */
    html += '<div class="modal-section">';
    html += '<h3 class="modal-section-title">' + I18N.t('modalSteps') + '</h3>';
    if (steps && steps.length > 0) {
      html += '<ol class="steps-list">';
      steps.forEach(function (step) {
        var stepText = (typeof step === 'object') ? (step.instruction || step.step || '') : step;
        var stepMin = (typeof step === 'object' && (step.duration_minutes || step.minutes)) ? ' <span class="step-time">' + (step.duration_minutes || step.minutes) + ' min</span>' : '';
        html += '<li class="step-item"><span class="step-num"></span><span class="step-text">' + esc(stepText) + '</span>' + stepMin + '</li>';
      });
      html += '</ol>';
    } else {
      html += '<p style="color:var(--text-muted);font-size:0.9rem">' + I18N.t('modalNoSteps') + '</p>';
    }
    html += '</div>';

    html += '</div>'; /* end modal-body inner */

    body.innerHTML = html;
    if (window.lucide) lucide.createIcons({ nodes: [body] });

    /* Show modal */
    overlay.classList.add('open');
    document.body.style.overflow = 'hidden';

    /* Close handlers */
    var closeBtn = body.querySelector('#modal-close-btn');
    if (closeBtn) closeBtn.addEventListener('click', closeModal);
    overlay.addEventListener('click', function onBackdrop(ev) {
      if (ev.target === overlay) { closeModal(); overlay.removeEventListener('click', onBackdrop); }
    });
    document.addEventListener('keydown', function onEsc(ev) {
      if (ev.key === 'Escape') { closeModal(); document.removeEventListener('keydown', onEsc); }
    });

    /* Focus trap */
    if (closeBtn) closeBtn.focus();
  }

  function closeModal() {
    var overlay = $('#recipe-modal');
    if (overlay) overlay.classList.remove('open');
    document.body.style.overflow = '';
    /* Return focus to last focused card */
    var last = document.activeElement;
    if (last && last.classList.contains('recipe-card')) last.focus();
  }

  /* ── Substitute ──────────────────────────────────────────────── */
  window.suggestSubstitute = function (rawName, btn) {
    if (!rawName) return;
    btn.disabled = true;
    fetch('/api/substitute', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ingredient: rawName })
    })
    .then(function (r) { return r.json(); })
    .then(function (data) {
      var alts = data.alternatives || [];
      if (alts.length > 0) {
        showToast(I18N.t('toastSubstitute', { old: rawName.replace(/_/g, ' '), new: alts[0] }), 'info');
      } else {
        showToast(I18N.t('toastNoSubstitute'), 'info');
      }
    })
    .catch(function () { showToast(I18N.t('toastApiError'), 'error'); })
    .finally(function () { btn.disabled = false; });
  };

  /* ── Theme Toggle ────────────────────────────────────────────── */
  function initTheme() {
    var saved = localStorage.getItem('sda_theme');
    if (saved) document.documentElement.setAttribute('data-theme', saved);
    else if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
      document.documentElement.setAttribute('data-theme', 'dark');
    }
  }

  window.toggleTheme = function () {
    var current = document.documentElement.getAttribute('data-theme');
    var next = current === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', next);
    localStorage.setItem('sda_theme', next);
    showToast(I18N.t(next === 'dark' ? 'toastThemeDark' : 'toastThemeLight'), 'info');
  };

  /* ── Language Toggle ─────────────────────────────────────────── */
  window.toggleLanguage = function () {
    var next = I18N.toggle();
    state.currentLang = next;
    showToast(I18N.t(next === 'ar' ? 'toastLangSwitch' : 'toastLangSwitchBack'), 'info');
  };

  /* ── Header Scroll Shadow ────────────────────────────────────── */
  function initHeaderScroll() {
    var header = $('.site-header');
    if (!header) return;
    function onScroll() {
      header.classList.toggle('scrolled', window.scrollY > 10);
    }
    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });
  }

  /* ── Initialize ──────────────────────────────────────────────── */
  document.addEventListener('DOMContentLoaded', function () {
    initTheme();
    I18N.applyToDOM();
    initChips();
    initSearch();
    initSliders();
    initHeaderScroll();
    loadMedia();
    updateLiveStats();

    /* Init Lucide icons */
    if (window.lucide) lucide.createIcons();
  });

})();
