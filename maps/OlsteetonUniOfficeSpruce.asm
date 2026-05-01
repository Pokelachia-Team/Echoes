OlsteetonUniOfficeSpruce_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  5, OLSTEETON_UNI_OFFICE, 8
	warp_event  3,  5, OLSTEETON_UNI_OFFICE, 8

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfSpruceSignpost1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfSpruceSignpost2Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfSpruceBookshelfText
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfSpruceBookshelfText

	def_object_events
	object_event  4,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, OlsteetonUniOfficeProfSpruceBookText, -1

; OlsteetonUniOfficeProfSpruceChildScript:
; 	checkevent EVENT_GOT_RAGECANDYBAR_IN_UNIVERSITY
; 	iftrue_jumptextfaceplayer .Text2
; 	faceplayer
; 	opentext
; 	writetext .Text1
; 	promptbutton
; 	verbosegiveitem RAGECANDYBAR
; 	iffalse_endtext
; 	setevent EVENT_GOT_RAGECANDYBAR_IN_UNIVERSITY
; 	jumpthisopenedtext

; .Text2:
; 	text "I'll just buy some"
; 	line "ramen in the cafe-"
; 	cont "teria."
; 	done

; .Text1:
; 	text "I was told there"
; 	line "would be free"
; 	cont "pizza here!"

; 	para "Where is it?"

; 	para "I'm so ANGRY!"

; 	para "…Maybe I should"
; 	line "quit snacking on"
; if DEF(FAITHFUL)
; 	cont "RageCandyBars."
; else
; 	cont "Cakes of Rage."
; endc

; 	para "You can have this"
; 	line "one."
; 	done


OlsteetonUniOfficeProfSpruceSignpost1Text:
	text "It's a timeline"
	line "depicting various"
	cont "historical events."
	done

OlsteetonUniOfficeProfSpruceSignpost2Text:
	text "It's a picture"
	line "of Prof. Spruce"

	para "at a #mon"
	line "Prof. conference."
	done

OlsteetonUniOfficeProfSpruceBookshelfText:
	text "The Great War"
	line "of Kalos"

	para "By Tom Spruce"
	done

OlsteetonUniOfficeProfSpruceBookText:
	text "Encounters with"
	line "Legendary #mon"

	para "By Tom Spruce"
	done
