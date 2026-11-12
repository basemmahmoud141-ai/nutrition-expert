% vegetables
ingredient(spinach).
ingredient(kale).
ingredient(lettuce).
ingredient(swiss_chard).
ingredient(carrot).
ingredient(beet).
ingredient(radish).
ingredient(turnip).
ingredient(cassava).
ingredient(onion).
ingredient(garlic).
ingredient(potato).
ingredient(sweet_potato).
ingredient(leek).
ingredient(shallot).
ingredient(celery).
ingredient(pumpkin).
ingredient(butternut_squash).
ingredient(zucchini).
ingredient(tomato).
ingredient(cucumber).
ingredient(peas).
ingredient(green_beans).
ingredient(chickpeas).
ingredient(lentils).
ingredient(bell_pepper).
% oils
ingredient(corn_oil).
ingredient(olive_oil).
ingredient(butter).
ingredient(ghee).
ingredient(sunflower_oil).
ingredient(walnut_oil).

% meats
ingredient(beef).
ingredient(lamb).
ingredient(chicken).
ingredient(rabbit).
ingredient(goat).

 % sea foad
ingredient(flying_fish_roe).
ingredient(salmon).
ingredient(cuttlefish).
ingredient(octopus).
ingredient(calamari).
ingredient(abalone).
ingredient(conch).
ingredient(scallops).
ingredient(oysters).
ingredient(crab).
ingredient(shrimp).
ingredient(crawfish).
ingredient(langoustines).
ingredient(flatfish).
ingredient(tuna).
ingredient(turbot).

% milks
ingredient(milk).
ingredient(yogurt).
ingredient(kefir).
ingredient(buttermilk).
ingredient(sour_cream).

 % carbo
ingredient(pasta).
ingredient(rice).


% categoryes
category(spinach, vegetables).
category(kale, vegetables).
category(lettuce, vegetables).
category(swiss_chard, vegetables).
category(carrot, vegetables).
category(carrot, carbs).
category(beet, vegetables).
category(beet, carbs).
category(radish, vegetables).
category(turnip, vegetables).
category(turnip, carbs).
category(cassava, carbs).
category(cassava, vegetables).
category(onion, vegetables).
category(onion, carbs).
category(garlic, vegetables).
category(potato, carbs).
category(potato, vegetables).
category(sweet_potato, carbs).
category(sweet_potato, vegetables).
category(leek, vegetables).
category(shallot, vegetables).
category(celery, vegetables).
category(pumpkin, vegetables).
category(pumpkin, carbs).
category(butternut_squash, vegetables).
category(butternut_squash, carbs).
category(zucchini, vegetables).
category(tomato, vegetables).
category(tomato, carbs).
category(cucumber, vegetables).
category(peas, vegetables).
category(peas, carbs).
category(peas, protein).
category(green_beans, vegetables).
category(chickpeas, carbs).
category(chickpeas, protein).
category(lentils, carbs).
category(lentils, protein).
category(bell_pepper, vegetables).

category(corn_oil, fats).
category(olive_oil, healthy_fats).
category(butter, fats).
category(ghee, fats).
category(sunflower_oil, fats).
category(walnut_oil, healthy_fats).

category(beef, protein).
category(lamb, protein).
category(chicken, protein).
category(rabbit, protein).
category(goat, protein).

category(flying_fish_roe, protein).
category(flying_fish_roe, healthy_fats).
category(salmon, protein).
category(salmon, healthy_fats).
category(cuttlefish, protein).
category(octopus, protein).
category(calamari, protein).
category(abalone, protein).
category(conch, protein).
category(scallops, protein).
category(oysters, protein).
category(crab, protein).
category(shrimp, protein).
category(crawfish, protein).
category(langoustines, protein).
category(flatfish, protein).
category(tuna, protein).
category(tuna, healthy_fats).
category(turbot, protein).

category(milk, protein).
category(milk, carbs).
category(milk, fats).
category(yogurt, protein).
category(yogurt, carbs).
category(kefir, protein).
category(kefir, carbs).
category(buttermilk, protein).
category(buttermilk, carbs).
category(sour_cream, fats).

category(pasta, carbs).
category(rice, carbs).


recipe(classic_tomato_pasta, [pasta, tomato, onion, garlic, olive_oil], 10, 15).
recipe(garlic_butter_pasta, [pasta, butter, garlic], 5, 10).
recipe(creamy_chicken_pasta, [pasta, chicken, milk, butter, garlic], 15, 20).
recipe(shrimp_pasta, [pasta, shrimp, garlic, tomato, olive_oil], 15, 15).
recipe(salmon_pasta, [pasta, salmon, sour_cream, leek, olive_oil], 15, 20).
recipe(beef_ragu_pasta, [pasta, beef, tomato, carrot, celery, onion, olive_oil], 20, 60).
recipe(tuna_pasta, [pasta, tuna, onion, garlic, olive_oil], 10, 15).
recipe(vegetarian_pasta, [pasta, zucchini, bell_pepper, tomato, olive_oil], 15, 20).
recipe(spinach_ricotta_style_pasta, [pasta, spinach, milk, butter, nutmeg_substitute_skipped, garlic], 10, 15).
recipe(seafood_mix_pasta, [pasta, calamari, shrimp, mussels_skipped, tomato, garlic, olive_oil], 20, 25).
recipe(rabbit_pasta_stew, [pasta, rabbit, tomato, shallot, garlic, olive_oil], 20, 45).
recipe(lamb_pasta, [pasta, lamb, tomato, garlic, onion, ghee], 15, 40).
recipe(peas_and_pasta, [pasta, peas, butter, garlic, shallot], 10, 15).
recipe(scallop_pasta, [pasta, scallops, butter, garlic, leek], 15, 15).
recipe(octopus_pasta, [pasta, octopus, tomato, garlic, olive_oil], 30, 60).

recipe(chicken_rice, [rice, chicken, onion, carrot, ghee], 15, 30).
recipe(lamb_kabsa_style, [rice, lamb, tomato, onion, garlic, carrot, ghee], 20, 60).
recipe(beef_rice_bowl, [rice, beef, onion, bell_pepper, corn_oil], 15, 30).
recipe(shrimp_fried_rice, [rice, shrimp, peas, carrot, onion, sunflower_oil], 15, 15).
recipe(vegetable_fried_rice, [rice, carrot, peas, green_beans, corn_oil], 10, 15).
recipe(salmon_rice, [rice, salmon, leek, butter], 10, 20).
recipe(tuna_rice, [rice, tuna, tomato, onion, olive_oil], 10, 15).
recipe(crab_rice, [rice, crab, shallot, garlic, butter], 15, 20).
recipe(lentil_rice_mujaddara, [rice, lentils, onion, olive_oil], 10, 40).
recipe(chickpea_rice, [rice, chickpeas, onion, cumin_skipped, olive_oil], 10, 30).
recipe(goat_rice, [rice, goat, onion, garlic, tomato, ghee], 20, 90).
recipe(rabbit_rice, [rice, rabbit, carrot, celery, onion, ghee], 20, 50).
recipe(calamari_rice, [rice, calamari, onion, garlic, tomato, olive_oil], 15, 30).
recipe(butter_rice, [rice, butter, garlic], 5, 20).
recipe(spinach_rice, [rice, spinach, onion, olive_oil], 10, 25).

recipe(classic_lentil_soup, [lentils, onion, carrot, garlic, olive_oil], 10, 30).
recipe(chicken_soup, [chicken, carrot, celery, onion, water_skipped], 15, 40).
recipe(beef_vegetable_soup, [beef, potato, carrot, onion, tomato, celery], 20, 90).
recipe(pumpkin_soup, [pumpkin, onion, garlic, cream_skipped, milk, butter], 15, 30).
recipe(butternut_squash_soup, [butternut_squash, onion, garlic, olive_oil], 15, 35).
recipe(tomato_soup, [tomato, onion, garlic, olive_oil], 10, 20).
recipe(potato_leek_soup, [potato, leek, butter, milk, garlic], 15, 30).
recipe(seafood_soup, [shrimp, calamari, flatfish, tomato, garlic, olive_oil], 20, 30).
recipe(crab_soup, [crab, corn_oil, onion, celery, milk], 15, 25).
recipe(pea_soup, [peas, onion, garlic, butter], 10, 25).
recipe(carrot_soup, [carrot, onion, garlic, olive_oil], 10, 25).
recipe(beet_soup, [beet, potato, carrot, onion, sour_cream], 20, 45).
recipe(turnip_soup, [turnip, potato, onion, butter], 15, 30).
recipe(crawfish_soup, [crawfish, onion, garlic, celery, tomato, olive_oil], 20, 35).
recipe(langoustine_soup, [langoustines, shallot, garlic, butter, milk], 15, 25).

recipe(simple_green_salad, [lettuce, cucumber, tomato, olive_oil], 10, 0).
recipe(tuna_salad, [tuna, lettuce, cucumber, onion, olive_oil], 10, 0).
recipe(potato_salad, [potato, onion, celery, sour_cream], 15, 20).
recipe(chickpea_salad, [chickpeas, cucumber, tomato, onion, olive_oil], 10, 0).
recipe(beet_salad, [beet, walnut_oil, garlic], 10, 40).
recipe(carrot_salad, [carrot, radish, walnut_oil], 10, 0).
recipe(spinach_salad, [spinach, onion, bell_pepper, olive_oil], 10, 0).
recipe(kale_salad, [kale, carrot, sunflower_oil], 10, 0).
recipe(shrimp_salad, [shrimp, lettuce, tomato, olive_oil], 15, 10).
recipe(crab_salad, [crab, lettuce, celery, sour_cream], 15, 0).
recipe(cucumber_yogurt_salad, [cucumber, yogurt, garlic], 5, 0).
recipe(radish_salad, [radish, lettuce, cucumber, olive_oil], 10, 0).
recipe(salmon_salad, [salmon, lettuce, spinach, olive_oil], 15, 15).
recipe(lentil_salad, [lentils, tomato, onion, olive_oil], 10, 30).
recipe(octopus_salad, [octopus, potato, onion, olive_oil, garlic], 20, 60).

recipe(beef_stew, [beef, potato, carrot, onion, celery, olive_oil], 20, 120).
recipe(grilled_beef, [beef, garlic, olive_oil], 10, 15).
recipe(lamb_stew, [lamb, turnip, carrot, onion, ghee], 20, 90).
recipe(roasted_lamb, [lamb, garlic, potato, sweet_potato, olive_oil], 15, 120).
recipe(goat_stew, [goat, cassava, onion, garlic, tomato, corn_oil], 25, 150).
recipe(rabbit_stew, [rabbit, potato, carrot, onion, olive_oil], 20, 60).
recipe(fried_beef, [beef, sunflower_oil, onion], 10, 15).
recipe(lamb_and_beans, [lamb, green_beans, tomato, onion, garlic, ghee], 15, 50).
recipe(meatballs_in_tomato, [beef, tomato, onion, garlic, olive_oil], 20, 30).
recipe(beef_and_peas, [beef, peas, carrot, onion, corn_oil], 15, 45).

recipe(roasted_chicken, [chicken, potato, onion, garlic, olive_oil], 15, 60).
recipe(chicken_stew, [chicken, carrot, potato, onion, tomato, corn_oil], 15, 45).
recipe(garlic_butter_chicken, [chicken, butter, garlic], 5, 15).
recipe(chicken_and_beans, [chicken, green_beans, tomato, onion, olive_oil], 15, 30).
recipe(fried_chicken, [chicken, sunflower_oil, garlic], 15, 25).
recipe(chicken_zucchini, [chicken, zucchini, onion, tomato, olive_oil], 15, 25).
recipe(chicken_spinach, [chicken, spinach, garlic, cream_skipped, milk, butter], 10, 20).
recipe(chicken_sweet_potato, [chicken, sweet_potato, onion, olive_oil], 15, 40).

recipe(grilled_salmon, [salmon, garlic, olive_oil, zucchini], 10, 20).
recipe(baked_flatfish, [flatfish, potato, garlic, olive_oil], 15, 25).
recipe(garlic_butter_shrimp, [shrimp, butter, garlic], 5, 10).
recipe(fried_calamari, [calamari, sunflower_oil], 10, 10).
recipe(stewed_cuttlefish, [cuttlefish, tomato, onion, garlic, olive_oil], 15, 45).
recipe(abalone_butter, [abalone, butter, garlic], 10, 15).
recipe(conch_stew, [conch, onion, tomato, garlic, corn_oil], 20, 60).
recipe(scallops_leek, [scallops, leek, butter], 10, 10).
recipe(oysters_raw_style, [oysters, shallot, olive_oil], 10, 0).
recipe(turbot_roasted, [turbot, potato, garlic, olive_oil], 15, 30).
recipe(crawfish_boil, [crawfish, potato, corn_skipped, garlic, onion], 15, 20).
recipe(langoustine_garlic, [langoustines, garlic, butter], 10, 10).
recipe(flying_fish_roe_pasta_garnish, [flying_fish_roe, pasta, butter], 5, 10).
recipe(tuna_steak, [tuna, garlic, olive_oil], 5, 10).
recipe(crab_boil, [crab, potato, onion, garlic], 10, 20).

recipe(roasted_potatoes, [potato, garlic, olive_oil], 10, 45).
recipe(mashed_potatoes, [potato, milk, butter, garlic], 15, 25).
recipe(mashed_sweet_potatoes, [sweet_potato, butter], 10, 30).
recipe(sautéed_spinach, [spinach, garlic, olive_oil], 5, 5).
recipe(sautéed_swiss_chard, [swiss_chard, garlic, onion, olive_oil], 10, 10).
recipe(roasted_root_vegetables, [carrot, beet, turnip, sweet_potato, olive_oil], 15, 45).
recipe(stewed_green_beans, [green_beans, tomato, onion, garlic, olive_oil], 15, 30).
recipe(stewed_peas, [peas, carrot, onion, tomato, corn_oil], 10, 25).
recipe(cassava_stew, [cassava, onion, garlic, tomato, olive_oil], 15, 40).
recipe(fried_cassava, [cassava, sunflower_oil], 15, 20).
recipe(stuffed_bell_peppers_veg, [bell_pepper, rice, onion, tomato, olive_oil], 20, 40).
recipe(zucchini_stew, [zucchini, tomato, onion, garlic, olive_oil], 10, 20).
recipe(creamy_spinach, [spinach, milk, butter, garlic], 10, 15).
recipe(roasted_pumpkin, [pumpkin, olive_oil], 10, 35).
recipe(braised_leeks, [leek, butter, garlic], 10, 20).
recipe(spicy_garlic_pasta, [pasta, garlic, olive_oil, bell_pepper], 10, 15).
recipe(beef_kale_pasta, [pasta, beef, kale, onion, olive_oil], 15, 25).
recipe(chicken_pumpkin_pasta, [pasta, chicken, pumpkin, butter, garlic], 15, 25).
recipe(lentil_pasta, [pasta, lentils, tomato, garlic, olive_oil], 10, 20).
recipe(crab_leek_pasta, [pasta, crab, leek, butter, milk], 15, 15).
recipe(sweet_potato_pasta, [pasta, sweet_potato, onion, ghee, garlic], 15, 20).
recipe(goat_ragu_pasta, [pasta, goat, tomato, carrot, onion, olive_oil], 20, 90).
recipe(yogurt_garlic_pasta, [pasta, yogurt, garlic, butter], 5, 10).
recipe(salmon_kale_pasta, [pasta, salmon, kale, olive_oil, shallot], 10, 20).
recipe(oyster_pasta, [pasta, oysters, shallot, butter, garlic], 10, 15).

