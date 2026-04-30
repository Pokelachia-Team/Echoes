OlsteetonUniOfficePawpaw_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, OLSTEETON_UNI_OFFICE, 10
	warp_event  3,  5, OLSTEETON_UNI_OFFICE, 10

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPawpawSignpost1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPawpawSignpost2Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPawpawBookshelfText
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPawpawBookshelfText

	def_object_events

OlsteetonUniOfficeProfPawpawSignpost1Text:
	text "It's a diploma"
	line "of #mon"
	cont "Professorship."
	done

OlsteetonUniOfficeProfPawpawSignpost2Text:
	text "It's a picture of"
	line "Pawpaw in knee-"
	cont "deep water."
	done

OlsteetonUniOfficeProfPawpawBookshelfText:
	text "On Aquatic"
	line "#mon Biomes"
	cont "By Cecil Pawpaw"
	done
