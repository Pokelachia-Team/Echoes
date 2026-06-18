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
	bg_event 10,  0, BGEVENT_READ, OlsteetonUniScienceCenterLabText
	bg_event  8,  4, BGEVENT_JUMPTEXT, OlsteetonUniScienceCenterComputer

	def_object_events
	object_event 11,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterScientistText, -1
	object_event  5,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterReceiptionistText, -1
	object_event  5,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniScienceCenterSchoolgirlText, -1

OlsteetonUniScienceCenterScientistText:
	text "Needs dialogue"
	done

OlsteetonUniScienceCenterReceiptionistText:
	text "Needs dialogue"
	done

OlsteetonUniScienceCenterSchoolgirlText:
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
	text "An e-learning"
	line "course window is"
	cont "on screen."
	done

OlsteetonUniScienceCenterLabText:
	text "Aquatic Lab"
	done