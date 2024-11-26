/datum/alch_grind_recipe
	var/picky = TRUE // if TRUE: the item path MUST MATCH, and cannot be a subtype.
	var/valid_input = null //the typepath that, when ground, makes an output
	var/list/valid_outputs = list() //List of [Itempath = amnt?1] to be created always
	var/list/bonus_chance_outputs = list() //List of [Itempath = chance/100] to create sometimes.

/datum/alch_grind_recipe/sinew
	valid_input = /obj/item/alch/sinew
	valid_outputs = list(/obj/item/alch/viscera = 1)
	bonus_chance_outputs = list(/obj/item/alch/viscera = 75)

//Runes -> dust
/datum/alch_grind_recipe/fire_rune
	valid_input = /obj/item/rune/spell/fire_rune
	valid_outputs = list(/obj/item/alch/firedust = 2)
	bonus_chance_outputs = list(/obj/item/alch/firedust = 33)

/datum/alch_grind_recipe/water_rune
	valid_input = /obj/item/rune/spell/water_rune
	valid_outputs = list(/obj/item/alch/waterdust = 2)
	bonus_chance_outputs = list(/obj/item/alch/waterdust = 33)

/datum/alch_grind_recipe/air_rune
	valid_input = /obj/item/rune/spell/air_rune
	valid_outputs = list(/obj/item/alch/airdust = 2)
	bonus_chance_outputs = list(/obj/item/alch/airdust = 33)

/datum/alch_grind_recipe/earth_rune
	valid_input = /obj/item/rune/spell/earth_rune
	valid_outputs = list(/obj/item/alch/earthdust = 2)
	bonus_chance_outputs = list(/obj/item/alch/earthdust = 33)

/datum/alch_grind_recipe/blank_rune
	valid_input = /obj/item/rune/spell/blank_rune
	valid_outputs = list(/obj/item/alch/runedust = 2)
	bonus_chance_outputs = list(/obj/item/alch/runedust = 33)

//Objects -> dusts
/datum/alch_grind_recipe/crow
	valid_input = /obj/item/reagent_containers/food/snacks/crow
	valid_outputs = list(/obj/item/alch/airdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/airdust = 33)

/datum/alch_grind_recipe/bone
	valid_input = /obj/item/alch/bone
	valid_outputs = list( /obj/item/alch/bonemeal = 2)
	bonus_chance_outputs = list(/obj/item/alch/bonemeal = 50)

/datum/alch_grind_recipe/horn
	valid_input = /obj/item/alch/horn
	valid_outputs = list(/obj/item/alch/earthdust = 1,/obj/item/alch/bonemeal = 2)
	bonus_chance_outputs = list(/obj/item/alch/earthdust = 66)

/datum/alch_grind_recipe/fish
	picky = FALSE
	valid_input = /obj/item/reagent_containers/food/snacks/fish
	valid_outputs = list(/obj/item/alch/waterdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/bonemeal = 50)

/datum/alch_grind_recipe/swampweed
	valid_input = /obj/item/reagent_containers/food/snacks/produce/swampweed
	valid_outputs = list(/obj/item/alch/swampdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/earthdust = 33)

/datum/alch_grind_recipe/swampweed_dried
	valid_input = /obj/item/reagent_containers/food/snacks/produce/swampweed_dried
	valid_outputs = list(/obj/item/alch/swampdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/earthdust = 50,/obj/item/alch/swampdust = 50)

/datum/alch_grind_recipe/westleach
	valid_input = /obj/item/reagent_containers/food/snacks/produce/westleach
	valid_outputs = list(/obj/item/alch/tobaccodust = 1)
	bonus_chance_outputs = list(/obj/item/alch/airdust = 33)

/datum/alch_grind_recipe/dry_westleach
	valid_input = /obj/item/reagent_containers/food/snacks/produce/dry_westleach
	valid_outputs = list(/obj/item/alch/tobaccodust = 1)
	bonus_chance_outputs = list(/obj/item/alch/airdust = 50,/obj/item/alch/tobaccodust = 50)

/datum/alch_grind_recipe/fyritius
	valid_input = /obj/item/reagent_containers/food/snacks/produce/fyritius
	valid_outputs = list(/obj/item/alch/firedust = 1)

/datum/alch_grind_recipe/poppy
	valid_input = /obj/item/reagent_containers/food/snacks/produce/poppy
	valid_outputs = list(/obj/item/reagent_containers/powder/ozium = 1)
	bonus_chance_outputs = list(/obj/item/alch/airdust =33,/obj/item/alch/earthdust = 33)

/datum/alch_grind_recipe/seeds
	picky = FALSE
	valid_input = /obj/item/neuFarm/seed
	valid_outputs = list(/obj/item/alch/seeddust = 1)
	bonus_chance_outputs = list(/obj/item/alch/airdust =25,/obj/item/alch/earthdust = 25)

//Ores -> dust
/datum/alch_grind_recipe/gold_ore
	valid_input = /obj/item/rogueore/gold
	valid_outputs = list(/obj/item/alch/golddust = 1)
	bonus_chance_outputs = list(/obj/item/alch/golddust = 33)

/datum/alch_grind_recipe/silver_ore
	valid_input = /obj/item/rogueore/silver
	valid_outputs = list(/obj/item/alch/silverdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/silverdust = 33)

/datum/alch_grind_recipe/iron_ore
	valid_input = /obj/item/rogueore/iron
	valid_outputs = list(/obj/item/alch/irondust = 1)
	bonus_chance_outputs = list(/obj/item/alch/irondust = 33)

/datum/alch_grind_recipe/coal_ore
	valid_input = /obj/item/rogueore/coal
	valid_outputs = list(/obj/item/alch/coaldust = 1)
	bonus_chance_outputs = list(/obj/item/alch/coaldust = 33)

/datum/alch_grind_recipe/gold_bar
	valid_input = /obj/item/ingot/gold
	valid_outputs = list(/obj/item/alch/golddust = 1)
	bonus_chance_outputs = list(/obj/item/alch/golddust = 33)

/datum/alch_grind_recipe/silver_bar
	valid_input = /obj/item/ingot/silver
	valid_outputs = list(/obj/item/alch/silverdust = 1)
	bonus_chance_outputs = list(/obj/item/alch/silverdust = 33)

/datum/alch_grind_recipe/iron_bar
	valid_input = /obj/item/ingot/iron
	valid_outputs = list(/obj/item/alch/irondust = 1)
	bonus_chance_outputs = list(/obj/item/alch/irondust = 33)
