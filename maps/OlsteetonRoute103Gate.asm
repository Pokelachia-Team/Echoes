OlsteetonRoute103Gate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, OLSTEETON, 24
	warp_event  0,  5, OLSTEETON, 25
	warp_event  9,  4, ROUTE_103, 1
	warp_event  9,  5, ROUTE_103, 2


	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonRoute103GateOfficerText1, -1


OlsteetonRoute103GateOfficerText1: ;needs dialogue
	text "I sure would"
	line "love some"
	cont "dialogue."
	done
