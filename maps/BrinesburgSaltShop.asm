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
	object_event  6,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BAZAAR, MART_SHAMOUTI_1, -1
	object_event  9,  9, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopYoungsterText, -1
	object_event  1,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopSuperNerdText, -1
	object_event  9,  2, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopHikerText, -1
	object_event  3,  7, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopLassText, -1
	object_event  0,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSaltShopPokefanMText, -1


	object_const_def

BrinesburgSaltShopYoungsterText:
	text "Needs dialogue"
	done

BrinesburgSaltShopSuperNerdText:
	text "Needs dialogue"
	done

BrinesburgSaltShopHikerText:
	text "Needs dialogue"
	done

BrinesburgSaltShopLassText:
	text "Needs dialogue"
	done

BrinesburgSaltShopPokefanMText:
	text "Needs dialogue"
	done
