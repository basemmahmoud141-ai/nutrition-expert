% ======================================================================
% rules.pl — inference layer.
% Consumes only facts from knowledge_base.pl (single source of truth):
% ingredient/1, category/2, calories/2, recipe/4, placeholder_ingredient/1
% and animal_product/1. Allergen mappings live here because they are
% relational knowledge, not per-ingredient nutrition data.
% ======================================================================

:- consult('knowledge_base.pl').

% ----------------------------------------------------------------------
% Diet support.
% is_animal_product is now derived from explicit KB facts. The old
% hand-maintained list duplicated knowledge-base data and silently
% rotted whenever a new ingredient was added.
% ----------------------------------------------------------------------
is_animal_product(Item) :-
    animal_product(Item).

vegan_recipe(RecipeName) :-
    recipe(RecipeName, Ingredients, _, _),
    \+ (member(Ingredient, Ingredients), is_animal_product(Ingredient)).

% ----------------------------------------------------------------------
% Allergy support.
% ----------------------------------------------------------------------
has_allergen(pasta, gluten).
has_allergen(butter, lactose).
has_allergen(milk, lactose).
has_allergen(yogurt, lactose).
has_allergen(sour_cream, lactose).
has_allergen(shrimp, shellfish).
has_allergen(crab, shellfish).

allergy_free_recipe(RecipeName, AllergyType) :-
    recipe(RecipeName, Ingredients, _, _),
    \+ (member(Ingredient, Ingredients), has_allergen(Ingredient, AllergyType)).

quick_recipe(RecipeName, MaxTime) :-
    recipe(RecipeName, _, PrepTime, CookTime),
    TotalTime is PrepTime + CookTime,
    TotalTime =< MaxTime.

subset([], _).
subset([H|T], List) :-
    member(H, List),
    subset(T, List).

can_cook(RecipeName, MyFridgeIngredients) :-
    recipe(RecipeName, Ingredients, _, _),
    subset(Ingredients, MyFridgeIngredients).

% ----------------------------------------------------------------------
% Canonical validity core: ONE place defines "this meal satisfies the
% request". Every suggestion entry point shares it, so time / fridge /
% allergy / diet constraints can never drift apart between predicates.
% ----------------------------------------------------------------------
meal_ok(RecipeName, MyFridge, MaxTime, AvoidAllergy, Diet) :-
    recipe(RecipeName, Ingredients, PrepTime, CookTime),
    TotalTime is PrepTime + CookTime,
    TotalTime =< MaxTime,
    subset(Ingredients, MyFridge),
    allergy_ok(RecipeName, AvoidAllergy),
    diet_ok(RecipeName, Diet).

% Dispatch helpers: the sentinel clauses end with a cut so they are
% mutually exclusive with the real filter clauses — otherwise "none"
% would also satisfy allergy_free_recipe (vacuously) and prove every
% meal twice.
allergy_ok(_, none) :- !.
allergy_ok(RecipeName, Allergy) :-
    allergy_free_recipe(RecipeName, Allergy).

diet_ok(_, any) :- !.
diet_ok(RecipeName, vegan) :-
    vegan_recipe(RecipeName).

suggest_meal(MyFridge, MaxTime, AvoidAllergy, Diet, RecipeName) :-
    meal_ok(RecipeName, MyFridge, MaxTime, AvoidAllergy, Diet).

recipe_carbs(RecipeName, CarbsList) :-
    recipe(RecipeName, Ingredients, _, _),
    findall(Ingredient, (member(Ingredient, Ingredients), category(Ingredient, carbs)), CarbsList).

recipe_carb_score(RecipeName, Score) :-
    recipe_carbs(RecipeName, CarbsList),
    length(CarbsList, Score).

meal_carb_level(RecipeName, Level) :-
    recipe_carb_score(RecipeName, Score),
    ( Score =:= 0 -> Level = keto_zero_carb
    ; Score =:= 1 -> Level = low_carb
    ; Score >= 2  -> Level = high_carb
    ).

% ----------------------------------------------------------------------
% Calorie totals: NO silent fallbacks. A total exists only when every
% real ingredient has an explicit calories/2 fact; editorial placeholders
% contribute zero and are skipped entirely (previously a missing fact was
% masked with a fake 50 kcal and placeholders were summed by name).
% ----------------------------------------------------------------------
sum_calories([], 0).
sum_calories([Item | Tail], Total) :-
    sum_item(Item, ItemCals),
    sum_calories(Tail, RestCals),
    Total is ItemCals + RestCals.

