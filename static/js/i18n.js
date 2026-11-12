/* =================================================================
   i18n.js — English / Arabic Translation System
   Prolog output stays English-only; this translates UI display only.
   ================================================================= */

var I18N = (function () {
  'use strict';

  var STORAGE_KEY = 'sda_lang';

  var dict = {
    /* ── English ──────────────────────────────── */
    en: {
      /* Nav & Brand */
      brand: 'Nutrition_Exoert',
      brandSub: 'Smart Dietary Advisor',
      navFridge: 'Fridge',
      navFilters: 'Filters',
      navResults: 'Results',
      navAbout: 'About',
      langToggle: 'عربي',
      themeToggleLight: 'Light mode',
      themeToggleDark: 'Dark mode',

      /* Hero */
      heroTag: 'Prolog Expert System',
      heroTitle: 'Your kitchen,\noptimized by logic.',
      heroSubtitle: 'Find perfect meals based on your exact available ingredients, time constraints, and dietary rules — powered by symbolic AI.',
      heroCta: 'Start Building a Meal',
      heroStatus: 'PROLOG ENGINE ONLINE',

      /* Pantry */
      pantryTitle: 'Your Kitchen, Digitized',
      pantryDesc: 'Select everything you have on hand, set your constraints, and let the Prolog engine resolve every valid meal.',
      searchPlaceholder: 'Search ingredients… try "chicken"',
      clearAll: 'Clear all',

      /* Categories */
      cat_Vegetables: 'Vegetables',
      cat_Meats: 'Meats',
      cat_Sea_Food: 'Seafood',
      cat_Milks: 'Dairy',
      cat_Carbo: 'Grains & Carbs',
      cat_Oils: 'Oils & Fats',
      cat_Uncategorized: 'Other',

      /* Filters */
      filterTime: 'Max Preparation Time',
      filterTimeUnit: 'min',
      filterAllergies: 'Allergies & Diet',
      filterDiet: 'Diet Protocol',
      dietAny: 'Standard',
      dietVegan: 'Strict Vegan',
      lactose: 'Lactose',
      gluten: 'Gluten',
      shellfish: 'Shellfish',
      nuts: 'Nuts',
      vegan: 'Vegan',

      /* Action */
      synthesize: 'Synthesize Meals',
      synthesizing: 'Reasoning…',

      /* Results */
      resultsTitle: 'What Your Fridge Can Make',
      resultsDesc: 'Every result is proven satisfiable against the knowledge base — no hallucinated recipes.',
      exactLabel: 'Logically Valid Meals',
      partialLabel: 'Almost There',
      partialDesc: 'Missing 1–2 ingredients — add them or use a substitute.',
      openRecipe: 'View recipe',
      foundCount: '{{n}} found',
      closeMatchCount: '{{n}} close match(es)',

      /* Modal */
      modalMacros: 'Nutrition Facts',
      modalIngredients: 'Ingredients',
      modalSteps: 'Cooking Steps',
      modalMissing: 'Missing',
      modalSubstitute: 'Suggest Substitute',
      modalPrepTime: 'Prep',
      modalCalories: 'kcal / 100g',
      modalProtein: 'Protein',
      modalCarbs: 'Carbs',
      modalFats: 'Fats',
      modalEnergy: 'Energy',
      modalNoSteps: 'Cooking steps not yet available for this recipe.',
      modalImageFallback: 'Delicious dish',

      /* Toasts */
      toastSynthesized: '{{n}} logically sound recipe(s) verified.',
      toastNoMatch: 'No meals match your exact constraints. Try adding more ingredients.',
      toastApiError: 'Could not reach the reasoning engine. Is Flask running?',
      toastSubstitute: 'Substituted {{old}} → {{new}} (same food group).',
      toastNoSubstitute: 'No usable alternative found in your pantry.',
      toastCleared: 'Pantry cleared.',
      toastLangSwitch: 'Language switched to Arabic.',
      toastLangSwitchBack: 'Language switched to English.',
      toastThemeDark: 'Dark mode enabled.',
      toastThemeLight: 'Light mode enabled.',

      /* Empty / Error */
      emptyTitle: 'Ready to see what your fridge can make?',
      emptyDesc: 'Pick some ingredients above and hit synthesize.',
      emptyIconAlt: 'Chef hat icon',
      errorTitle: 'Reasoning engine unreachable',
      errorDesc: 'Make sure the Flask server is running and try again.',

      /* Footer */
      footerDesc: 'A Prolog expert system that finds meals your exact ingredients can make.',
      footerPlatform: 'Platform',
      footerEngine: 'Engine',
      footerLegal: 'Legal',
      privacy: 'Privacy Policy',
      terms: 'Terms of Service',
      pythonFlask: 'Python 3 + Flask',
      swiProlog: 'SWI-Prolog / pyswip',
      knowledgeBase: 'Knowledge base',
      recipesCount: '{{n}} recipes',
      copyright: '© 2026 Nutrition_Exoert. All rights reserved.',
      solvedWith: 'solved with symbolic logic.'
    },

    /* ── Arabic ───────────────────────────────── */
    ar: {
      brand: 'نيوتركشن_اكسبيرت',
      brandSub: 'المستشار الغذائي الذكي',
      navFridge: 'الثلاجة',
      navFilters: 'التصفيات',
      navResults: 'النتائج',
      navAbout: 'حول',
      langToggle: 'EN',
      themeToggleLight: 'الوضع الفاتح',
      themeToggleDark: 'الوضع الداكن',

      heroTag: 'نظام خبير بروولج',
      heroTitle: 'مطبخك،\nمحسّن بالمنطق.',
      heroSubtitle: 'اكتشف وجبات مثالية بناءً على مكوناتك المتاحة بالضبط، وقيود الوقت، وقواعد النظام الغذائي — بقوة الذكاء الرمزي.',
      heroCta: 'ابدأ في تحضير وجبة',
      heroStatus: 'محرك البرولج يعمل',

      pantryTitle: 'مطبخك، رقمياً',
      pantryDesc: 'حدد كل ما لديك في يدك، وضعي القيود، ودع محرك البرولج يتحقق من كل وجبة صالحة.',
      searchPlaceholder: 'ابحث عن المكونات… جرّب "دجاج"',
      clearAll: 'مسح الكل',

      cat_Vegetables: 'الخضروات',
      cat_Meats: 'اللحوم',
      cat_Sea_Food: 'المأكولات البحرية',
      cat_Milks: 'الألبان',
      cat_Carbo: 'الحبوب والنشويات',
      cat_Oils: 'الزيوت والدهون',
      cat_Uncategorized: 'أخرى',

      filterTime: 'الحد الأقصى لوقت التحضير',
      filterTimeUnit: 'دقيقة',
      filterAllergies: 'الحساسية والنظام الغذائي',
      filterDiet: 'بروتوكول النظام الغذائي',
      dietAny: 'قياسي',
      dietVegan: 'نباتي صارم',
      lactose: 'اللاكتوز',
      gluten: 'الغلوتين',
      shellfish: 'المحار',
      nuts: 'المكسرات',
      vegan: 'نباتي',

      synthesize: 'تحليل الوجبات',
      synthesizing: 'جارٍ التحليل…',

      resultsTitle: 'ما يمكن لثلاجتك صنعه',
      resultsDesc: 'كل نتيجة مثبتة صحتها ضد قاعدة المعرفة — لا وجبات مُتخيّلة.',
      exactLabel: 'وجبات صالحة منطقياً',
      partialLabel: 'تقريباً هناك',
      partialDesc: 'ينقص ١–٢ مكونات — أضفها أو استخدم بديلاً.',
      openRecipe: 'عرض الوصفة',
      foundCount: '{{n}} وجبة',
      closeMatchCount: '{{n}} تطابق تقريبي',

      modalMacros: 'حقائق غذائية',
      modalIngredients: 'المكونات',
      modalSteps: 'خطوات الطبخ',
      modalMissing: 'ينقص',
      modalSubstitute: 'اقتراح بديل',
      modalPrepTime: 'التحضير',
      modalCalories: 'سعرة / ١٠٠ غ',
      modalProtein: 'البروتين',
      modalCarbs: 'الكربوهيدرات',
      modalFats: 'الدهون',
      modalEnergy: 'السعرات',
      modalNoSteps: 'خطوات الطبخ غير متوفرة بعد لهذه الوصفة.',
      modalImageFallback: 'طبقة لذيذة',

      toastSynthesized: 'تم التحقق من {{n}} وجبة صالحة منطقياً.',
      toastNoMatch: 'لا توجد وجبات تطابق قيودك بالضبط. حاول إضافة مكونات إضافية.',
      toastApiError: 'تعذر الوصول إلى محرك الاستدلال. هل سيرفر Flask يعمل؟',
      toastSubstitute: 'تم الاستبدال: {{old}} ← {{new}} (نفس المجموعة الغذائية).',
      toastNoSubstitute: 'لم يتم العثور على بديل مناسب في ثلاجتك.',
      toastCleared: 'تم مسح الثلاجة.',
      toastLangSwitch: 'تم التبديل إلى العربية.',
      toastLangSwitchBack: 'تم التبديل إلى الإنجليزية.',
      toastThemeDark: 'تم تفعيل الوضع الداكن.',
      toastThemeLight: 'تم تفعيل الوضع الفاتح.',

      emptyTitle: 'هل تريد أن ترى ما يمكن لمطبخك صنعه؟',
      emptyDesc: 'اختر بعض المكونات أعلاه واضغط تحليل.',
      emptyIconAlt: 'أيقونة طاقم الشيف',
      errorTitle: 'محرك الاستدلال غير متاح',
      errorDesc: 'تأكد من تشغيل سيرفر Flask وحاول مرة أخرى.',

      footerDesc: 'نظام خبير بروولج يجد الوجبات التي يمكن لمكوناتك بالضبط صنعها.',
      footerPlatform: 'المنصة',
      footerEngine: 'المحرك',
      footerLegal: 'قانوني',
      privacy: 'سياسة الخصوصية',
      terms: 'شروط الخدمة',
      pythonFlask: 'بايثون ٣ + فلسك',
      swiProlog: 'SWI-Prolog / pyswip',
      knowledgeBase: 'قاعدة المعرفة',
      recipesCount: '{{n}} وصفة',
      copyright: '© ٢٠٢٦ نيتركشن_اكسبيرت. جميع الحقوق محفوظة.',
      solvedWith: 'تم الحل بالمنطق الرمزي.'
    }
  };

  /* Current language */
  var current = localStorage.getItem(STORAGE_KEY) || 'en';

  function t(key, replacements) {
    var val = (dict[current] && dict[current][key]) || (dict.en && dict.en[key]) || key;
    if (replacements) {
      Object.keys(replacements).forEach(function (k) {
        val = val.replace('{{' + k + '}}', replacements[k]);
      });
    }
    return val;
  }

  function applyToDOM() {
    document.documentElement.setAttribute('lang', current);
    document.documentElement.setAttribute('dir', current === 'ar' ? 'rtl' : 'ltr');

    /* Swap body font for Arabic */
    if (current === 'ar') {
      document.body.classList.add('lang-ar');
    } else {
      document.body.classList.remove('lang-ar');
    }

    /* Translate all [data-i18n] elements */
    document.querySelectorAll('[data-i18n]').forEach(function (el) {
      var key = el.getAttribute('data-i18n');
      var val = t(key);
      if (val !== key) el.textContent = val;
    });

    /* Translate aria-labels */
    document.querySelectorAll('[data-i18n-aria]').forEach(function (el) {
      var key = el.getAttribute('data-i18n-aria');
      var val = t(key);
      if (val !== key) el.setAttribute('aria-label', val);
    });

    /* Translate placeholders */
    document.querySelectorAll('[data-i18n-placeholder]').forEach(function (el) {
      var key = el.getAttribute('data-i18n-placeholder');
      var val = t(key);
      if (val !== key) el.setAttribute('placeholder', val);
    });
  }

  function setLanguage(lang) {
    current = lang;
    localStorage.setItem(STORAGE_KEY, lang);
    applyToDOM();
  }

  function toggle() {
    var next = current === 'en' ? 'ar' : 'en';
    setLanguage(next);
    return next;
  }

  function getLang() { return current; }

  return { t: t, setLanguage: setLanguage, toggle: toggle, getLang: getLang, applyToDOM: applyToDOM };
})();
