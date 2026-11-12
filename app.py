import json
import logging
import time
from pathlib import Path
from flask import Flask, render_template, request, jsonify
from pyswip import Prolog

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

app = Flask(__name__)
prolog = Prolog()

RECIPE_COUNT = 0
INGREDIENT_COUNT = 0

# Load recipe details JSON (unified cards + media data)
RECIPE_DETAILS = {}
try:
    _details_path = Path(__file__).parent / "static" / "data" / "recipe-details.json"
    RECIPE_DETAILS = json.loads(_details_path.read_text(encoding="utf-8"))
    logger.info(f"Loaded recipe-details.json: {len(RECIPE_DETAILS)} recipes.")
except Exception as e:
    logger.error(f"Failed to load recipe-details.json: {e}")


FOOD_GROUP_ORDER = ["Vegetables", "Oils", "Meats", "Sea Food", "Carbo", "Milks"]

_FOOD_GROUP_ITEMS = {
    "Vegetables": [
        "spinach", "kale", "lettuce", "swiss_chard", "carrot", "beet", "radish",
        "turnip", "cassava", "onion", "garlic", "potato", "sweet_potato", "leek",
        "shallot", "celery", "pumpkin", "butternut_squash", "zucchini", "tomato",
        "cucumber", "peas", "green_beans", "chickpeas", "lentils", "bell_pepper",
    ],
    "Oils": [
        "corn_oil", "olive_oil", "butter", "ghee", "sunflower_oil", "walnut_oil",
    ],
    "Meats": [
        "beef", "lamb", "chicken", "rabbit", "goat",
    ],
    "Sea Food": [
        "flying_fish_roe", "salmon", "cuttlefish", "octopus", "calamari", "abalone",
        "conch", "scallops", "oysters", "crab", "shrimp", "crawfish", "langoustines",
        "flatfish", "tuna", "turbot",
    ],
    "Carbo": [
        "pasta", "rice",
    ],
    "Milks": [
        "milk", "yogurt", "kefir", "buttermilk", "sour_cream",
    ],
}

ITEM_FOOD_GROUP = {}
for _group, _items in _FOOD_GROUP_ITEMS.items():
    for _raw_item in _items:
        ITEM_FOOD_GROUP[_raw_item.strip().lower()] = _group


def normalize_category(raw_category):
    """Lowercase and strip separators — kept for consistent normalization
    of any raw text pulled from Prolog. Returns '' for missing/unparseable
    input rather than raising, so callers can treat that as 'unknown'."""
    if raw_category is None:
        return ""
    try:
        text = str(raw_category).strip().lower()
    except Exception:
        return ""
    for sep in ("_", "-", " "):
        text = text.replace(sep, "")
    return text


def food_group_for_item(raw_item):
    """Look up the display food group for an ingredient. Returns
    'Uncategorized' (never None, never raises) if the ingredient is
    missing, empty, or not present in the food-group mapping."""
    if raw_item is None:
        return "Uncategorized"
    try:
        key = str(raw_item).strip().lower()
    except Exception:
        return "Uncategorized"
    if not key:
        return "Uncategorized"
    return ITEM_FOOD_GROUP.get(key, "Uncategorized")

try:
    prolog.consult("rules.pl")
    logger.info("Prolog Knowledge Base loaded successfully.")
except Exception as e:
    logger.error(f"Critical Error loading Prolog file: {e}")

try:
    RECIPE_COUNT = len(set(str(r["Name"]) for r in prolog.query("recipe(Name, _, _, _)")))
    INGREDIENT_COUNT = len(set(str(r["Item"]) for r in prolog.query("ingredient(Item)")))
    logger.info(f"Knowledge base facts: {RECIPE_COUNT} recipes, {INGREDIENT_COUNT} ingredients.")
except Exception as e:
    logger.error(f"Failed to count knowledge base facts: {e}")