recipe(beef_carrot_rice, [rice, beef, carrot, onion, corn_oil], 15, 35).
recipe(chicken_pea_rice, [rice, chicken, peas, ghee], 10, 30).
recipe(rabbit_leek_rice, [rice, rabbit, leek, garlic, olive_oil], 15, 40).
recipe(octopus_fried_rice, [rice, octopus, peas, carrot, sunflower_oil], 20, 25).
recipe(butternut_squash_rice, [rice, butternut_squash, onion, ghee], 15, 30).
recipe(turnip_rice, [rice, turnip, beef, onion, olive_oil], 15, 40).
recipe(sweet_potato_rice, [rice, sweet_potato, chicken, corn_oil], 15, 35).
recipe(cuttlefish_rice, [rice, cuttlefish, tomato, garlic, olive_oil], 15, 35).
recipe(scallop_rice_bowl, [rice, scallops, zucchini, olive_oil], 10, 25).
recipe(flatfish_rice, [rice, flatfish, shallot, butter], 10, 25).
recipe(yogurt_rice, [rice, yogurt, cucumber, garlic], 10, 15).
recipe(kefir_marinated_chicken_rice, [rice, chicken, kefir, onion, olive_oil], 20, 35).
recipe(shrimp_pumpkin_rice, [rice, shrimp, pumpkin, garlic, ghee], 15, 25).
recipe(lamb_spinach_rice, [rice, lamb, spinach, onion, ghee], 15, 45).
recipe(beet_rice, [rice, beet, onion, walnut_oil], 10, 30).

recipe(garlic_soup, [garlic, onion, potato, olive_oil, milk], 15, 30).
recipe(sweet_potato_soup, [sweet_potato, carrot, onion, butter], 15, 35).
recipe(zucchini_soup, [zucchini, potato, onion, olive_oil], 10, 25).
recipe(beef_lentil_soup, [beef, lentils, carrot, tomato, olive_oil], 15, 60).
recipe(lamb_chickpea_soup, [lamb, chickpeas, tomato, onion, ghee], 20, 75).
recipe(chicken_kale_soup, [chicken, kale, potato, onion, corn_oil], 15, 40).
recipe(rabbit_stew_soup, [rabbit, turnip, celery, onion, olive_oil], 20, 50).
recipe(goat_potato_soup, [goat, potato, carrot, onion, tomato], 20, 80).
recipe(salmon_chowder, [salmon, potato, milk, butter, leek], 15, 30).
recipe(octopus_soup, [octopus, tomato, potato, garlic, olive_oil], 20, 60).
recipe(calamari_tomato_soup, [calamari, tomato, onion, garlic, olive_oil], 15, 30).
recipe(conch_chowder, [conch, potato, celery, milk, butter], 15, 40).
recipe(scallop_soup, [scallops, leek, potato, milk, butter], 10, 25).
recipe(flatfish_soup, [flatfish, tomato, onion, garlic, olive_oil], 15, 30).
recipe(turbot_stew_soup, [turbot, potato, carrot, leek, olive_oil], 15, 35).
recipe(radish_leaf_soup, [radish, potato, onion, butter], 10, 20).
recipe(cassava_chicken_soup, [cassava, chicken, onion, garlic, corn_oil], 20, 45).
recipe(pea_and_potato_soup, [peas, potato, onion, milk, butter], 15, 25).
recipe(green_bean_soup, [green_beans, potato, tomato, onion, olive_oil], 15, 30).
recipe(swiss_chard_soup, [swiss_chard, potato, garlic, olive_oil], 10, 25).

recipe(raw_zucchini_salad, [zucchini, olive_oil, garlic], 10, 0).
recipe(tomato_onion_salad, [tomato, onion, olive_oil], 5, 0).
recipe(cucumber_tomato_salad, [cucumber, tomato, onion, olive_oil], 10, 0).
recipe(sweet_potato_salad, [sweet_potato, spinach, walnut_oil], 10, 25).
recipe(pumpkin_salad, [pumpkin, kale, olive_oil], 15, 25).
recipe(turnip_carrot_salad, [turnip, carrot, sunflower_oil], 10, 0).
recipe(celery_sour_cream_salad, [celery, walnut_oil, sour_cream], 10, 0).
recipe(leek_salad, [leek, olive_oil, garlic], 10, 10).
recipe(beef_salad, [beef, lettuce, tomato, olive_oil], 15, 15).
recipe(lamb_salad, [lamb, spinach, yogurt, garlic], 15, 20).
recipe(chicken_lettuce_salad, [chicken, lettuce, cucumber, olive_oil], 15, 15).
recipe(rabbit_salad, [rabbit, kale, carrot, olive_oil], 20, 25).
recipe(flatfish_salad, [flatfish, lettuce, tomato, olive_oil], 15, 20).
recipe(scallop_salad, [scallops, spinach, olive_oil], 10, 10).
recipe(flying_fish_roe_salad, [flying_fish_roe, cucumber, sour_cream], 5, 0).

recipe(beef_zucchini_stirfry, [beef, zucchini, onion, corn_oil], 15, 25).
recipe(beef_pumpkin_stew, [beef, pumpkin, onion, garlic, olive_oil], 20, 60).
recipe(lamb_sweet_potato, [lamb, sweet_potato, onion, ghee], 15, 60).
recipe(lamb_leek_roast, [lamb, leek, garlic, olive_oil], 15, 75).
recipe(chicken_turnip_stew, [chicken, turnip, carrot, onion, olive_oil], 15, 45).
recipe(chicken_bell_pepper, [chicken, bell_pepper, onion, corn_oil], 10, 25).
recipe(goat_pumpkin_stew, [goat, pumpkin, onion, garlic, ghee], 20, 90).
recipe(goat_kale_stew, [goat, kale, tomato, corn_oil], 20, 75).
recipe(rabbit_bell_pepper, [rabbit, bell_pepper, onion, olive_oil], 15, 40).
recipe(rabbit_sweet_potato, [rabbit, sweet_potato, garlic, ghee], 20, 50).
recipe(creamy_beef, [beef, sour_cream, onion, butter], 15, 30).
recipe(yogurt_marinated_chicken, [chicken, yogurt, garlic, olive_oil], 20, 30).
recipe(buttermilk_fried_chicken, [chicken, buttermilk, sunflower_oil], 20, 35).
recipe(lamb_chickpeas_stew, [lamb, chickpeas, tomato, onion, ghee], 20, 80).
recipe(beef_lentils, [beef, lentils, carrot, onion, olive_oil], 15, 50).
recipe(chicken_cassava, [chicken, cassava, tomato, corn_oil], 20, 45).
recipe(goat_cassava, [goat, cassava, bell_pepper, ghee], 25, 90).
recipe(beef_swiss_chard, [beef, swiss_chard, garlic, olive_oil], 10, 25).
recipe(lamb_spinach_stew, [lamb, spinach, garlic, ghee], 15, 45).
recipe(rabbit_lentils, [rabbit, lentils, onion, olive_oil], 15, 50).

recipe(salmon_pumpkin, [salmon, pumpkin, garlic, olive_oil], 10, 25).
recipe(cuttlefish_peas, [cuttlefish, peas, tomato, olive_oil], 15, 35).
recipe(octopus_sweet_potato, [octopus, sweet_potato, garlic, olive_oil], 20, 60).
recipe(calamari_zucchini, [calamari, zucchini, garlic, olive_oil], 10, 20).
recipe(abalone_leek, [abalone, leek, butter], 10, 15).
recipe(conch_bell_pepper, [conch, bell_pepper, onion, corn_oil], 15, 40).
recipe(scallop_sweet_potato, [scallops, sweet_potato, butter], 10, 25).
recipe(oyster_stew, [oysters, milk, butter, shallot], 10, 15).
recipe(crab_zucchini, [crab, zucchini, garlic, butter], 15, 20).
recipe(shrimp_cassava, [shrimp, cassava, tomato, olive_oil], 15, 30).

% Vegetable & Side Dishes (10)
recipe(mashed_turnips, [turnip, butter, milk], 15, 25).
recipe(roasted_zucchini, [zucchini, garlic, olive_oil], 10, 20).
recipe(braised_celery, [celery, butter, onion], 10, 20).
recipe(sweet_potato_fries, [sweet_potato, sunflower_oil], 15, 25).
recipe(fried_turnips, [turnip, sunflower_oil], 10, 15).
recipe(kale_chips_style, [kale, olive_oil], 5, 15).
recipe(stewed_lentils_and_peas, [lentils, peas, onion, tomato, olive_oil], 10, 35).
recipe(chickpea_and_spinach, [chickpeas, spinach, garlic, olive_oil], 10, 20).
recipe(carrots_in_ghee, [carrot, ghee, garlic], 5, 15).
recipe(braised_radish, [radish, butter, shallot], 10, 15).
recipe(turnip_garlic_pasta, [pasta, turnip, garlic, olive_oil], 10, 20).
recipe(beet_goat_pasta, [pasta, beet, goat, ghee], 15, 45).
recipe(rabbit_pea_pasta, [pasta, rabbit, peas, corn_oil], 15, 35).
recipe(flatfish_tomato_pasta, [pasta, flatfish, tomato, olive_oil], 10, 20).
recipe(langoustine_cream_pasta, [pasta, langoustines, garlic, butter, milk], 15, 20).
recipe(crawfish_bell_pepper_pasta, [pasta, crawfish, bell_pepper, olive_oil], 15, 25).
recipe(swiss_chard_sour_cream_pasta, [pasta, swiss_chard, sour_cream, shallot], 10, 15).
recipe(green_bean_chicken_pasta, [pasta, green_beans, chicken, sunflower_oil], 15, 25).
recipe(chickpea_spinach_pasta, [pasta, chickpeas, spinach, olive_oil], 10, 20).
recipe(celery_walnut_pasta, [pasta, celery, onion, walnut_oil], 10, 15).
recipe(pumpkin_beef_pasta, [pasta, pumpkin, beef, ghee], 20, 45).
recipe(butternut_squash_goat_pasta, [pasta, butternut_squash, goat, olive_oil], 20, 60).
recipe(radish_yogurt_pasta, [pasta, radish, cucumber, yogurt], 10, 10).
recipe(sweet_potato_lamb_pasta, [pasta, sweet_potato, lamb, ghee], 20, 50).
recipe(cassava_tomato_pasta, [pasta, cassava, tomato, corn_oil], 15, 35).
recipe(cuttlefish_leek_pasta, [pasta, cuttlefish, leek, butter], 15, 25).
recipe(abalone_garlic_pasta, [pasta, abalone, garlic, olive_oil], 10, 15).
recipe(turbot_sour_cream_pasta, [pasta, turbot, shallot, sour_cream], 10, 20).
recipe(conch_tomato_pasta, [pasta, conch, tomato, onion], 15, 40).
recipe(tuna_pea_pasta, [pasta, tuna, peas, olive_oil], 10, 15).

recipe(green_bean_lamb_rice, [rice, green_beans, lamb, ghee], 20, 50).
recipe(pea_beef_rice, [rice, peas, beef, corn_oil], 15, 40).
recipe(swiss_chard_chicken_rice, [rice, swiss_chard, chicken, sunflower_oil], 15, 30).
recipe(radish_onion_rice, [rice, radish, onion, olive_oil], 10, 25).
recipe(celery_tomato_rice, [rice, celery, tomato, corn_oil], 10, 25).
recipe(cassava_beef_rice, [rice, cassava, beef, olive_oil], 20, 50).
recipe(flying_fish_roe_rice_bowl, [rice, flying_fish_roe, cucumber, sour_cream], 10, 20).
recipe(crawfish_bell_pepper_rice, [rice, crawfish, bell_pepper, ghee], 15, 30).
recipe(langoustine_pea_rice, [rice, langoustines, peas, butter], 10, 25).
recipe(turbot_garlic_rice, [rice, turbot, garlic, olive_oil], 15, 30).
recipe(abalone_leek_rice, [rice, abalone, leek, butter], 10, 25).
recipe(conch_celery_rice, [rice, conch, celery, tomato], 20, 45).
recipe(oyster_milk_rice, [rice, oysters, shallot, milk], 10, 20).
recipe(crab_spinach_rice, [rice, crab, spinach, olive_oil], 10, 25).
recipe(kale_goat_rice, [rice, kale, goat, ghee], 20, 60).
recipe(sweet_potato_rabbit_rice, [rice, sweet_potato, rabbit, corn_oil], 20, 45).
recipe(butternut_squash_chicken_rice, [rice, butternut_squash, chicken, olive_oil], 15, 35).
recipe(beet_sour_cream_rice, [rice, beet, sour_cream, shallot], 10, 25).
recipe(turnip_lamb_rice, [rice, turnip, lamb, ghee], 20, 50).
recipe(chickpea_zucchini_rice, [rice, chickpeas, zucchini, olive_oil], 10, 30).

recipe(celery_cream_soup, [celery, potato, milk, butter], 15, 30).
recipe(spinach_garlic_potato_soup, [spinach, garlic, onion, potato, olive_oil], 15, 25).
recipe(kale_green_bean_soup, [kale, green_beans, tomato, corn_oil], 10, 30).
recipe(radish_leek_soup, [radish, potato, leek, butter], 15, 30).
recipe(swiss_chard_lentil_soup, [swiss_chard, lentils, onion, olive_oil], 10, 35).
recipe(sweet_potato_chicken_soup, [sweet_potato, chicken, carrot, corn_oil], 20, 45).
recipe(cassava_beef_soup, [cassava, beef, tomato, onion], 25, 90).
recipe(lamb_pumpkin_soup, [lamb, pumpkin, garlic, ghee], 20, 60).
recipe(goat_turnip_soup, [goat, turnip, celery, corn_oil], 20, 75).
recipe(rabbit_beet_soup, [rabbit, beet, carrot, sour_cream], 20, 50).
recipe(salmon_pea_soup, [salmon, peas, leek, milk], 10, 25).
recipe(cuttlefish_stew_soup, [cuttlefish, potato, tomato, olive_oil], 15, 45).
recipe(abalone_chowder, [abalone, potato, celery, milk], 15, 35).
recipe(oyster_leek_soup, [oysters, leek, potato, butter], 10, 25).
recipe(crawfish_chowder, [crawfish, potato, onion, milk], 15, 30).
recipe(langoustine_tomato_soup, [langoustines, tomato, garlic, olive_oil], 15, 30).
recipe(tuna_potato_soup, [tuna, potato, onion, corn_oil], 10, 30).
recipe(turbot_celery_soup, [turbot, celery, carrot, olive_oil], 15, 30).
recipe(buttermilk_cucumber_soup, [buttermilk, cucumber, garlic, yogurt], 10, 0).
recipe(kefir_beet_soup, [kefir, beet, cucumber, radish], 15, 0).