sum_item(Item, 0) :-
    placeholder_ingredient(Item),
    !.
sum_item(Item, Cals) :-
    calories(Item, Cals).

recipe_total_calories(RecipeName, TotalCalories) :-
    recipe(RecipeName, Ingredients, _, _),
    sum_calories(Ingredients, TotalCalories).

% Per-ingredient normalisation shared by both *_pro entry points.
calories_per_100g(_, 0, 0) :- !.
calories_per_100g(TotalCals, NumIngredients, CaloriesPer100g) :-
    CaloriesPer100g is round(TotalCals / NumIngredients).

suggest_meal_pro(MyFridge, MaxTime, AvoidAllergy, Diet, RecipeName, CarbLevel, TotalCalories) :-
    meal_ok(RecipeName, MyFridge, MaxTime, AvoidAllergy, Diet),
    meal_carb_level(RecipeName, CarbLevel),
    recipe_total_calories(RecipeName, TotalCalories).

suggest_meal_pro(MyFridge, MaxTime, AvoidAllergy, Diet, RecipeName, CarbLevel, CaloriesPer100g, ActualTime, Ingredients) :-
    meal_ok(RecipeName, MyFridge, MaxTime, AvoidAllergy, Diet),
    recipe(RecipeName, Ingredients, PrepTime, CookTime),
    ActualTime is PrepTime + CookTime,
    meal_carb_level(RecipeName, CarbLevel),
    recipe_total_calories(RecipeName, TotalCals),
    length(Ingredients, NumIngredients),
    calories_per_100g(TotalCals, NumIngredients, CaloriesPer100g).

% ----------------------------------------------------------------------
% Partial-match support: recipes that are almost cookable. Missing
% ingredients are computed from data via placeholder_ingredient/1 —
% no string-suffix inspection anywhere.
% ----------------------------------------------------------------------
missing_ingredients(RecipeName, MyFridge, MissingList) :-
    recipe(RecipeName, Ingredients, _, _),
    findall(Ingredient,
            (   member(Ingredient, Ingredients),
                \+ placeholder_ingredient(Ingredient),
                \+ member(Ingredient, MyFridge)
            ),
            MissingList).

partial_match_pro(MyFridge, MaxTime, AvoidAllergy, Diet, RecipeName, CarbLevel, CaloriesPer100g, ActualTime, Ingredients, MissingList) :-
    recipe(RecipeName, Ingredients, PrepTime, CookTime),
    ActualTime is PrepTime + CookTime,
    ActualTime =< MaxTime,
    allergy_ok(RecipeName, AvoidAllergy),
    diet_ok(RecipeName, Diet),
    missing_ingredients(RecipeName, MyFridge, MissingList),
    length(MissingList, NumMissing),
    NumMissing > 0,
    NumMissing =< 2,
    meal_carb_level(RecipeName, CarbLevel),
    recipe_total_calories(RecipeName, TotalCals),
    length(Ingredients, NumIngredients),
    calories_per_100g(TotalCals, NumIngredients, CaloriesPer100g).

% ----------------------------------------------------------------------
% Macro density: SINGLE pass over the ingredient list (the old version
% traversed it three times with three separate findall/3 calls).
% Exactly one classification branch fires per item; anything without a
% usable category+calorie pair contributes zeros.
% ----------------------------------------------------------------------
macro_grams(RecipeName, ProteinCal, CarbCal, FatCal) :-
    recipe(RecipeName, Ingredients, _, _),
    macro_acc(Ingredients, 0, 0, 0, ProteinCal, CarbCal, FatCal).

macro_acc([], P, C, F, P, C, F).
macro_acc([Item | Rest], P0, C0, F0, P, C, F) :-
    item_macro_cals(Item, CalP, CalC, CalF),
    P1 is P0 + CalP,
    C1 is C0 + CalC,
    F1 is F0 + CalF,
    macro_acc(Rest, P1, C1, F1, P, C, F).

item_macro_cals(I, Cal, 0, 0) :- category(I, protein), calories(I, Cal), !.
item_macro_cals(I, 0, Cal, 0) :- category(I, carbs),   calories(I, Cal), !.
item_macro_cals(I, 0, 0, Cal) :- fat_category(Cat), category(I, Cat), calories(I, Cal), !.
item_macro_cals(_, 0, 0, 0).

fat_category(fats).
fat_category(healthy_fats).