@app.route('/')
def home():
    try:
        ingredients_by_category = {}
        uncategorized_count = 0

        for soln in prolog.query("ingredient(Item)"):
            try:
                raw_item = soln.get("Item") if hasattr(soln, "get") else soln["Item"]
            except (KeyError, TypeError):
                continue

            if raw_item is None:
                continue

            item = str(raw_item)
            display_item = item.replace('_', ' ').title()
            group = food_group_for_item(item)
            if group == "Uncategorized":
                uncategorized_count += 1

            if group not in ingredients_by_category:
                ingredients_by_category[group] = []

            if not any(d['raw'] == item for d in ingredients_by_category[group]):
                ingredients_by_category[group].append({"raw": item, "display": display_item})

        if uncategorized_count:
            logger.info(f"Fridge view: {uncategorized_count} ingredient(s) had no food-group mapping and were bucketed as Uncategorized.")
        sorted_ingredients = {}
        for group in FOOD_GROUP_ORDER:
            if group in ingredients_by_category:
                sorted_ingredients[group] = sorted(ingredients_by_category[group], key=lambda x: x['display'])
        for group in sorted(k for k in ingredients_by_category if k not in FOOD_GROUP_ORDER):
            sorted_ingredients[group] = sorted(ingredients_by_category[group], key=lambda x: x['display'])
        
 
        recipe_query = list(prolog.query("recipe(Name, _, _, _)"))
        total_recipes = len(set(str(r["Name"]) for r in recipe_query))

        return render_template(
            'index.html', 
            ingredients=sorted_ingredients, 
            total_recipes=total_recipes
        )
        
    except Exception as e:
        logger.error(f"Dashboard data aggregation failed: {e}")
        return render_template('index.html', ingredients={}, total_recipes=0, error="Service temporarily unavailable.")

@app.route('/recipe/<meal_name>')
def recipe_page(meal_name):
    """Dedicated recipe page.

    The primary data payload travels via sessionStorage (set by the
    dashboard right before navigating). These URL parameters are a
    graceful fallback so direct/shared/refreshed links still render
    meaningful content without the storage payload."""
    safe_name = str(meal_name).strip()[:80]
    # Try to get full recipe details from our unified JSON
    recipe_data = RECIPE_DETAILS.get(safe_name, {})
    return render_template(
        'recipe.html',
        meal_name=safe_name,
        recipe_data=recipe_data,
        ingredients=request.args.get('ingredients', ''),
        prep_time=request.args.get('time', '30'),
        calories=request.args.get('calories', ''),
        carb_label=request.args.get('carbs', ''),
    )


def _carb_label(raw):
    return str(raw).replace('_', ' ').title().replace('Keto Zero Carb', 'Keto')


def _macros_for(meal_name):
    """Resolve macro-density for a meal from the KB.
    Prolog macro_grams returns CALORIES from each macro group.
    Convert to grams using Atwater factors: protein 4, carbs 4, fat 9 kcal/g.
    """
    try:
        rows = list(prolog.query(f"macro_grams({meal_name}, P, C, F)"))
        if rows:
            p_cal = int(rows[0]["P"])
            c_cal = int(rows[0]["C"])
            f_cal = int(rows[0]["F"])
            return {
                "protein": round(p_cal / 4.0, 1),
                "carbs": round(c_cal / 4.0, 1),
                "fats": round(f_cal / 9.0, 1),
            }
    except Exception as e:
        logger.debug(f"Macro lookup failed for {meal_name}: {e}")
    return {"protein": 0, "carbs": 0, "fats": 0}