recipe(radish_carrot_salad, [radish, carrot, walnut_oil], 10, 0).
recipe(celery_sour_cream_salad_simple, [celery, walnut_oil, sour_cream], 5, 0).
recipe(bell_pepper_tomato_salad, [bell_pepper, tomato, onion, olive_oil], 10, 0).
recipe(green_bean_garlic_salad, [green_beans, onion, olive_oil, garlic], 15, 10).
recipe(lentil_kale_salad, [lentils, kale, carrot, sunflower_oil], 15, 25).
recipe(chickpea_radish_salad, [chickpeas, radish, cucumber, olive_oil], 10, 0).
recipe(beef_lettuce_salad, [beef, lettuce, tomato, corn_oil], 15, 15).
recipe(chicken_beet_salad, [chicken, beet, spinach, walnut_oil], 15, 30).
recipe(goat_cucumber_salad, [goat, cucumber, yogurt, garlic], 15, 25).
recipe(rabbit_green_bean_salad, [rabbit, green_beans, lettuce, olive_oil], 20, 40).
recipe(salmon_celery_salad, [salmon, celery, sour_cream], 10, 15).
recipe(tuna_chickpea_salad, [tuna, chickpeas, onion, olive_oil], 10, 0).
recipe(flatfish_radish_salad, [flatfish, radish, lettuce, sunflower_oil], 15, 20).
recipe(crab_kale_salad, [crab, kale, cucumber, olive_oil], 15, 0).
recipe(shrimp_bell_pepper_salad, [shrimp, bell_pepper, lettuce, olive_oil], 15, 10).
recipe(langoustine_lettuce_salad, [langoustines, lettuce, tomato, olive_oil], 10, 10).
recipe(octopus_celery_salad, [octopus, celery, potato, olive_oil], 20, 50).
recipe(cuttlefish_cucumber_salad, [cuttlefish, cucumber, garlic, olive_oil], 15, 20).
recipe(oysters_cucumber_salad, [oysters, cucumber, shallot, olive_oil], 10, 0).
recipe(turbot_spinach_salad, [turbot, spinach, radish, walnut_oil], 15, 20).

recipe(beef_celery_stew, [beef, celery, onion, tomato, corn_oil], 20, 90).
recipe(lamb_green_beans, [lamb, green_beans, garlic, ghee], 15, 60).
recipe(chicken_chickpeas_stew, [chicken, chickpeas, tomato, olive_oil], 15, 45).
recipe(rabbit_pumpkin_stew, [rabbit, pumpkin, onion, ghee], 20, 60).
recipe(goat_turnip_stew, [goat, turnip, carrot, corn_oil], 20, 80).
recipe(salmon_green_beans, [salmon, green_beans, garlic, olive_oil], 10, 20).
recipe(tuna_casserole_style, [tuna, potato, milk, butter], 15, 35).
recipe(turbot_zucchini, [turbot, zucchini, garlic, olive_oil], 10, 25).
recipe(flatfish_sweet_potato, [flatfish, sweet_potato, onion, olive_oil], 15, 30).
recipe(langoustine_zucchini, [langoustines, zucchini, butter], 10, 15).
recipe(crawfish_sweet_potato, [crawfish, sweet_potato, garlic, butter], 15, 30).
recipe(abalone_spinach, [abalone, spinach, garlic, olive_oil], 10, 10).
recipe(conch_cassava_stew, [conch, cassava, tomato, corn_oil], 20, 75).
recipe(cuttlefish_pumpkin, [cuttlefish, pumpkin, onion, olive_oil], 15, 40).
recipe(octopus_kale, [octopus, kale, garlic, olive_oil], 15, 45).
recipe(mashed_cassava, [cassava, milk, butter, garlic], 20, 35).
recipe(sauteed_radishes, [radish, butter, shallot], 10, 15).
recipe(sauteed_lettuce, [lettuce, garlic, olive_oil], 5, 5).
recipe(roasted_celery, [celery, olive_oil, garlic], 10, 25).
recipe(buttermilk_marinated_chicken, [chicken, buttermilk, onion, sunflower_oil], 15, 40).
recipe(goat_zucchini_pasta, [pasta, goat, zucchini, olive_oil], 15, 45).
recipe(rabbit_spinach_pasta, [pasta, rabbit, spinach, garlic, butter], 15, 30).
recipe(calamari_kale_pasta, [pasta, calamari, kale, olive_oil], 15, 25).
recipe(flatfish_leek_pasta, [pasta, flatfish, leek, sour_cream], 10, 20).
recipe(abalone_celery_pasta, [pasta, abalone, celery, butter], 15, 20).
recipe(conch_garlic_pasta, [pasta, conch, garlic, olive_oil], 15, 35).
recipe(sweet_potato_cream_pasta, [pasta, sweet_potato, milk, butter], 10, 25).
recipe(squash_kale_pasta, [pasta, butternut_squash, kale, walnut_oil], 15, 30).
recipe(turnip_spinach_pasta, [pasta, turnip, spinach, sunflower_oil], 10, 20).
recipe(beef_cassava_pasta, [pasta, cassava, tomato, beef, olive_oil], 20, 50).
recipe(chicken_pea_carrot_pasta, [pasta, peas, carrot, chicken, ghee], 15, 30).
recipe(lentil_celery_pasta, [pasta, lentils, celery, onion, corn_oil], 10, 35).
recipe(radish_butter_pasta, [pasta, radish, garlic, butter], 10, 15).
recipe(yogurt_cucumber_pasta, [pasta, cucumber, yogurt, garlic], 10, 0).
recipe(crab_pepper_pasta, [pasta, crab, bell_pepper, olive_oil], 15, 20).
recipe(shrimp_turnip_pasta, [pasta, shrimp, turnip, butter], 10, 15).
recipe(langoustine_pumpkin_pasta, [pasta, langoustines, pumpkin, olive_oil], 15, 25).
recipe(crawfish_leek_pasta, [pasta, crawfish, leek, milk], 15, 25).
recipe(turbot_shallot_pasta, [pasta, turbot, tomato, shallot, olive_oil], 10, 25).
recipe(oyster_spinach_pasta, [pasta, oysters, spinach, butter], 10, 15).

recipe(goat_turnip_rice, [rice, goat, turnip, ghee], 20, 60).
recipe(rabbit_spinach_rice, [rice, rabbit, spinach, corn_oil], 15, 45).
recipe(lamb_kale_rice, [rice, lamb, kale, ghee], 15, 50).
recipe(beef_beet_rice, [rice, beef, beet, sunflower_oil], 15, 45).
recipe(chicken_celery_rice, [rice, chicken, celery, olive_oil], 15, 30).
recipe(calamari_pepper_rice, [rice, calamari, bell_pepper, olive_oil], 10, 25).
recipe(octopus_kale_rice, [rice, octopus, kale, garlic, olive_oil], 20, 55).
recipe(cuttlefish_zucchini_rice, [rice, cuttlefish, zucchini, corn_oil], 15, 35).
recipe(salmon_celery_rice, [rice, salmon, celery, butter], 10, 25).
recipe(tuna_leek_rice, [rice, tuna, leek, olive_oil], 10, 20).
recipe(crab_tomato_rice, [rice, crab, tomato, shallot], 15, 20).
recipe(shrimp_kale_rice, [rice, shrimp, kale, ghee], 10, 20).
recipe(crawfish_zucchini_rice, [rice, crawfish, zucchini, olive_oil], 15, 25).
recipe(turbot_squash_rice, [rice, turbot, butternut_squash, butter], 15, 35).
recipe(flatfish_celery_rice, [rice, flatfish, celery, onion], 10, 25).
recipe(cassava_tomato_rice, [rice, cassava, tomato, corn_oil], 15, 40).
recipe(turnip_carrot_rice, [rice, turnip, carrot, sunflower_oil], 10, 25).
recipe(beet_spinach_rice, [rice, beet, spinach, walnut_oil], 10, 30).
recipe(zucchini_cream_rice, [rice, zucchini, milk, butter], 10, 20).
recipe(pepper_yogurt_rice, [rice, bell_pepper, yogurt, garlic], 10, 15).

recipe(beef_kale_soup, [beef, kale, tomato, olive_oil], 20, 60).
recipe(lamb_leek_soup, [lamb, leek, potato, ghee], 15, 50).
recipe(goat_beet_soup, [goat, beet, carrot, corn_oil], 20, 75).
recipe(rabbit_zucchini_soup, [rabbit, zucchini, celery, olive_oil], 15, 45).
recipe(chicken_pepper_soup, [chicken, bell_pepper, tomato, corn_oil], 15, 40).
recipe(salmon_spinach_soup, [salmon, spinach, milk, butter], 10, 25).
recipe(tuna_celery_soup, [tuna, tomato, celery, olive_oil], 10, 30).
recipe(crab_turnip_soup, [crab, turnip, milk, butter], 15, 25).
recipe(octopus_pepper_soup, [octopus, bell_pepper, tomato, olive_oil], 20, 55).
recipe(calamari_leek_soup, [calamari, leek, potato, sunflower_oil], 15, 35).
recipe(abalone_turnip_soup, [abalone, turnip, milk, butter], 15, 30).
recipe(conch_pumpkin_soup, [conch, pumpkin, onion, olive_oil], 20, 45).
recipe(turbot_beet_soup, [turbot, beet, celery, butter], 15, 35).
recipe(flatfish_green_bean_soup, [flatfish, green_beans, tomato, olive_oil], 15, 30).
recipe(flying_fish_roe_soup, [flying_fish_roe, milk, potato, butter], 10, 25).
recipe(turnip_spinach_soup, [turnip, spinach, garlic, olive_oil], 10, 20).
recipe(celery_carrot_soup, [celery, carrot, potato, milk], 15, 25).
recipe(cassava_leek_soup, [cassava, leek, tomato, corn_oil], 20, 40).
recipe(buttermilk_radish_soup, [buttermilk, radish, cucumber, garlic], 10, 0).
recipe(kefir_spinach_soup, [kefir, spinach, potato, onion], 15, 30).

recipe(beef_turnip_salad, [beef, turnip, lettuce, corn_oil], 15, 15).
recipe(lamb_kale_salad, [lamb, kale, tomato, olive_oil], 15, 20).
recipe(goat_radish_salad, [goat, radish, cucumber, yogurt], 15, 20).
recipe(rabbit_celery_salad, [rabbit, celery, carrot, walnut_oil], 20, 25).
recipe(chicken_pepper_salad, [chicken, bell_pepper, lettuce, olive_oil], 15, 20).
recipe(salmon_turnip_salad, [salmon, turnip, spinach, olive_oil], 15, 15).
recipe(tuna_beet_salad, [tuna, beet, lettuce, walnut_oil], 10, 0).
recipe(crab_radish_salad, [crab, radish, celery, sour_cream], 15, 0).
recipe(shrimp_kale_salad, [shrimp, kale, cucumber, olive_oil], 15, 10).
recipe(octopus_pepper_salad, [octopus, bell_pepper, lettuce, olive_oil], 20, 45).
recipe(cuttlefish_celery_salad, [cuttlefish, celery, onion, sunflower_oil], 15, 30).
recipe(calamari_radish_salad, [calamari, radish, tomato, olive_oil], 15, 20).
recipe(oyster_lettuce_salad, [oysters, lettuce, shallot, olive_oil], 10, 0).
recipe(turbot_cucumber_salad, [turbot, cucumber, lettuce, corn_oil], 15, 15).
recipe(flatfish_pepper_salad, [flatfish, bell_pepper, spinach, olive_oil], 15, 15).
recipe(turnip_beet_salad, [turnip, beet, walnut_oil], 10, 0).
recipe(celery_pepper_salad, [celery, bell_pepper, onion, olive_oil], 10, 0).
recipe(cassava_tomato_salad, [cassava, tomato, onion, corn_oil], 15, 25).
recipe(kale_radish_salad, [kale, radish, sunflower_oil], 10, 0).
recipe(swiss_chard_yogurt_salad, [swiss_chard, cucumber, yogurt], 10, 0).

recipe(beef_turnip_stew, [beef, turnip, garlic, ghee], 15, 55).
recipe(lamb_pepper_stew, [lamb, bell_pepper, onion, olive_oil], 15, 50).
recipe(goat_celery_stew, [goat, celery, carrot, corn_oil], 20, 75).
recipe(rabbit_kale_stew, [rabbit, kale, garlic, sunflower_oil], 20, 50).
recipe(buttermilk_garlic_chicken, [chicken, buttermilk, garlic, butter], 15, 40).
recipe(salmon_squash_roast, [salmon, butternut_squash, olive_oil], 10, 30).
recipe(tuna_spinach_saute, [tuna, spinach, garlic, olive_oil], 10, 15).
recipe(crab_squash_bake, [crab, butternut_squash, butter], 15, 30).
recipe(shrimp_leek_saute, [shrimp, leek, garlic, ghee], 10, 15).
recipe(octopus_turnip_stew, [octopus, turnip, onion, olive_oil], 20, 60).
recipe(cuttlefish_spinach_stew, [cuttlefish, spinach, garlic, olive_oil], 15, 40).
recipe(abalone_celery_saute, [abalone, celery, butter], 10, 15).
recipe(conch_kale_stew, [conch, kale, tomato, corn_oil], 20, 55).
recipe(turbot_turnip_roast, [turbot, turnip, olive_oil], 15, 30).
recipe(flatfish_pepper_roast, [flatfish, bell_pepper, olive_oil], 15, 25).
recipe(mashed_turnip_garlic, [turnip, butter, milk, garlic], 15, 25).
recipe(stewed_celery_tomato, [celery, tomato, onion, olive_oil], 10, 25).
recipe(cassava_kale_hash, [cassava, kale, sunflower_oil], 15, 30).
recipe(roasted_squash_yogurt, [butternut_squash, yogurt, garlic], 10, 35).
recipe(roasted_radish_turnip, [radish, turnip, walnut_oil], 10, 30).
recipe(beef_turnip_garlic_pasta, [pasta, beef, turnip, garlic, olive_oil], 15, 30).
recipe(lamb_beet_onion_pasta, [pasta, lamb, beet, onion, ghee], 20, 45).
recipe(rabbit_carrot_celery_pasta, [pasta, rabbit, carrot, celery, corn_oil], 20, 50).
recipe(chicken_radish_cream_pasta, [pasta, chicken, radish, sour_cream], 15, 35).
recipe(goat_kale_tomato_pasta, [pasta, goat, kale, tomato, olive_oil], 20, 60).
recipe(salmon_squash_butter_pasta, [pasta, salmon, butternut_squash, butter], 15, 25).
recipe(tuna_green_beans_pasta, [pasta, tuna, green_beans, olive_oil], 10, 20).
recipe(crab_pea_milk_pasta, [pasta, crab, peas, milk, butter], 15, 25).
recipe(shrimp_cassava_garlic_pasta, [pasta, shrimp, cassava, garlic, olive_oil], 20, 30).
recipe(calamari_celery_onion_pasta, [pasta, calamari, celery, onion, sunflower_oil], 15, 25).
recipe(octopus_leek_tomato_pasta, [pasta, octopus, leek, tomato, olive_oil], 25, 50).
recipe(scallops_radish_butter_pasta, [pasta, scallops, radish, butter], 10, 20).
recipe(oysters_kale_olive_oil_pasta, [pasta, oysters, kale, olive_oil], 10, 15).
recipe(flatfish_zucchini_shallot_pasta, [pasta, flatfish, zucchini, shallot, butter], 15, 25).
recipe(turbot_bell_pepper_pasta, [pasta, turbot, bell_pepper, corn_oil], 15, 30).
recipe(cuttlefish_swiss_chard_pasta, [pasta, cuttlefish, swiss_chard, garlic, olive_oil], 15, 35).
recipe(conch_turnip_onion_pasta, [pasta, conch, turnip, onion, ghee], 20, 55).
recipe(abalone_sweet_potato_pasta, [pasta, abalone, sweet_potato, butter], 15, 30).
recipe(langoustines_spinach_milk_pasta, [pasta, langoustines, spinach, milk], 15, 25).
recipe(crawfish_beet_garlic_pasta, [pasta, crawfish, beet, garlic, olive_oil], 15, 30).

