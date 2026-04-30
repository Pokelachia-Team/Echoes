OlsteetonUniOfficeTA_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, OLSTEETON_UNI_OFFICE, 12
	warp_event  6,  7, OLSTEETON_UNI_OFFICE, 12

	def_coord_events

	def_bg_events
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABlackboardText
	bg_event  7,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABlackboardText
	bg_event  8,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf3Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf1Text
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeTABookshelf2Text

	def_object_events
	object_event  6,  2, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTABlancheText, -1
	object_event 10,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTATeacherText, -1
	object_event  7,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTAYoungsterText, -1
	object_event 10,  4, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTAChildText, -1
	object_event  6,  4, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeTALadyText, -1
	; object_event  1,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlsteetonUniOfficeTACooltrainermScript, -1

OlsteetonUniOfficeTABlancheText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeTATeacherText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeTAYoungsterText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeTAChildText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeTALadyText:
	text "Needs dialogue"
	done

; OlsteetonUniOfficeTACooltrainermScript:
; 	showtext .Text1
; 	showtextfaceplayer .Text2
; 	turnobject LAST_TALKED, UP
; 	end

; .Text1: ; text > text
; 	text "…Zzz…"
; 	line "Aah!"
; 	done

; .Text2:
; 	text "Ahem."

; 	para "Sorry about that--"
; 	line "you startled me."

; 	para "I stayed up late"
; 	line "to finish an"

; 	para "assignment, so now"
; 	line "I'm exhausted."
; 	done

OlsteetonUniOfficeTABlackboardText:
	text "Needs text"
	done

OlsteetonUniOfficeTABookshelf1Text:
	text "It's a book about"
	done

OlsteetonUniOfficeTABookshelf2Text:
	text "It's a book of"
	done

OlsteetonUniOfficeTABookshelf3Text:
	text "It's a book"
	done