@app.route('/api/suggest', methods=['POST'])
def suggest_meal():
    try:
        data = request.json
        fridge_items = data.get('fridge', [])
        max_time = data.get('max_time', 60)
        allergy = data.get('allergy', 'none')
        diet = data.get('diet', 'any')

        empty_response = {
            "results": [],
            "partials": [],
            "metrics": {"elapsed_ms": 0, "clauses_evaluated": RECIPE_COUNT, "facts_unified": 0},
        }

        if not fridge_items:
            return jsonify(empty_response)

        safe_fridge_items = []
        for raw_item in fridge_items:
            try:
                item_name = str(raw_item).strip()
            except Exception:
                continue
            if item_name:
                safe_fridge_items.append(item_name)

        if not safe_fridge_items:
            return jsonify(empty_response)

        fridge_str = "[" + ",".join(safe_fridge_items) + "]"
        start = time.perf_counter()

        # --- Fully valid meals ----------------------------------------
        query = f"suggest_meal_pro({fridge_str}, {max_time}, {allergy}, {diet}, Meal, CarbLevel, CaloriesPer100g, ActualTime, Ingredients)"
        results = []
        try:
            # Materialize solutions first — pyswip can't run a nested query
            # while another query iterator is still active.
            solutions = list(prolog.query(query))
            seen = set()
            for soln in solutions:
                meal_name = str(soln["Meal"])
                if meal_name in seen:
                    continue
                seen.add(meal_name)
                raw_ingredients = soln["Ingredients"]
                ing_list = [str(item).replace('_', ' ').title() for item in raw_ingredients]
                results.append({
                    "meal": meal_name.replace('_', ' ').title(),
                    "carbs": _carb_label(soln["CarbLevel"]),
                    "calories": int(soln["CaloriesPer100g"]),
                    "time": int(soln["ActualTime"]),
                    "ingredients": ", ".join(ing_list),
                    "macros": _macros_for(meal_name),
                })
        except Exception as e:
            logger.error(f"Full-match query failed: {e}")

        # --- Partial matches (missing 1-2 ingredients) ----------------
        partials = []
        try:
            partial_query = (f"partial_match_pro({fridge_str}, {max_time}, {allergy}, {diet}, "
                             f"Meal, CarbLevel, CaloriesPer100g, ActualTime, Ingredients, MissingList)")
            partial_solutions = list(prolog.query(partial_query))
            seen = set()
            for soln in partial_solutions:
                meal_name = str(soln["Meal"])
                if meal_name in seen:
                    continue
                seen.add(meal_name)
                raw_ingredients = soln["Ingredients"]
                ing_list = [str(item).replace('_', ' ').title() for item in raw_ingredients]
                missing_raw = [str(m) for m in soln["MissingList"]]
                partials.append({
                    "meal": meal_name.replace('_', ' ').title(),
                    "carbs": _carb_label(soln["CarbLevel"]),
                    "calories": int(soln["CaloriesPer100g"]),
                    "time": int(soln["ActualTime"]),
                    "ingredients": ", ".join(ing_list),
                    "missing": [m.replace('_', ' ').title() for m in missing_raw],
                    "missing_raw": missing_raw,
                    "missing_count": len(missing_raw),
                    "macros": _macros_for(meal_name),
                })
        except Exception as e:
            logger.error(f"Partial-match query failed: {e}")

        elapsed_ms = round((time.perf_counter() - start) * 1000, 1)
        results = sorted(results, key=lambda x: (x['time'], x['calories']))
        partials = sorted(partials, key=lambda x: (x['missing_count'], x['time'], x['calories']))[:12]

        return jsonify({
            "results": results,
            "partials": partials,
            "metrics": {
                "elapsed_ms": elapsed_ms,
                "clauses_evaluated": RECIPE_COUNT,
                "facts_unified": len(results) + len(partials),
                "ingredients_in_kb": INGREDIENT_COUNT,
            },
        })

    except Exception as e:
        logger.error(f"API processing error: {e}")
        return jsonify({"error": "Failed to process logical constraints."}), 500


@app.route('/api/substitute', methods=['POST'])
def substitute_ingredient():
    """Return same-food-group alternatives for a missing ingredient,
    derived directly from the knowledge base's category facts."""
    try:
        data = request.json or {}
        raw = str(data.get('ingredient', '')).strip()
        if not raw:
            return jsonify({"alternatives": []})

        groups = set()
        try:
            for soln in prolog.query(f"category({raw}, G)"):
                groups.add(str(soln["G"]))
        except Exception:
            groups = set()

        alternatives = set()
        for group in groups:
            try:
                for soln in prolog.query(f"category(Item, {group})"):
                    alternatives.add(str(soln["Item"]))
            except Exception:
                continue
        alternatives.discard(raw)
        return jsonify({"alternatives": sorted(alternatives)})

    except Exception as e:
        logger.error(f"Substitute error: {e}")
        return jsonify({"error": "Substitution lookup failed."}), 500


@app.route('/api/recipe/<meal_id>')
def api_recipe_detail(meal_id):
    """Return full recipe details for a given meal_id."""
    safe_id = str(meal_id).strip()[:80]
    recipe = RECIPE_DETAILS.get(safe_id)
    if recipe:
        return jsonify(recipe)
    return jsonify({"error": "Recipe not found"}), 404


@app.route('/api/recipe-details')
def api_recipe_details_all():
    """Return all recipe details (for dashboard card enrichment)."""
    return jsonify(RECIPE_DETAILS)

if __name__ == '__main__':
    app.run(debug=True, port=5000)