recipe(beef_swiss_chard_rice, [rice, beef, swiss_chard, garlic, corn_oil], 15, 40).
recipe(lamb_turnip_celery_rice, [rice, lamb, turnip, celery, ghee], 20, 55).
recipe(rabbit_pumpkin_onion_rice, [rice, rabbit, pumpkin, onion, olive_oil], 20, 50).
recipe(chicken_radish_shallot_rice, [rice, chicken, radish, shallot, sunflower_oil], 15, 35).
recipe(goat_beet_garlic_rice, [rice, goat, beet, garlic, ghee], 25, 75).
recipe(salmon_turnip_butter_rice, [rice, salmon, turnip, butter], 10, 30).
recipe(tuna_squash_rice, [rice, tuna, butternut_squash, olive_oil], 10, 25).
recipe(crab_green_beans_rice, [rice, crab, green_beans, milk, butter], 15, 25).
recipe(shrimp_lentil_onion_rice, [rice, shrimp, lentils, onion, olive_oil], 15, 35).
recipe(calamari_turnip_rice, [rice, calamari, turnip, sunflower_oil], 15, 30).
recipe(octopus_radish_tomato_rice, [rice, octopus, radish, tomato, olive_oil], 20, 55).
recipe(scallops_cassava_rice, [rice, scallops, cassava, butter], 20, 40).
recipe(oysters_turnip_rice, [rice, oysters, turnip, olive_oil], 10, 25).
recipe(flatfish_kale_shallot_rice, [rice, flatfish, kale, shallot, butter], 15, 30).
recipe(turbot_swiss_chard_rice, [rice, turbot, swiss_chard, corn_oil], 15, 35).
recipe(cuttlefish_green_beans_rice, [rice, cuttlefish, green_beans, garlic, olive_oil], 15, 45).
recipe(conch_sweet_potato_rice, [rice, conch, sweet_potato, onion, ghee], 20, 60).
recipe(abalone_squash_rice, [rice, abalone, butternut_squash, butter], 15, 35).
recipe(langoustines_turnip_rice, [rice, langoustines, turnip, milk], 15, 30).
recipe(crawfish_carrot_garlic_rice, [rice, crawfish, carrot, garlic, olive_oil], 15, 30).

recipe(beef_radish_tomato_soup, [beef, radish, potato, tomato, olive_oil], 20, 70).
recipe(lamb_kale_onion_soup, [lamb, kale, onion, ghee], 20, 60).
recipe(rabbit_turnip_carrot_soup, [rabbit, turnip, carrot, corn_oil], 20, 55).
recipe(chicken_celery_milk_soup, [chicken, celery, milk, butter], 15, 35).
recipe(goat_radish_garlic_soup, [goat, radish, garlic, ghee], 20, 80).
recipe(salmon_beet_leek_soup, [salmon, beet, leek, butter], 15, 30).
recipe(tuna_squash_tomato_soup, [tuna, butternut_squash, tomato, olive_oil], 15, 35).
recipe(crab_turnip_celery_soup, [crab, turnip, celery, sour_cream], 15, 30).
recipe(shrimp_squash_onion_soup, [shrimp, butternut_squash, onion, olive_oil], 15, 30).
recipe(calamari_turnip_potato_soup, [calamari, turnip, potato, sunflower_oil], 20, 45).
recipe(octopus_radish_leek_soup, [octopus, radish, leek, olive_oil], 20, 60).
recipe(scallops_pumpkin_soup, [scallops, pumpkin, butter], 15, 25).
recipe(oysters_kale_potato_soup, [oysters, kale, potato, milk], 15, 30).
recipe(flatfish_celery_tomato_soup, [flatfish, celery, tomato, olive_oil], 15, 35).
recipe(turbot_sweet_potato_soup, [turbot, sweet_potato, garlic, corn_oil], 20, 40).
recipe(cuttlefish_squash_onion_soup, [cuttlefish, butternut_squash, onion, olive_oil], 20, 45).
recipe(conch_radish_celery_soup, [conch, radish, celery, ghee], 20, 65).
recipe(abalone_potato_carrot_soup, [abalone, potato, carrot, butter], 20, 40).
recipe(langoustines_turnip_milk_soup, [langoustines, turnip, milk, butter], 15, 30).
recipe(crawfish_green_beans_soup, [crawfish, green_beans, tomato, olive_oil], 20, 35).

recipe(beef_turnip_lettuce_salad, [beef, turnip, lettuce, tomato, olive_oil], 15, 20).
recipe(lamb_celery_spinach_salad, [lamb, celery, spinach, yogurt], 15, 20).
recipe(rabbit_radish_lettuce_salad, [rabbit, radish, lettuce, corn_oil], 20, 30).
recipe(chicken_squash_kale_salad, [chicken, butternut_squash, kale, olive_oil], 15, 30).
recipe(goat_turnip_cucumber_salad, [goat, turnip, cucumber, kefir], 20, 35).
recipe(salmon_beet_lettuce_salad, [salmon, beet, lettuce, walnut_oil], 15, 20).
recipe(tuna_squash_spinach_salad, [tuna, butternut_squash, spinach, olive_oil], 15, 20).
recipe(crab_radish_cucumber_salad, [crab, radish, cucumber, sour_cream], 15, 15).
recipe(shrimp_celery_tomato_salad, [shrimp, celery, tomato, olive_oil], 15, 15).
recipe(calamari_beet_lettuce_salad, [calamari, beet, lettuce, sunflower_oil], 15, 20).
recipe(octopus_turnip_leek_salad, [octopus, turnip, leek, olive_oil], 20, 40).
recipe(scallops_radish_spinach_salad, [scallops, radish, spinach, olive_oil], 15, 20).
recipe(oysters_celery_lettuce_salad, [oysters, celery, lettuce, walnut_oil], 10, 10).
recipe(flatfish_turnip_tomato_salad, [flatfish, turnip, tomato, olive_oil], 15, 20).
recipe(turbot_radish_kale_salad, [turbot, radish, kale, corn_oil], 15, 25).
recipe(cuttlefish_squash_lettuce_salad, [cuttlefish, butternut_squash, lettuce, olive_oil], 20, 30).
recipe(conch_beet_celery_salad, [conch, beet, celery, yogurt], 20, 45).
recipe(abalone_turnip_cucumber_salad, [abalone, turnip, cucumber, sour_cream], 15, 25).
recipe(langoustines_radish_spinach_salad, [langoustines, radish, spinach, olive_oil], 15, 15).
recipe(crawfish_turnip_lettuce_salad, [crawfish, turnip, lettuce, olive_oil], 15, 20).

recipe(beef_radish_saute, [beef, radish, onion, ghee], 15, 30).
recipe(lamb_swiss_chard_roast, [lamb, swiss_chard, garlic, olive_oil], 20, 60).
recipe(rabbit_beet_stew, [rabbit, beet, carrot, corn_oil], 20, 50).
recipe(chicken_turnip_bake, [chicken, turnip, celery, sunflower_oil], 15, 45).
recipe(goat_squash_stew, [goat, butternut_squash, tomato, ghee], 25, 80).
recipe(salmon_radish_saute, [salmon, radish, garlic, butter], 10, 20).
recipe(tuna_turnip_leek_skillet, [tuna, turnip, leek, olive_oil], 10, 20).
recipe(crab_squash_cream, [crab, butternut_squash, sour_cream], 15, 25).
recipe(shrimp_radish_stirfry, [shrimp, radish, onion, olive_oil], 10, 15).
recipe(calamari_swiss_chard_hash, [calamari, swiss_chard, potato, sunflower_oil], 15, 30).
recipe(octopus_beet_stew, [octopus, beet, tomato, olive_oil], 25, 60).
recipe(scallops_turnip_saute, [scallops, turnip, butter], 10, 15).
recipe(oysters_radish_milk, [oysters, radish, milk, butter], 10, 15).
recipe(flatfish_beet_bake, [flatfish, beet, tomato, olive_oil], 15, 30).
recipe(turbot_celery_roast, [turbot, celery, garlic, corn_oil], 15, 35).
recipe(buttered_turnips, [turnip, butter, garlic], 5, 20).
recipe(creamy_beets, [beet, sour_cream, walnut_oil], 10, 30).
recipe(braised_celery_milk, [celery, milk, butter], 10, 25).
recipe(squash_kefir_dip, [butternut_squash, kefir, olive_oil], 15, 35).
recipe(radish_turnip_yogurt_slaw, [radish, turnip, cucumber, yogurt], 15, 0).


% ======================================================================
% GENERATED EXPANSION v1 -- appended by tools/generate_meals.py,
% spliced after the last hand-authored recipe/4 fact by
% tools/apply_expansion.py (byte-preserving insertion).
% Pure additive facts. Schema identical to hand-authored section:
%   recipe(Name, [Ingredients], PrepMinutes, CookMinutes).
% All ingredients pre-exist in this file; no new facts of any other
% predicate were required. Deterministic generation seed: 20260824.
% ======================================================================

