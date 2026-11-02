OlsteetonMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLSTEETON, 8
	warp_event  3,  7, OLSTEETON, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartClerkScript, -1
	object_event  5,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonMartSuperNerdText, -1
	object_event  6,  6, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonMartGrannyText, -1

CherrygroveMartClerkScript:
	checkevent EVENT_GOT_POKEDEX_FROM_POPLAR
	iftruefwd .AfterDex
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE

.AfterDex:
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX


OlsteetonMartSuperNerdText:
	text "Pfft, they'll "
	line "only sell you"

	para "#balls if you"
	line "have a #dex"
	done

OlsteetonMartGrannyText:
	text "Back in my day,"
	line "we just had"

	para "berries and apri-"
	line "corns. Times were"
	cont "simpler back then."
	done
