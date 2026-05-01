OlsteetonUniScienceCenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI, 4
	warp_event  6,  9, OLSTEETON_UNI, 4
	warp_event  1,  0, OLSTEETON_UNI_NURSE_DEPT, 1
	warp_event 11,  0, OLSTEETON_UNI_WATER_LAB, 1



	def_coord_events

	def_bg_events
	bg_event  0,  0, BGEVENT_READ, OlsteetonUniScienceCenterNurseText
	bg_event  8,  1, BGEVENT_JUMPTEXT, OlsteetonUniScienceCenterBookshelf1Text
	bg_event  9,  1, BGEVENT_JUMPTEXT, OlsteetonUniScienceCenterBookshelf2Text
	bg_event 10,  0, BGEVENT_RIGHT, OlsteetonUniScienceCenterLabText
	bg_event  8,  4, BGEVENT_RIGHT, OlsteetonUniScienceCenterComputer

	def_object_events
	object_event 11,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterScientistText, -1
	object_event  5,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterTwin1Text, -1
	object_event  5,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterTwin2Text, -1

OlsteetonUniScienceCenterScientistText:
	text "Needs dialogue"
	done

OlsteetonUniScienceCenterTwin1Text:
	text "Needs dialogue"
	done
OlsteetonUniScienceCenterTwin2Text:
	text "Needs dialogue"
	done
OlsteetonUniScienceCenterNurseText:
	text "#mon Nursing"
	line "Department"
	done

OlsteetonUniScienceCenterBookshelf1Text:
	text "Needs text"
	done

OlsteetonUniScienceCenterBookshelf2Text:
	text "Needs text"
	done

OlsteetonUniScienceCenterComputer:
	jumpthistext

	text "Needs text"
	done

OlsteetonUniScienceCenterLabText:
	text "Aquatic Lab"
	done