recipe(abalone_bell_pepper_ghee_plate, [abalone, bell_pepper, ghee], 8, 9).
recipe(abalone_cucumber_olive_oil_plate, [abalone, cucumber, olive_oil], 10, 20).
recipe(abalone_kale_butter_plate, [abalone, kale, butter], 10, 19).
recipe(abalone_lettuce_butter_plate, [abalone, lettuce, butter], 7, 16).
recipe(abalone_spinach_olive_oil_plate, [abalone, spinach, olive_oil], 12, 20).
recipe(abalone_swiss_chard_sour_cream_plate, [abalone, swiss_chard, sour_cream], 6, 10).
recipe(aglio_olio_pasta, [pasta, garlic, olive_oil], 10, 17).
recipe(beef_beet_rice_pot, [rice, beet, beef, shallot, ghee], 15, 21).
recipe(beef_butternut_squash_rice_pot, [rice, butternut_squash, beef, leek, butter], 12, 25).
recipe(beef_carrot_rice_pot, [rice, carrot, beef, leek, butter], 18, 27).
recipe(beef_cassava_onion_stew, [beef, cassava, onion], 17, 78).
recipe(beef_celery_ghee_plate, [beef, celery, ghee], 7, 10).
recipe(beef_chickpeas_rice_pot, [rice, chickpeas, beef, onion, butter], 15, 20).
recipe(beef_chickpeas_tomato_stew, [beef, chickpeas, tomato, onion], 30, 80).
recipe(beef_garden_soup, [beef, onion, potato, carrot], 18, 28).
recipe(beef_green_beans_rice_pot, [rice, green_beans, beef, leek, ghee], 16, 25).
recipe(beef_green_beans_sour_cream_plate, [beef, green_beans, sour_cream], 5, 9).
recipe(beef_green_beans_tomato_stew, [beef, green_beans, tomato, onion], 25, 53).
recipe(beef_kale_rice_pot, [rice, kale, beef, onion, ghee], 10, 23).
recipe(beef_leek_ghee_plate, [beef, leek, ghee], 5, 19).
recipe(beef_leek_rice_pot, [rice, leek, beef, shallot, ghee], 15, 23).
recipe(beef_lentils_carrot_stew, [beef, lentils, carrot, onion], 23, 50).
recipe(beef_lentils_rice_pot, [rice, lentils, beef, shallot, olive_oil], 10, 27).
recipe(beef_lettuce_sour_cream_plate, [beef, lettuce, sour_cream], 5, 10).
recipe(beef_peas_rice_pot, [rice, peas, beef, onion, ghee], 12, 19).
recipe(beef_pumpkin_onion_stew, [beef, pumpkin, onion], 25, 86).
recipe(beef_pumpkin_rice_pot, [rice, pumpkin, beef, onion, olive_oil], 15, 27).
recipe(beef_spinach_butter_plate, [beef, spinach, butter], 6, 9).
recipe(beef_spinach_rice_pot, [rice, spinach, beef, shallot, ghee], 13, 24).
recipe(beef_sweet_potato_onion_stew, [beef, sweet_potato, onion, garlic], 19, 46).
recipe(beef_sweet_potato_rice_pot, [rice, sweet_potato, beef, shallot, olive_oil], 11, 25).
recipe(beef_swiss_chard_ghee_plate, [beef, swiss_chard, ghee], 9, 22).
recipe(beef_swiss_chard_onion_stew, [beef, swiss_chard, onion], 27, 49).
recipe(beef_swiss_chard_rice_pot, [rice, swiss_chard, beef, leek, butter], 16, 18).
recipe(beef_tomato_rice_pot, [rice, tomato, beef, shallot, butter], 11, 21).
recipe(beef_turnip_carrot_stew, [beef, turnip, carrot, celery], 22, 74).
recipe(beef_wok_bell_pepper, [beef, bell_pepper, celery, ghee], 8, 8).
recipe(beef_wok_green_beans, [beef, green_beans, garlic, sunflower_oil], 13, 10).
recipe(beef_zucchini_rice_pot, [rice, zucchini, beef, onion, olive_oil], 16, 29).
recipe(beet_yogurt_cold_soup, [beet, yogurt, garlic, olive_oil], 10, 4).
recipe(bianco_bell_pepper_pasta, [pasta, milk, butter, bell_pepper], 13, 15).
recipe(bianco_pasta, [pasta, milk, butter], 8, 15).
recipe(butternut_squash_gratin_bake, [butternut_squash, milk, butter, shallot], 17, 34).
recipe(butternut_squash_milk_soup, [butternut_squash, onion, milk, butter], 10, 34).
recipe(butternut_squash_yogurt_soup, [butternut_squash, onion, yogurt, olive_oil], 14, 27).
recipe(calamari_beet_rice_pot, [rice, beet, calamari, shallot, ghee], 14, 22).
recipe(calamari_butternut_squash_rice_pot, [rice, butternut_squash, calamari, onion, butter], 14, 28).
recipe(calamari_carrot_rice_pot, [rice, carrot, calamari, onion, ghee], 20, 26).
recipe(calamari_chickpeas_rice_pot, [rice, chickpeas, calamari, shallot, olive_oil], 12, 20).
recipe(calamari_green_beans_ghee_plate, [calamari, green_beans, ghee], 5, 17).
recipe(calamari_green_beans_rice_pot, [rice, green_beans, calamari, onion, butter], 12, 26).
recipe(calamari_kale_rice_pot, [rice, kale, calamari, onion, ghee], 17, 22).
recipe(calamari_kale_walnut_oil_plate, [calamari, kale, walnut_oil], 6, 12).
recipe(calamari_leek_rice_pot, [rice, leek, calamari, shallot, ghee], 20, 21).
recipe(calamari_lentils_rice_pot, [rice, lentils, calamari, onion, butter], 18, 26).
recipe(calamari_peas_rice_pot, [rice, peas, calamari, shallot, butter], 18, 22).
recipe(calamari_pumpkin_rice_pot, [rice, pumpkin, calamari, onion, ghee], 18, 27).
recipe(calamari_shallot_walnut_oil_plate, [calamari, shallot, walnut_oil], 12, 21).
recipe(calamari_spinach_rice_pot, [rice, spinach, calamari, onion, butter], 19, 28).
recipe(calamari_spinach_sour_cream_plate, [calamari, spinach, sour_cream], 11, 11).
recipe(calamari_sweet_potato_rice_pot, [rice, sweet_potato, calamari, shallot, ghee], 11, 28).
recipe(calamari_swiss_chard_rice_pot, [rice, swiss_chard, calamari, leek, ghee], 13, 24).
recipe(calamari_swiss_chard_sour_cream_plate, [calamari, swiss_chard, sour_cream], 11, 20).
recipe(calamari_tomato_rice_pot, [rice, tomato, calamari, onion, ghee], 20, 27).
recipe(calamari_zucchini_rice_pot, [rice, zucchini, calamari, leek, ghee], 18, 21).
recipe(calamari_zucchini_sour_cream_plate, [calamari, zucchini, sour_cream], 5, 22).
recipe(carrot_milk_soup, [carrot, onion, milk, butter], 14, 32).
recipe(carrot_sour_cream_slaw, [carrot, sour_cream, shallot], 13, 5).
recipe(carrot_yogurt_soup, [carrot, onion, yogurt, olive_oil], 12, 22).
recipe(celery_kefir_refresher, [celery, kefir, cucumber], 12, 5).
recipe(charred_abalone_plate, [abalone, green_beans, garlic, olive_oil], 16, 22).
recipe(charred_beef_plate, [beef, celery, bell_pepper, olive_oil], 11, 16).
recipe(charred_calamari_plate, [calamari, radish, shallot, olive_oil], 11, 17).
recipe(charred_chicken_plate, [chicken, green_beans, garlic, olive_oil], 10, 16).
recipe(charred_conch_plate, [conch, zucchini, shallot, olive_oil], 14, 15).
recipe(charred_crab_plate, [crab, bell_pepper, zucchini, olive_oil], 12, 23).
recipe(charred_crawfish_plate, [crawfish, green_beans, garlic, olive_oil], 14, 24).
recipe(charred_cuttlefish_plate, [cuttlefish, radish, shallot, olive_oil], 11, 20).
recipe(charred_flatfish_plate, [flatfish, bell_pepper, zucchini, olive_oil], 18, 17).
recipe(charred_goat_plate, [goat, leek, bell_pepper, olive_oil], 14, 15).
recipe(charred_lamb_plate, [lamb, zucchini, shallot, olive_oil], 16, 17).
recipe(charred_langoustines_plate, [langoustines, green_beans, garlic, olive_oil], 15, 16).
recipe(charred_octopus_plate, [octopus, celery, bell_pepper, olive_oil], 13, 10).
recipe(charred_oysters_plate, [oysters, green_beans, garlic, olive_oil], 14, 10).
recipe(charred_rabbit_plate, [rabbit, green_beans, garlic, olive_oil], 17, 21).
recipe(charred_salmon_plate, [salmon, zucchini, shallot, olive_oil], 13, 12).
recipe(charred_scallops_plate, [scallops, radish, shallot, olive_oil], 11, 22).
recipe(charred_shrimp_plate, [shrimp, radish, shallot, olive_oil], 11, 14).
recipe(charred_tuna_plate, [tuna, zucchini, shallot, olive_oil], 15, 17).
recipe(charred_turbot_plate, [turbot, celery, bell_pepper, olive_oil], 11, 15).
recipe(chicken_beet_rice_pot, [rice, beet, chicken, leek, olive_oil], 15, 20).
recipe(chicken_butternut_squash_rice_pot, [rice, butternut_squash, chicken, shallot, butter], 20, 26).
recipe(chicken_carrot_rice_pot, [rice, carrot, chicken, leek, ghee], 15, 24).
recipe(chicken_cassava_onion_stew, [chicken, cassava, onion], 18, 48).
recipe(chicken_celery_walnut_oil_plate, [chicken, celery, walnut_oil], 8, 15).
recipe(chicken_chickpeas_rice_pot, [rice, chickpeas, chicken, shallot, butter], 15, 26).
recipe(chicken_chickpeas_tomato_stew, [chicken, chickpeas, tomato, onion], 30, 46).
recipe(chicken_cucumber_walnut_oil_plate, [chicken, cucumber, walnut_oil], 8, 22).
recipe(chicken_garden_soup, [chicken, onion, potato, carrot, turnip], 16, 36).
recipe(chicken_green_beans_olive_oil_plate, [chicken, green_beans, olive_oil], 6, 12).
recipe(chicken_green_beans_rice_pot, [rice, green_beans, chicken, leek, butter], 13, 27).
recipe(chicken_green_beans_tomato_stew, [chicken, green_beans, tomato, onion], 23, 48).
recipe(chicken_kale_rice_pot, [rice, kale, chicken, shallot, olive_oil], 18, 28).
recipe(chicken_leek_olive_oil_plate, [chicken, leek, olive_oil], 6, 17).
recipe(chicken_leek_rice_pot, [rice, leek, chicken, ghee], 11, 18).
recipe(chicken_lentils_carrot_stew, [chicken, lentils, carrot, onion], 23, 59).
recipe(chicken_lentils_rice_pot, [rice, lentils, chicken, leek, olive_oil], 12, 24).
recipe(chicken_peas_rice_pot, [rice, peas, chicken, shallot, olive_oil], 13, 24).
recipe(chicken_potato_carrot_stew, [chicken, potato, carrot, onion], 22, 83).
recipe(chicken_pumpkin_onion_stew, [chicken, pumpkin, onion], 29, 87).
recipe(chicken_pumpkin_rice_pot, [rice, pumpkin, chicken, shallot, olive_oil], 14, 22).
recipe(chicken_radish_butter_plate, [chicken, radish, butter], 10, 10).
recipe(chicken_spinach_rice_pot, [rice, spinach, chicken, leek, olive_oil], 20, 27).
recipe(chicken_sweet_potato_onion_stew, [chicken, sweet_potato, onion, garlic], 27, 66).
recipe(chicken_sweet_potato_rice_pot, [rice, sweet_potato, chicken, shallot, ghee], 14, 19).
recipe(chicken_swiss_chard_ghee_plate, [chicken, swiss_chard, ghee], 11, 9).
recipe(chicken_swiss_chard_onion_stew, [chicken, swiss_chard, onion], 24, 65).
recipe(chicken_swiss_chard_rice_pot, [rice, swiss_chard, chicken, leek, butter], 20, 23).
recipe(chicken_tomato_rice_pot, [rice, tomato, chicken, leek, olive_oil], 18, 20).
recipe(chicken_turnip_carrot_stew, [chicken, turnip, carrot, celery], 28, 45).
recipe(chicken_wok_bell_pepper, [chicken, bell_pepper, celery, sunflower_oil], 12, 6).
recipe(chicken_wok_green_beans, [chicken, green_beans, garlic, corn_oil], 10, 7).
recipe(chicken_zucchini_rice_pot, [rice, zucchini, chicken, leek, butter], 10, 28).
recipe(chickpea_simmer_pot, [chickpeas, tomato, onion, olive_oil], 14, 40).
recipe(conch_bell_pepper_walnut_oil_plate, [conch, bell_pepper, walnut_oil], 8, 16).
recipe(conch_citrus_free_salad, [conch, tomato, cucumber, onion, olive_oil], 12, 14).
recipe(conch_green_beans_walnut_oil_plate, [conch, green_beans, walnut_oil], 6, 12).
recipe(conch_leek_sour_cream_plate, [conch, leek, sour_cream], 6, 8).
recipe(conch_marinara_stew, [conch, tomato, onion, bell_pepper], 20, 68).
recipe(conch_radish_sour_cream_plate, [conch, radish, sour_cream], 5, 16).
recipe(conch_spinach_walnut_oil_plate, [conch, spinach, walnut_oil], 9, 22).
recipe(conch_zucchini_walnut_oil_plate, [conch, zucchini, walnut_oil], 9, 19).
recipe(country_chicken_leek_pasta, [pasta, chicken, leek, milk, butter], 10, 14).
recipe(crab_bell_pepper_walnut_oil_plate, [crab, bell_pepper, walnut_oil], 8, 17).
recipe(crab_della_casa_pasta, [pasta, crab, butter, bell_pepper], 8, 14).
recipe(crab_kale_ghee_plate, [crab, kale, ghee], 10, 12).
recipe(crab_leek_ghee_plate, [crab, leek, ghee], 8, 18).
recipe(crab_shallot_butter_plate, [crab, shallot, butter], 5, 22).
recipe(crab_swiss_chard_ghee_plate, [crab, swiss_chard, ghee], 5, 13).
recipe(crab_wok_bell_pepper, [crab, bell_pepper, celery, corn_oil], 14, 6).
recipe(crab_wok_green_beans, [crab, green_beans, garlic, corn_oil], 14, 7).
recipe(crab_zucchini_butter_plate, [crab, zucchini, butter], 10, 12).
recipe(crawfish_beet_rice_pot, [rice, beet, crawfish, leek, butter], 15, 21).
recipe(crawfish_butternut_squash_rice_pot, [rice, butternut_squash, crawfish, onion, butter], 20, 27).
recipe(crawfish_carrot_rice_pot, [rice, carrot, crawfish, shallot, ghee], 15, 24).
recipe(crawfish_chickpeas_rice_pot, [rice, chickpeas, crawfish, onion, olive_oil], 13, 26).
recipe(crawfish_cucumber_olive_oil_plate, [crawfish, cucumber, olive_oil], 8, 10).
recipe(crawfish_green_beans_rice_pot, [rice, green_beans, crawfish, leek, olive_oil], 19, 30).
recipe(crawfish_kale_rice_pot, [rice, kale, crawfish, shallot, butter], 17, 21).
recipe(crawfish_leek_rice_pot, [rice, leek, crawfish, shallot, butter], 10, 25).
recipe(crawfish_leek_sour_cream_plate, [crawfish, leek, sour_cream], 10, 14).
recipe(crawfish_lentils_rice_pot, [rice, lentils, crawfish, shallot, olive_oil], 20, 28).
recipe(crawfish_peas_rice_pot, [rice, peas, crawfish, onion, butter], 16, 18).
recipe(crawfish_pumpkin_rice_pot, [rice, pumpkin, crawfish, leek, butter], 18, 28).
recipe(crawfish_shallot_sour_cream_plate, [crawfish, shallot, sour_cream], 6, 8).
recipe(crawfish_spinach_rice_pot, [rice, spinach, crawfish, onion, ghee], 10, 18).
recipe(crawfish_spinach_sour_cream_plate, [crawfish, spinach, sour_cream], 11, 20).
recipe(crawfish_sweet_potato_rice_pot, [rice, sweet_potato, crawfish, shallot, butter], 14, 24).
recipe(crawfish_swiss_chard_ghee_plate, [crawfish, swiss_chard, ghee], 7, 21).
recipe(crawfish_swiss_chard_rice_pot, [rice, swiss_chard, crawfish, onion, olive_oil], 11, 26).
recipe(crawfish_tomato_rice, [crawfish, tomato, rice, onion], 18, 9).
recipe(crawfish_tomato_rice_pot, [rice, tomato, crawfish, shallot, ghee], 14, 23).
recipe(crawfish_wok_bell_pepper, [crawfish, bell_pepper, celery, ghee], 12, 12).
recipe(crawfish_wok_green_beans, [crawfish, green_beans, garlic, ghee], 9, 6).
recipe(crawfish_zucchini_ghee_plate, [crawfish, zucchini, ghee], 6, 8).
recipe(crawfish_zucchini_rice_pot, [rice, zucchini, crawfish, onion, ghee], 18, 28).
recipe(cucumber_kefir_cold_soup, [cucumber, kefir, garlic, walnut_oil], 10, 4).
recipe(cucumber_kefir_dip, [cucumber, kefir, garlic, olive_oil], 9, 4).
recipe(cuttlefish_beet_rice_pot, [rice, beet, cuttlefish, shallot, ghee], 17, 21).
recipe(cuttlefish_bell_pepper_ghee_plate, [cuttlefish, bell_pepper, ghee], 7, 22).
recipe(cuttlefish_butternut_squash_rice_pot, [rice, butternut_squash, cuttlefish, shallot, olive_oil], 17, 20).
recipe(cuttlefish_carrot_rice_pot, [rice, carrot, cuttlefish, leek, butter], 13, 25).
recipe(cuttlefish_chickpeas_rice_pot, [rice, chickpeas, cuttlefish, onion, ghee], 10, 21).
recipe(cuttlefish_green_beans_olive_oil_plate, [cuttlefish, green_beans, olive_oil], 5, 12).
recipe(cuttlefish_green_beans_rice_pot, [rice, green_beans, cuttlefish, onion, ghee], 14, 23).
recipe(cuttlefish_kale_butter_plate, [cuttlefish, kale, butter], 6, 13).
recipe(cuttlefish_kale_rice_pot, [rice, kale, cuttlefish, onion, olive_oil], 15, 27).
recipe(cuttlefish_leek_ghee_plate, [cuttlefish, leek, ghee], 9, 11).
recipe(cuttlefish_leek_rice_pot, [rice, leek, cuttlefish, onion, butter], 11, 19).
recipe(cuttlefish_lentils_rice_pot, [rice, lentils, cuttlefish, onion, butter], 17, 23).
recipe(cuttlefish_lettuce_butter_plate, [cuttlefish, lettuce, butter], 6, 17).
recipe(cuttlefish_peas_rice_pot, [rice, peas, cuttlefish, shallot, olive_oil], 16, 24).
recipe(cuttlefish_pumpkin_rice_pot, [rice, pumpkin, cuttlefish, onion, olive_oil], 12, 24).
recipe(cuttlefish_rossini_stew, [cuttlefish, tomato, onion], 18, 72).
recipe(cuttlefish_shallot_sour_cream_plate, [cuttlefish, shallot, sour_cream], 12, 21).
recipe(cuttlefish_spinach_rice_pot, [rice, spinach, cuttlefish, shallot, olive_oil], 16, 29).
recipe(cuttlefish_sweet_potato_rice_pot, [rice, sweet_potato, cuttlefish, onion, olive_oil], 18, 18).
recipe(cuttlefish_swiss_chard_rice_pot, [rice, swiss_chard, cuttlefish, onion, olive_oil], 13, 20).
recipe(cuttlefish_tomato_rice_pot, [rice, tomato, cuttlefish, leek, olive_oil], 10, 18).
recipe(cuttlefish_zucchini_rice_pot, [rice, zucchini, cuttlefish, leek, butter], 17, 22).
recipe(emerald_spinach_pasta, [pasta, spinach, garlic, olive_oil], 11, 10).
recipe(flatfish_beet_rice_pot, [rice, beet, flatfish, shallot, ghee], 14, 30).
recipe(flatfish_butternut_squash_rice_pot, [rice, butternut_squash, flatfish, onion, butter], 10, 25).
recipe(flatfish_carrot_rice_pot, [rice, carrot, flatfish, onion, ghee], 14, 23).
recipe(flatfish_chickpeas_rice_pot, [rice, chickpeas, flatfish, leek, butter], 20, 21).
recipe(flatfish_green_beans_rice_pot, [rice, green_beans, flatfish, leek, ghee], 18, 26).
recipe(flatfish_green_beans_sour_cream_plate, [flatfish, green_beans, sour_cream], 10, 11).
recipe(flatfish_kale_olive_oil_plate, [flatfish, kale, olive_oil], 8, 18).
recipe(flatfish_kale_rice_pot, [rice, kale, flatfish, onion, olive_oil], 11, 27).
recipe(flatfish_leek_bake, [flatfish, leek, butter], 12, 11).
recipe(flatfish_leek_rice_pot, [rice, leek, flatfish, butter], 16, 19).
recipe(flatfish_leek_sour_cream_plate, [flatfish, leek, sour_cream], 6, 16).
recipe(flatfish_lentils_rice_pot, [rice, lentils, flatfish, shallot, olive_oil], 10, 29).
recipe(flatfish_lettuce_ghee_plate, [flatfish, lettuce, ghee], 11, 11).
recipe(flatfish_peas_rice_pot, [rice, peas, flatfish, shallot, ghee], 12, 20).
recipe(flatfish_pumpkin_rice_pot, [rice, pumpkin, flatfish, shallot, ghee], 20, 19).
recipe(flatfish_radish_ghee_plate, [flatfish, radish, ghee], 9, 16).
recipe(flatfish_spinach_rice_pot, [rice, spinach, flatfish, shallot, olive_oil], 18, 18).
recipe(flatfish_sweet_potato_rice_pot, [rice, sweet_potato, flatfish, leek, ghee], 13, 30).
recipe(flatfish_swiss_chard_rice_pot, [rice, swiss_chard, flatfish, shallot, butter], 15, 25).
recipe(flatfish_swiss_chard_walnut_oil_plate, [flatfish, swiss_chard, walnut_oil], 11, 20).
recipe(flatfish_tomato_rice_pot, [rice, tomato, flatfish, shallot, olive_oil], 16, 22).
recipe(flatfish_wok_bell_pepper, [flatfish, bell_pepper, celery, corn_oil], 10, 10).
recipe(flatfish_wok_green_beans, [flatfish, green_beans, garlic, corn_oil], 13, 7).
recipe(flatfish_zucchini_rice_pot, [rice, zucchini, flatfish, leek, ghee], 10, 30).
recipe(garden_beet_rice_pot, [rice, beet, leek, ghee], 19, 26).
recipe(garden_butternut_squash_rice_pot, [rice, butternut_squash, shallot, olive_oil], 11, 27).
recipe(garden_carrot_rice_pot, [rice, carrot, shallot, ghee], 20, 20).
recipe(garden_chickpeas_rice_pot, [rice, chickpeas, leek, ghee], 10, 29).
recipe(garden_green_beans_rice_pot, [rice, green_beans, shallot, butter], 12, 21).
recipe(garden_kale_rice_pot, [rice, kale, leek, butter], 18, 19).
recipe(garden_leek_rice_pot, [rice, leek, onion, ghee], 13, 21).
recipe(garden_lentils_rice_pot, [rice, lentils, leek, olive_oil], 10, 19).
recipe(garden_peas_rice_pot, [rice, peas, onion, butter], 18, 29).
recipe(garden_pumpkin_rice_pot, [rice, pumpkin, shallot, olive_oil], 10, 19).
recipe(garden_spinach_rice_pot, [rice, spinach, leek, butter], 10, 28).
recipe(garden_sweet_potato_rice_pot, [rice, sweet_potato, leek, butter], 19, 29).
recipe(garden_swiss_chard_rice_pot, [rice, swiss_chard, leek, butter], 12, 25).
recipe(garden_tomato_rice_pot, [rice, tomato, leek, olive_oil], 18, 24).
recipe(garden_zucchini_rice_pot, [rice, zucchini, leek, ghee], 13, 22).
recipe(gentle_lettuce_chicken, [chicken, lettuce, peas, butter], 9, 13).
recipe(goat_beet_rice_pot, [rice, beet, goat, onion, olive_oil], 12, 23).
recipe(goat_butternut_squash_rice_pot, [rice, butternut_squash, goat, onion, olive_oil], 19, 28).
recipe(goat_carrot_rice_pot, [rice, carrot, goat, onion, ghee], 18, 21).
recipe(goat_cassava_onion_stew, [goat, cassava, onion], 24, 64).
recipe(goat_chickpeas_rice_pot, [rice, chickpeas, goat, leek, butter], 16, 28).
recipe(goat_chickpeas_tomato_stew, [goat, chickpeas, tomato, onion], 18, 80).
recipe(goat_garden_soup, [goat, onion, potato, carrot], 12, 32).
recipe(goat_green_beans_rice_pot, [rice, green_beans, goat, shallot, ghee], 12, 22).
recipe(goat_green_beans_sour_cream_plate, [goat, green_beans, sour_cream], 11, 20).
recipe(goat_green_beans_tomato_stew, [goat, green_beans, tomato, onion], 28, 70).
recipe(goat_harvest_stew, [goat, pumpkin, turnip], 15, 56).
recipe(goat_kale_rice_pot, [rice, kale, goat, leek, butter], 20, 29).
recipe(goat_leek_rice_pot, [rice, leek, goat, onion, olive_oil], 15, 29).
recipe(goat_leek_walnut_oil_plate, [goat, leek, walnut_oil], 8, 16).
recipe(goat_lentils_carrot_stew, [goat, lentils, carrot, onion], 22, 78).
recipe(goat_lentils_rice_pot, [rice, lentils, goat, onion, butter], 16, 20).
recipe(goat_lettuce_walnut_oil_plate, [goat, lettuce, walnut_oil], 10, 20).
recipe(goat_peas_rice_pot, [rice, peas, goat, shallot, olive_oil], 14, 19).
recipe(goat_pumpkin_onion_stew, [goat, pumpkin, onion], 25, 72).
recipe(goat_pumpkin_rice_pot, [rice, pumpkin, goat, shallot, olive_oil], 17, 20).
recipe(goat_radish_walnut_oil_plate, [goat, radish, walnut_oil], 11, 9).
recipe(goat_shallot_walnut_oil_plate, [goat, shallot, walnut_oil], 10, 21).
recipe(goat_spinach_rice_pot, [rice, spinach, goat, onion, olive_oil], 19, 22).
recipe(goat_sweet_potato_onion_stew, [goat, sweet_potato, onion, garlic], 24, 87).
recipe(goat_sweet_potato_rice_pot, [rice, sweet_potato, goat, onion, ghee], 18, 18).
recipe(goat_swiss_chard_onion_stew, [goat, swiss_chard, onion], 18, 66).
recipe(goat_swiss_chard_rice_pot, [rice, swiss_chard, goat, shallot, butter], 11, 20).
recipe(goat_tomato_rice_pot, [rice, tomato, goat, leek, olive_oil], 12, 20).
recipe(goat_turnip_carrot_stew, [goat, turnip, carrot, celery], 15, 67).
recipe(goat_wok_bell_pepper, [goat, bell_pepper, celery, ghee], 13, 8).
recipe(goat_wok_green_beans, [goat, green_beans, garlic, ghee], 8, 10).
recipe(goat_zucchini_butter_plate, [goat, zucchini, butter], 10, 22).
recipe(goat_zucchini_rice_pot, [rice, zucchini, goat, onion, olive_oil], 12, 18).
recipe(golden_kale_butter_bell_pepper_pasta, [pasta, kale, butter, shallot, bell_pepper], 10, 20).
recipe(golden_kale_butter_pasta, [pasta, kale, butter, shallot], 11, 20).
recipe(green_bean_simmer_pot, [green_beans, tomato, onion, olive_oil], 13, 34).
recipe(green_bean_yogurt_salad, [green_beans, yogurt, shallot, olive_oil], 8, 3).
recipe(green_garden_pea_pasta, [pasta, peas, butter, shallot], 8, 20).
recipe(harvest_pea_simmer_pot, [peas, lettuce, shallot, butter], 11, 33).
recipe(hearty_lentil_pasta, [pasta, lentils, tomato, onion], 13, 10).
recipe(kale_bell_pepper_lentils_salad, [kale, bell_pepper, walnut_oil, lentils, shallot], 8, 5).
recipe(kale_buttermilk_dressing_bowl, [kale, buttermilk, shallot, walnut_oil], 8, 1).
recipe(kale_carrot_chickpeas_salad, [kale, carrot, olive_oil, chickpeas, shallot], 12, 4).
recipe(kale_celery_lentils_salad, [kale, celery, olive_oil, lentils, shallot], 12, 3).
recipe(kale_cucumber_salad, [kale, cucumber, olive_oil, shallot], 13, 1).
recipe(kale_milk_soup, [kale, onion, milk, butter], 12, 31).
recipe(kale_radish_chickpeas_salad, [kale, radish, olive_oil, chickpeas, shallot], 8, 4).
recipe(kale_turnip_shrimp_salad, [kale, turnip, walnut_oil, shrimp, shallot], 12, 0).
recipe(kale_yogurt_soup, [kale, onion, yogurt, olive_oil], 11, 32).
recipe(lamb_beet_rice_pot, [rice, beet, lamb, leek, ghee], 15, 26).
recipe(lamb_bell_pepper_sour_cream_plate, [lamb, bell_pepper, sour_cream], 9, 19).
recipe(lamb_butternut_squash_rice_pot, [rice, butternut_squash, lamb, onion, olive_oil], 12, 21).
recipe(lamb_carrot_rice_pot, [rice, carrot, lamb, leek, olive_oil], 10, 21).
recipe(lamb_cassava_onion_stew, [lamb, cassava, onion], 29, 72).
recipe(lamb_celery_butter_plate, [lamb, celery, butter], 11, 12).
recipe(lamb_chickpeas_rice_pot, [rice, chickpeas, lamb, leek, butter], 19, 28).
recipe(lamb_chickpeas_tomato_stew, [lamb, chickpeas, tomato, onion], 16, 48).
recipe(lamb_garden_soup, [lamb, onion, potato, carrot, turnip], 10, 32).
recipe(lamb_green_beans_rice_pot, [rice, green_beans, lamb, leek, olive_oil], 19, 18).
recipe(lamb_green_beans_tomato_stew, [lamb, green_beans, tomato, onion], 16, 76).
recipe(lamb_kale_rice_pot, [rice, kale, lamb, leek, ghee], 16, 24).
recipe(lamb_leek_rice_pot, [rice, leek, lamb, ghee], 20, 18).
recipe(lamb_leek_walnut_oil_plate, [lamb, leek, walnut_oil], 9, 10).
recipe(lamb_lentils_carrot_stew, [lamb, lentils, carrot, onion], 16, 85).
recipe(lamb_lentils_rice_pot, [rice, lentils, lamb, onion, olive_oil], 14, 22).
recipe(lamb_lettuce_ghee_plate, [lamb, lettuce, ghee], 6, 16).
recipe(lamb_peas_rice_pot, [rice, peas, lamb, onion, butter], 14, 21).
recipe(lamb_potato_carrot_stew, [lamb, potato, carrot, onion], 29, 82).
recipe(lamb_pumpkin_onion_stew, [lamb, pumpkin, onion], 27, 67).
recipe(lamb_pumpkin_rice_pot, [rice, pumpkin, lamb, shallot, olive_oil], 17, 24).
recipe(lamb_radish_olive_oil_plate, [lamb, radish, olive_oil], 9, 13).
recipe(lamb_spinach_rice_pot, [rice, spinach, lamb, onion, butter], 10, 20).
recipe(lamb_sweet_potato_onion_stew, [lamb, sweet_potato, onion, garlic], 24, 74).
recipe(lamb_sweet_potato_rice_pot, [rice, sweet_potato, lamb, shallot, olive_oil], 10, 30).
recipe(lamb_swiss_chard_onion_stew, [lamb, swiss_chard, onion], 24, 87).
recipe(lamb_swiss_chard_rice_pot, [rice, swiss_chard, lamb, leek, olive_oil], 15, 28).
recipe(lamb_swiss_chard_sour_cream_plate, [lamb, swiss_chard, sour_cream], 8, 22).
recipe(lamb_tomato_rice_pot, [rice, tomato, lamb, onion, butter], 18, 22).
recipe(lamb_turnip_carrot_stew, [lamb, turnip, carrot, celery], 25, 62).
recipe(lamb_wok_bell_pepper, [lamb, bell_pepper, celery, ghee], 8, 7).
recipe(lamb_wok_green_beans, [lamb, green_beans, garlic, corn_oil], 10, 11).
recipe(lamb_zucchini_rice_pot, [rice, zucchini, lamb, onion, ghee], 16, 22).
recipe(langoustine_butter_bath, [langoustines, butter, shallot], 13, 14).
recipe(langoustines_bell_pepper_ghee_plate, [langoustines, bell_pepper, ghee], 7, 18).
recipe(langoustines_celery_walnut_oil_plate, [langoustines, celery, walnut_oil], 10, 19).
recipe(langoustines_cucumber_ghee_plate, [langoustines, cucumber, ghee], 9, 14).
recipe(langoustines_leek_olive_oil_plate, [langoustines, leek, olive_oil], 10, 22).
recipe(langoustines_lettuce_walnut_oil_plate, [langoustines, lettuce, walnut_oil], 8, 19).
recipe(langoustines_wok_bell_pepper, [langoustines, bell_pepper, celery, sunflower_oil], 9, 6).
recipe(langoustines_wok_green_beans, [langoustines, green_beans, garlic, sunflower_oil], 14, 8).
recipe(langoustines_zucchini_sour_cream_plate, [langoustines, zucchini, sour_cream], 11, 10).
recipe(leek_milk_soup, [leek, onion, milk, butter], 14, 28).
recipe(leek_yogurt_soup, [leek, onion, yogurt, olive_oil], 15, 33).
recipe(legume_root_pot_simmer_pot, [lentils, turnip, carrot, olive_oil], 15, 45).
recipe(lentil_simmer_pot, [lentils, spinach, onion, olive_oil], 12, 40).
recipe(lettuce_bell_pepper_peas_salad, [lettuce, bell_pepper, olive_oil, peas, shallot], 14, 2).
recipe(lettuce_carrot_tuna_salad, [lettuce, carrot, olive_oil, tuna, shallot], 14, 2).
recipe(lettuce_celery_salad, [lettuce, celery, walnut_oil, shallot], 13, 5).
recipe(lettuce_cucumber_tuna_salad, [lettuce, cucumber, walnut_oil, tuna, shallot], 9, 3).
recipe(lettuce_kefir_cold_soup, [lettuce, kefir, cucumber, olive_oil], 11, 2).
recipe(lettuce_radish_chicken_salad, [lettuce, radish, olive_oil, chicken, shallot], 9, 0).
recipe(lettuce_turnip_salad, [lettuce, turnip, walnut_oil, shallot], 9, 2).
recipe(marinar_tuna_bell_pepper_pasta, [pasta, tuna, tomato, onion, olive_oil, bell_pepper], 11, 10).
recipe(marinar_tuna_pasta, [pasta, tuna, tomato, onion, olive_oil], 10, 10).
recipe(nordic_salmon_butter_pasta, [pasta, salmon, butter, leek], 9, 16).
recipe(octopus_bell_pepper_ghee_plate, [octopus, bell_pepper, ghee], 5, 10).
recipe(octopus_celery_walnut_oil_plate, [octopus, celery, walnut_oil], 6, 18).
recipe(octopus_garden_salad, [octopus, lettuce, onion, olive_oil], 10, 22).
recipe(octopus_green_beans_walnut_oil_plate, [octopus, green_beans, walnut_oil], 9, 17).
recipe(octopus_leek_ghee_plate, [octopus, leek, ghee], 5, 13).
recipe(octopus_lettuce_walnut_oil_plate, [octopus, lettuce, walnut_oil], 10, 12).
recipe(octopus_shallot_walnut_oil_plate, [octopus, shallot, walnut_oil], 5, 10).
recipe(octopus_tomato_stew, [octopus, onion, tomato], 16, 81).
recipe(oyster_chowder, [oysters, potato, milk, celery], 12, 15).
recipe(oysters_green_beans_walnut_oil_plate, [oysters, green_beans, walnut_oil], 6, 22).
recipe(oysters_kale_walnut_oil_plate, [oysters, kale, walnut_oil], 10, 10).
recipe(oysters_lettuce_sour_cream_plate, [oysters, lettuce, sour_cream], 8, 14).
recipe(oysters_radish_olive_oil_plate, [oysters, radish, olive_oil], 11, 14).
recipe(oysters_swiss_chard_sour_cream_plate, [oysters, swiss_chard, sour_cream], 10, 21).
recipe(oysters_zucchini_walnut_oil_plate, [oysters, zucchini, walnut_oil], 5, 14).
recipe(pea_mint_free_simmer_pot, [peas, zucchini, leek, butter], 11, 39).
recipe(poached_chicken_leek, [chicken, leek, celery, butter], 11, 10).
recipe(poached_rabbit_shallot, [rabbit, shallot, butter, celery], 8, 17).
recipe(poached_salmon_dill_free, [salmon, lettuce, butter], 14, 15).
recipe(poached_turbot_milk, [turbot, milk, butter, leek], 10, 20).
recipe(pumpkin_gratin_bake, [pumpkin, milk, butter, shallot], 15, 44).
recipe(pumpkin_milk_soup, [pumpkin, onion, milk, butter], 13, 35).
recipe(pumpkin_yogurt_bowl, [pumpkin, yogurt, walnut_oil], 15, 1).
recipe(pumpkin_yogurt_soup, [pumpkin, onion, yogurt, olive_oil], 11, 32).
recipe(rabbit_beet_rice_pot, [rice, beet, rabbit, shallot, ghee], 17, 28).
recipe(rabbit_bell_pepper_walnut_oil_plate, [rabbit, bell_pepper, walnut_oil], 5, 13).
recipe(rabbit_butternut_squash_rice_pot, [rice, butternut_squash, rabbit, onion, ghee], 16, 25).
recipe(rabbit_carrot_rice_pot, [rice, carrot, rabbit, leek, butter], 16, 20).
recipe(rabbit_cassava_onion_stew, [rabbit, cassava, onion], 15, 55).
recipe(rabbit_chickpeas_rice_pot, [rice, chickpeas, rabbit, onion, ghee], 11, 26).
recipe(rabbit_chickpeas_tomato_stew, [rabbit, chickpeas, tomato, onion], 28, 52).
recipe(rabbit_garden_soup, [rabbit, onion, potato, carrot, turnip], 17, 28).
recipe(rabbit_green_beans_ghee_plate, [rabbit, green_beans, ghee], 11, 19).
recipe(rabbit_green_beans_rice_pot, [rice, green_beans, rabbit, leek, olive_oil], 18, 24).
recipe(rabbit_green_beans_tomato_stew, [rabbit, green_beans, tomato, onion], 19, 66).
recipe(rabbit_kale_ghee_plate, [rabbit, kale, ghee], 9, 16).
recipe(rabbit_kale_rice_pot, [rice, kale, rabbit, leek, ghee], 18, 22).
recipe(rabbit_leek_rice_pot, [rice, leek, rabbit, shallot, ghee], 12, 29).
recipe(rabbit_lentils_carrot_stew, [rabbit, lentils, carrot, onion], 29, 79).
recipe(rabbit_lentils_rice_pot, [rice, lentils, rabbit, shallot, butter], 13, 29).
recipe(rabbit_peas_rice_pot, [rice, peas, rabbit, leek, butter], 11, 19).
recipe(rabbit_potato_carrot_stew, [rabbit, potato, carrot, onion], 15, 79).
recipe(rabbit_pumpkin_onion_stew, [rabbit, pumpkin, onion], 19, 67).
recipe(rabbit_pumpkin_rice_pot, [rice, pumpkin, rabbit, shallot, ghee], 16, 23).
recipe(rabbit_radish_ghee_plate, [rabbit, radish, ghee], 5, 13).
recipe(rabbit_shallot_butter_plate, [rabbit, shallot, butter], 9, 21).
recipe(rabbit_spinach_olive_oil_plate, [rabbit, spinach, olive_oil], 6, 8).
recipe(rabbit_spinach_rice_pot, [rice, spinach, rabbit, leek, olive_oil], 12, 20).
recipe(rabbit_sweet_potato_onion_stew, [rabbit, sweet_potato, onion, garlic], 26, 84).
recipe(rabbit_sweet_potato_rice_pot, [rice, sweet_potato, rabbit, onion, ghee], 20, 24).
recipe(rabbit_swiss_chard_onion_stew, [rabbit, swiss_chard, onion], 22, 85).
recipe(rabbit_swiss_chard_rice_pot, [rice, swiss_chard, rabbit, leek, butter], 20, 23).
recipe(rabbit_tomato_rice_pot, [rice, tomato, rabbit, shallot, butter], 11, 21).
recipe(rabbit_turnip_carrot_stew, [rabbit, turnip, carrot, celery], 25, 52).
recipe(rabbit_wok_bell_pepper, [rabbit, bell_pepper, celery, ghee], 9, 8).
recipe(rabbit_wok_green_beans, [rabbit, green_beans, garlic, corn_oil], 10, 7).
recipe(rabbit_zucchini_rice_pot, [rice, zucchini, rabbit, shallot, butter], 13, 29).
recipe(radish_brown_butter_bell_pepper_pasta, [pasta, radish, butter, shallot, bell_pepper], 8, 18).
recipe(radish_brown_butter_pasta, [pasta, radish, butter, shallot], 14, 16).
recipe(radish_buttermilk_cold_soup, [radish, buttermilk, shallot, walnut_oil], 11, 4).
recipe(radish_buttermilk_dip, [radish, buttermilk, shallot], 11, 6).
recipe(ragu_classico_bell_pepper_pasta, [pasta, beef, tomato, onion, carrot, bell_pepper], 12, 11).
recipe(ragu_classico_pasta, [pasta, beef, tomato, onion, carrot], 7, 18).
recipe(rosa_shrimp_bell_pepper_pasta, [pasta, shrimp, tomato, sour_cream, bell_pepper], 13, 15).
recipe(rosa_shrimp_pasta, [pasta, shrimp, tomato, sour_cream], 15, 12).
recipe(salmon_celery_walnut_oil_plate, [salmon, celery, walnut_oil], 12, 15).
recipe(salmon_cucumber_ghee_plate, [salmon, cucumber, ghee], 8, 20).
recipe(salmon_garden_soup, [salmon, onion, potato, carrot, turnip, tomato], 13, 30).
recipe(salmon_green_beans_sour_cream_plate, [salmon, green_beans, sour_cream], 8, 21).
recipe(salmon_leek_butter_plate, [salmon, leek, butter], 11, 22).
recipe(salmon_spinach_poach, [salmon, spinach, butter, leek], 15, 24).
recipe(salmon_swiss_chard_olive_oil_plate, [salmon, swiss_chard, olive_oil], 5, 16).
recipe(salmon_wok_bell_pepper, [salmon, bell_pepper, celery, ghee], 14, 10).
recipe(salmon_wok_green_beans, [salmon, green_beans, garlic, sunflower_oil], 11, 10).
recipe(salmon_zucchini_butter_plate, [salmon, zucchini, butter], 12, 12).
recipe(scallop_leek_milk_sear, [scallops, leek, milk, butter], 16, 10).
recipe(scallops_celery_ghee_plate, [scallops, celery, ghee], 6, 17).
recipe(scallops_green_beans_walnut_oil_plate, [scallops, green_beans, walnut_oil], 12, 13).
recipe(scallops_kale_butter_plate, [scallops, kale, butter], 12, 16).
recipe(scallops_leek_walnut_oil_plate, [scallops, leek, walnut_oil], 9, 20).
recipe(scallops_shallot_ghee_plate, [scallops, shallot, ghee], 7, 17).
recipe(scallops_swiss_chard_butter_plate, [scallops, swiss_chard, butter], 12, 16).
recipe(scallops_wok_bell_pepper, [scallops, bell_pepper, celery, corn_oil], 10, 9).
recipe(scallops_wok_green_beans, [scallops, green_beans, garlic, corn_oil], 12, 7).
recipe(sheetpan_beef_roast, [beef, carrot, turnip, olive_oil], 21, 43).
recipe(sheetpan_chicken_roast, [chicken, potato, onion, olive_oil], 17, 47).
recipe(sheetpan_flatfish_roast, [flatfish, tomato, onion, olive_oil], 16, 38).
recipe(sheetpan_goat_roast, [goat, potato, beet, olive_oil], 16, 42).
recipe(sheetpan_lamb_roast, [lamb, carrot, pumpkin, olive_oil], 24, 53).
recipe(sheetpan_rabbit_roast, [rabbit, butternut_squash, onion, olive_oil], 22, 42).
recipe(sheetpan_salmon_roast, [salmon, zucchini, bell_pepper, olive_oil], 24, 48).
recipe(sheetpan_turbot_roast, [turbot, leek, tomato, olive_oil], 19, 47).
recipe(shrimp_beet_rice_pot, [rice, beet, shrimp, onion, ghee], 10, 21).
recipe(shrimp_butternut_squash_rice_pot, [rice, butternut_squash, shrimp, shallot, olive_oil], 10, 24).
recipe(shrimp_carrot_rice_pot, [rice, carrot, shrimp, onion, olive_oil], 16, 23).
recipe(shrimp_chickpeas_rice_pot, [rice, chickpeas, shrimp, onion, butter], 11, 18).
recipe(shrimp_cucumber_walnut_oil_plate, [shrimp, cucumber, walnut_oil], 12, 22).
recipe(shrimp_green_beans_ghee_plate, [shrimp, green_beans, ghee], 7, 17).
recipe(shrimp_green_beans_rice_pot, [rice, green_beans, shrimp, shallot, olive_oil], 18, 26).
recipe(shrimp_kale_rice_pot, [rice, kale, shrimp, onion, olive_oil], 17, 25).
recipe(shrimp_leek_rice_pot, [rice, leek, shrimp, onion, butter], 17, 27).
recipe(shrimp_lentils_rice_pot, [rice, lentils, shrimp, onion, butter], 16, 21).
recipe(shrimp_lettuce_olive_oil_plate, [shrimp, lettuce, olive_oil], 7, 20).
recipe(shrimp_peas_rice_pot, [rice, peas, shrimp, onion, butter], 16, 28).
recipe(shrimp_pumpkin_rice_pot, [rice, pumpkin, shrimp, onion, butter], 14, 24).
recipe(shrimp_radish_cold_plate, [shrimp, radish, yogurt, shallot], 12, 19).
recipe(shrimp_radish_olive_oil_plate, [shrimp, radish, olive_oil], 11, 22).
recipe(shrimp_shallot_olive_oil_plate, [shrimp, shallot, olive_oil], 7, 17).
recipe(shrimp_spinach_rice_pot, [rice, spinach, shrimp, onion, butter], 15, 18).
recipe(shrimp_sweet_potato_rice_pot, [rice, sweet_potato, shrimp, shallot, ghee], 19, 28).
recipe(shrimp_swiss_chard_olive_oil_plate, [shrimp, swiss_chard, olive_oil], 10, 22).
recipe(shrimp_swiss_chard_rice_pot, [rice, swiss_chard, shrimp, leek, butter], 13, 26).
recipe(shrimp_tomato_rice_pot, [rice, tomato, shrimp, onion, ghee], 19, 25).
recipe(shrimp_wok_bell_pepper, [shrimp, bell_pepper, celery, corn_oil], 9, 10).
recipe(shrimp_wok_green_beans, [shrimp, green_beans, garlic, sunflower_oil], 8, 9).
recipe(shrimp_zucchini_rice_pot, [rice, zucchini, shrimp, shallot, olive_oil], 20, 21).
recipe(smoky_sour_cream_pasta, [pasta, sour_cream, onion], 7, 12).
recipe(spinach_bell_pepper_salad, [spinach, bell_pepper, olive_oil, shallot], 12, 5).
recipe(spinach_carrot_shrimp_salad, [spinach, carrot, olive_oil, shrimp, shallot], 13, 1).
recipe(spinach_celery_chickpeas_salad, [spinach, celery, walnut_oil, chickpeas, shallot], 14, 2).
recipe(spinach_cucumber_lentils_salad, [spinach, cucumber, walnut_oil, lentils, shallot], 9, 4).
recipe(spinach_gratin_bake, [spinach, sour_cream, butter, garlic], 17, 38).
recipe(spinach_milk_soup, [spinach, onion, milk, butter], 11, 22).
recipe(spinach_radish_lentils_salad, [spinach, radish, olive_oil, lentils, shallot], 12, 3).
recipe(spinach_turnip_salad, [spinach, turnip, walnut_oil, shallot], 14, 2).
recipe(spinach_yogurt_bowl, [spinach, yogurt, garlic], 14, 0).
recipe(spinach_yogurt_soup, [spinach, onion, yogurt, olive_oil], 15, 25).
recipe(split_pea_simmer_pot, [peas, carrot, onion, butter], 14, 31).
recipe(squid_garden_ragu, [calamari, tomato, bell_pepper, onion], 15, 8).
recipe(steamed_fish_greens, [flatfish, spinach, olive_oil], 10, 17).
recipe(summer_zucchini_pasta, [pasta, zucchini, tomato, garlic], 7, 11).
recipe(sweet_potato_milk_soup, [sweet_potato, onion, milk, butter], 11, 32).
recipe(sweet_potato_yogurt_soup, [sweet_potato, onion, yogurt, olive_oil], 13, 26).
recipe(swiss_chard_bell_pepper_salad, [swiss_chard, bell_pepper, walnut_oil, shallot], 13, 2).
recipe(swiss_chard_carrot_lentils_salad, [swiss_chard, carrot, walnut_oil, lentils, shallot], 12, 5).
recipe(swiss_chard_celery_chicken_salad, [swiss_chard, celery, olive_oil, chicken, shallot], 8, 4).
recipe(swiss_chard_cucumber_chicken_salad, [swiss_chard, cucumber, olive_oil, chicken, shallot], 8, 0).
recipe(swiss_chard_gratin_bake, [swiss_chard, sour_cream, garlic], 15, 36).
recipe(swiss_chard_milk_soup, [swiss_chard, onion, milk, butter], 12, 28).
recipe(swiss_chard_radish_chicken_salad, [swiss_chard, radish, walnut_oil, chicken, shallot], 8, 4).
recipe(swiss_chard_turnip_peas_salad, [swiss_chard, turnip, walnut_oil, peas, shallot], 8, 0).
recipe(swiss_chard_yogurt_soup, [swiss_chard, onion, yogurt, olive_oil], 11, 30).
recipe(three_sister_simmer_pot, [chickpeas, lentils, pumpkin, onion], 11, 39).
recipe(tomato_pasta, [pasta, tomato, garlic, olive_oil], 12, 15).
recipe(tuna_beet_rice_pot, [rice, beet, tuna, leek, ghee], 12, 29).
recipe(tuna_butternut_squash_rice_pot, [rice, butternut_squash, tuna, leek, olive_oil], 20, 30).
recipe(tuna_carrot_rice_pot, [rice, carrot, tuna, shallot, ghee], 15, 21).
recipe(tuna_celery_ghee_plate, [tuna, celery, ghee], 8, 14).
recipe(tuna_chickpeas_rice_pot, [rice, chickpeas, tuna, shallot, olive_oil], 13, 20).
recipe(tuna_cucumber_ghee_plate, [tuna, cucumber, ghee], 11, 20).
recipe(tuna_garden_soup, [tuna, onion, potato, carrot, tomato], 14, 33).
recipe(tuna_green_beans_rice_pot, [rice, green_beans, tuna, shallot, ghee], 15, 23).
recipe(tuna_green_beans_sour_cream_plate, [tuna, green_beans, sour_cream], 6, 18).
recipe(tuna_kale_olive_oil_plate, [tuna, kale, olive_oil], 12, 22).
recipe(tuna_kale_rice_pot, [rice, kale, tuna, onion, ghee], 13, 26).
recipe(tuna_leek_rice_pot, [rice, leek, tuna, shallot, butter], 13, 27).
recipe(tuna_lentils_rice_pot, [rice, lentils, tuna, leek, ghee], 12, 24).
recipe(tuna_peas_rice_pot, [rice, peas, tuna, leek, butter], 12, 22).
recipe(tuna_pumpkin_rice_pot, [rice, pumpkin, tuna, leek, butter], 10, 18).
recipe(tuna_spinach_rice_pot, [rice, spinach, tuna, onion, olive_oil], 14, 22).
recipe(tuna_sweet_potato_rice_pot, [rice, sweet_potato, tuna, onion, olive_oil], 15, 20).
recipe(tuna_swiss_chard_butter_plate, [tuna, swiss_chard, butter], 11, 21).
recipe(tuna_swiss_chard_rice_pot, [rice, swiss_chard, tuna, shallot, butter], 19, 27).
recipe(tuna_tomato_rice_pot, [rice, tomato, tuna, leek, butter], 13, 24).
recipe(tuna_wok_bell_pepper, [tuna, bell_pepper, celery, corn_oil], 8, 12).
recipe(tuna_wok_green_beans, [tuna, green_beans, garlic, ghee], 12, 8).
recipe(tuna_zucchini_rice_pot, [rice, zucchini, tuna, leek, ghee], 18, 22).
recipe(tuna_zucchini_sour_cream_plate, [tuna, zucchini, sour_cream], 7, 15).
recipe(turbot_beet_rice_pot, [rice, beet, turbot, shallot, butter], 12, 26).
recipe(turbot_butternut_squash_rice_pot, [rice, butternut_squash, turbot, onion, olive_oil], 15, 27).
recipe(turbot_carrot_rice_pot, [rice, carrot, turbot, shallot, butter], 11, 24).
recipe(turbot_chickpeas_rice_pot, [rice, chickpeas, turbot, shallot, butter], 10, 22).
recipe(turbot_cucumber_sour_cream_plate, [turbot, cucumber, sour_cream], 11, 20).
recipe(turbot_green_beans_rice_pot, [rice, green_beans, turbot, shallot, ghee], 13, 26).
recipe(turbot_kale_olive_oil_plate, [turbot, kale, olive_oil], 9, 11).
recipe(turbot_kale_rice_pot, [rice, kale, turbot, onion, ghee], 17, 28).
recipe(turbot_leek_rice_pot, [rice, leek, turbot, ghee], 11, 18).
recipe(turbot_lentils_rice_pot, [rice, lentils, turbot, shallot, ghee], 20, 25).
recipe(turbot_lettuce_walnut_oil_plate, [turbot, lettuce, walnut_oil], 12, 13).
recipe(turbot_peas_rice_pot, [rice, peas, turbot, shallot, olive_oil], 19, 20).
recipe(turbot_potato_chowder, [turbot, potato, milk, leek], 15, 11).
recipe(turbot_pumpkin_rice_pot, [rice, pumpkin, turbot, shallot, olive_oil], 16, 20).
recipe(turbot_shallot_ghee_plate, [turbot, shallot, ghee], 6, 17).
recipe(turbot_spinach_rice_pot, [rice, spinach, turbot, onion, butter], 11, 21).
recipe(turbot_spinach_sour_cream_plate, [turbot, spinach, sour_cream], 12, 17).
recipe(turbot_sweet_potato_rice_pot, [rice, sweet_potato, turbot, leek, olive_oil], 13, 30).
recipe(turbot_swiss_chard_rice_pot, [rice, swiss_chard, turbot, onion, olive_oil], 18, 22).
recipe(turbot_tomato_rice_pot, [rice, tomato, turbot, shallot, butter], 12, 21).
recipe(turbot_wok_bell_pepper, [turbot, bell_pepper, celery, ghee], 8, 6).
recipe(turbot_wok_green_beans, [turbot, green_beans, garlic, sunflower_oil], 12, 7).
recipe(turbot_zucchini_butter_plate, [turbot, zucchini, butter], 5, 19).
recipe(turbot_zucchini_rice_pot, [rice, zucchini, turbot, onion, butter], 16, 28).
recipe(turnip_milk_soup, [turnip, onion, milk, butter], 11, 20).
recipe(turnip_yogurt_side, [turnip, yogurt, garlic], 11, 1).
recipe(turnip_yogurt_soup, [turnip, onion, yogurt, olive_oil], 15, 32).
recipe(tuscan_chickpea_bell_pepper_pasta, [pasta, chickpeas, tomato, garlic, bell_pepper], 7, 18).
recipe(tuscan_chickpea_pasta, [pasta, chickpeas, tomato, garlic], 8, 12).
recipe(velvet_pumpkin_bell_pepper_pasta, [pasta, pumpkin, onion, milk, bell_pepper], 6, 18).
recipe(velvet_pumpkin_pasta, [pasta, pumpkin, onion, milk], 15, 14).
recipe(zucchini_gratin_bake, [zucchini, milk, butter, leek], 16, 32).
recipe(zucchini_kefir_cream, [zucchini, kefir, walnut_oil, garlic], 8, 6).

