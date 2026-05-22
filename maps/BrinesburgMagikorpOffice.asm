BrinesburgMagikorpOffice_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, BRINESBURG, 16
	warp_event  5, 11, BRINESBURG, 16

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeSignText
	bg_event  2,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  3,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  3,  6, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  3,  7, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  6, 10, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText
	bg_event  3, 10, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText



	def_object_events
	object_event  5,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeReceptionistText, -1
	object_event  0,  1, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeOfficerText, -1
	object_event  5,  2, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeVeteranText, -1
	object_event  9, 10, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeSuperNerd1Text, -1
	object_event  9,  4, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficePIText, -1


BrinesburgMagikorpOfficeReceptionistText: ;unchanged text
	text "Welcome!"
	line "Feel free to look"

	para "around anywhere on"
	line "this floor."
	done

BrinesburgMagikorpOfficeOfficerText: ;unchanged text
	text "Sorry, but you can"
	line "only tour the"
	cont "ground floor."
	done

BrinesburgMagikorpOfficeSuperNerd1Text:
	text "Everyone works so"
	line "hard here."

	para "This is the best"
	line "job I've ever had!"
	done

BrinesburgMagikorpOfficeVeteranText:
	text "I've worked here"
	line "my whole career."

	para "I can't imagine"
	line "working anywhere"
	cont "else!"
	done

BrinesburgMagikorpOfficePIText:
	text "I love it here!"

	para "Best job"
	line "I've ever had!"
	done

BrinesburgMagikorpOfficeSignText:
	text "AUTHORIZED"
	line "PERSONNEL"
	cont "ONLY."
	done

BrinesburgMagikorpOfficeFileCabinetText:
	text "These file"
	line "cabinets are huge,"
	cont "and locked tight."

	para "They must contain"
	line "important files."
	done

BrinesburgMagikorpOfficePapersText:
	text "It says"
	line "Quarterly Reports"
	cont "at the top."
	done

BrinesburgMagikorpOfficeStatueText:
	text "It's a statue"
	line "of Magikarp."
	done
