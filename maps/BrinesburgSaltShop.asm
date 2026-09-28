BrinesburgSaltShop_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  9, BRINESBURG, 15
	warp_event  5,  9, BRINESBURG, 15

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BITTER, MART_UNDERGROUND, -1
	object_event  6,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BAZAAR, MART_SALTSHOP, -1
	object_event  9,  9, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopYoungsterText, -1
	object_event  9,  2, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopHikerText, -1
	object_event  3,  7, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopLassText, -1
	object_event  0,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopPokefanMText, -1
	pokemon_event 2,  6, NACLI, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BROWN, BrinesburgSaltShopNacliText, -1


	object_const_def

BrinesburgSaltShopYoungsterText:
	text "My mom says that"
	line "Sal gets all the"

	para "salt from natural"
	line "salt brines that"

	para "formed a long"
	line "time ago."
	done

BrinesburgSaltShopHikerText:
	text "Rumor has it that"
	line "Sal discovered a"

	para "way to change"
	line "Garganacl's form."
	done

BrinesburgSaltShopLassText:
	text "Hmm... Do you"
	line "think a filet"

	para "would be better"
	line "with Smoked or"
	cont "Herbal Salt?"
	done

BrinesburgSaltShopPokefanMText:
	text "Nacli is the"
	line "shop's mascot!"
	done

BrinesburgSaltShopNacliText:
	text "Nacli: cliii!"
	done