% ==== END GENERATED EXPANSION v1 ====
%calories

calories(spinach, 10).
calories(kale, 30).
calories(lettuce, 10).
calories(swiss_chard, 15).
calories(carrot, 25).
calories(beet, 35).
calories(radish, 10).
calories(turnip, 20).
calories(onion, 45).
calories(garlic, 5).
calories(leek, 30).
calories(shallot, 25).
calories(celery, 15).
calories(pumpkin, 40).
calories(butternut_squash, 45).
calories(zucchini, 20).
calories(tomato, 20).
calories(cucumber, 15).
calories(bell_pepper, 25).

calories(peas, 60).
calories(green_beans, 30).
calories(chickpeas, 135).
calories(lentils, 115).
calories(potato, 130).
calories(sweet_potato, 110).
calories(cassava, 160).

calories(pasta, 200).
calories(rice, 205).

calories(beef, 250).
calories(lamb, 290).
calories(chicken, 165).
calories(rabbit, 170).
calories(goat, 140).

calories(flying_fish_roe, 100).
calories(salmon, 200).
calories(cuttlefish, 120).
calories(octopus, 140).
calories(calamari, 150).
calories(abalone, 150).
calories(conch, 130).
calories(scallops, 130).
calories(oysters, 80).
calories(crab, 100).
calories(shrimp, 85).
calories(crawfish, 90).
calories(langoustines, 110).
calories(flatfish, 120).
calories(tuna, 130).
calories(turbot, 140).

