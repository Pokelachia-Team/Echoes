OlsteetonUniOfficePoplar_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, OLSTEETON_UNI_OFFICE, 9
	warp_event  3,  5, OLSTEETON_UNI_OFFICE, 9
	
	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarSignpost1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarSignpost2Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarBookshelfText
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarBookshelfText

	def_object_events
	; object_event  5,  5, SPRITE_AGATHA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlsteetonUniOfficeProfPoplarScript, -1
	object_event  4,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, OlsteetonUniOfficeProfPoplarBookText, -1

OlsteetonUniOfficeProfPoplarBookText: ; <- unchanged text from a celdadon script
	text "Needs text"
	done

OlsteetonUniOfficeProfPoplarSignpost1Text:
	text "It's a diploma of"
	line "#mon studies"

	para "from a university"
	line "in Unova."
	done

OlsteetonUniOfficeProfPoplarSignpost2Text:
	text "Please do not"
	line "borrow books"
	cont "without asking!"
	done

OlsteetonUniOfficeProfPoplarBookshelfText:
	text "Anatomy of object-"
	line "like #mon."
	para "By Anna Poplar"
	done
