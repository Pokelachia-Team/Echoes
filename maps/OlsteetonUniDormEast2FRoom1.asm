OlsteetonUniDormEast2FRoom1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, OLSTEETON_UNI_DORM_EAST_2F, 3
	warp_event  4,  7, OLSTEETON_UNI_DORM_EAST_2F, 3


	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast2FRoom1Super_nerdText, -1



OlsteetonUniDormEast2FRoom1Super_nerdText:
	text "Next year I might"
	line "get a chance to"
	
	para "be one of the"
	line "assistants!"

	para "Helping the Prof-"
	line "fessors with"

	para "research will be"
	line "a dream come true!"
	done