calories(corn_oil, 120).
calories(olive_oil, 120).
calories(butter, 100).
calories(ghee, 120).
calories(sunflower_oil, 120).
calories(walnut_oil, 120).
calories(peanut_butter, 190).
calories(milk, 150).
calories(yogurt, 100).
calories(kefir, 100).
calories(buttermilk, 100).
calories(sour_cream, 190).




% --------------------------------------------------------------------
% Editorial placeholder ingredients: narrative-only atoms kept inside
% recipe data. They are never demanded from the user's fridge and never
% counted in nutritional sums (replaces the '_skipped' suffix hack).
% --------------------------------------------------------------------
placeholder_ingredient(nutmeg_substitute_skipped).
placeholder_ingredient(mussels_skipped).
placeholder_ingredient(cumin_skipped).
placeholder_ingredient(water_skipped).
placeholder_ingredient(cream_skipped).
placeholder_ingredient(corn_skipped).

% --------------------------------------------------------------------
% Animal-derived products: single source of truth for diet filtering.
% NOTE: category(protein) also covers plant proteins (peas, chickpeas,
% lentils), so vegan logic MUST key off these explicit facts instead of
% inferring from categories.
% --------------------------------------------------------------------
animal_product(beef).
animal_product(lamb).
animal_product(chicken).
animal_product(rabbit).
animal_product(goat).
animal_product(salmon).
animal_product(shrimp).
animal_product(calamari).
animal_product(cuttlefish).
animal_product(octopus).
animal_product(abalone).
animal_product(conch).
animal_product(scallops).
animal_product(oysters).
animal_product(crab).
animal_product(crawfish).
animal_product(langoustines).
animal_product(flatfish).
animal_product(tuna).
animal_product(turbot).
animal_product(flying_fish_roe).
animal_product(milk).
animal_product(yogurt).
animal_product(kefir).
animal_product(buttermilk).
animal_product(sour_cream).
animal_product(butter).
animal_product(ghee).

