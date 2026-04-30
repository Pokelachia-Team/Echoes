OlsteetonUniDormWest1F_MapScriptHeader:

	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 11, OLSTEETON_UNI, 12
	warp_event  6, 11, OLSTEETON_UNI, 12
	warp_event 11,  8, OLSTEETON_UNI_DINING_HALL, 2
	warp_event 11,  9, OLSTEETON_UNI_DINING_HALL, 3
	warp_event 11,  3, OLSTEETON_UNI_DORM_WEST_2F, 1
	warp_event  5,  0, OLSTEETON_UNI_DORM_WEST_ELEVATOR, 1


	def_coord_events

	def_bg_events
	bg_event 11,  1, BGEVENT_JUMPTEXT, OlsteetonUniDormWest1FBookshelf1Text
	bg_event 10,  1, BGEVENT_READ, OlsteetonUniDormWest1FBookshelf2
	bg_event  0,  9, BGEVENT_RIGHT, OlsteetonUniDormWest1FComputer

	def_object_events
	object_event  9,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormWest1FLassText, -1
	object_event  1, 10, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormWest1FCooltrainerfText, -1
	object_event  8,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormWest1FSuper_nerd1Text, -1
	object_event 10,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormWest1FGuardText, -1

	object_const_def

OlsteetonUniDormWest1FLassText:
	text "Needs dialogue"
	done

OlsteetonUniDormWest1FCooltrainerfText:
	text "Needs dialogue"
	done

OlsteetonUniDormWest1FSuper_nerd1Text:
	text "Needs dialogue"
	done

OlsteetonUniDormWest1FSuper_nerd2Text:
	text "Needs dialogue"
	done

OlsteetonUniDormWest1FGuardText:
	text "Needs dialogue"
	done
OlsteetonUniDormWest1FBookshelf1Text:
	text "Needs text"
	done

OlsteetonUniDormWest1FBookshelf2:
	text "Needs text"
	done
OlsteetonUniDormWest1FComputer:
	jumpthistext

	text "There's a player"
	line "character running"

	para "around a 2D"
	line "Olsteeton."
	done