% === ENRICHMENT FACTS (auto-generated by culinary_pipeline v3) ===

recipe_name(abalone_bell_pepper_ghee_plate, 'Pan-Seared Abalone with Sweet Bell Pepper in Spiced Ghee').
recipe_ingredients(abalone_bell_pepper_ghee_plate, [abalone, bell_pepper, ghee]).
recipe_steps(abalone_bell_pepper_ghee_plate, ['Heat a skillet over medium heat with a little fat.', 'Cook the protein, then add the vegetables and saute until tender.', 'Season with sea salt, black pepper, and finish with fresh herbs.']).
recipe_macros(abalone_bell_pepper_ghee_plate, 137.2, 17.4, 2.9, 6.2, 0.8).
recipe_image(abalone_bell_pepper_ghee_plate, '').

recipe_name(abalone_butter, 'Abalone Butter').
recipe_ingredients(abalone_butter, [abalone, butter, garlic]).
recipe_steps(abalone_butter, ['Heat a skillet over medium heat with a little fat.', 'Cook the protein, then add the vegetables and saute until tender.', 'Season with sea salt, black pepper, and finish with fresh herbs.']).
recipe_macros(abalone_butter, 204.0, 30.0, 1.0, 8.9, 0.2).
recipe_image(abalone_butter, 'meal_images/abalone_butter.jpg').

recipe_name(abalone_celery_pasta, 'Abalone and Fresh Celery Al Dente Pasta').
recipe_ingredients(abalone_celery_pasta, [pasta, abalone, celery, butter]).
recipe_steps(abalone_celery_pasta, ['Bring a large pot of salted water to a rolling boil at 100C.', 'Cook the pasta until al dente, about 8-10 minutes, then drain.', 'Heat a wide saute pan over medium heat with extra-virgin olive oil.', 'Saute aromatics and protein until just cooked through.', 'Toss the drained pasta with the pan contents and season to taste.', 'Plate immediately and finish with fresh herbs if desired.']).
recipe_macros(abalone_celery_pasta, 226.8, 18.3, 26.2, 5.4, 0.8).
recipe_image(abalone_celery_pasta, 'meal_images/abalone_celery_pasta.jpg').
