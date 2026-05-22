Route103_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  2, OLSTEETON_ROUTE_103_GATE, 3
	warp_event  6,  3, OLSTEETON_ROUTE_103_GATE, 4
	warp_event 53, 30, ROUTE_103_BRINESBURG_GATE, 1
	warp_event 53, 31, ROUTE_103_BRINESBURG_GATE, 2

	def_coord_events


	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPTEXT, OlsteetonRoute103GateSignText
	bg_event 19,  1, BGEVENT_JUMPTEXT, UniSignText
	bg_event 53, 29, BGEVENT_JUMPTEXT, BrinesburgGateSignText
	; bg_event  9, 13, BGEVENT_JUMPTEXT, Route102TrainerTips1Text
	; bg_event 27, 14, BGEVENT_JUMPTEXT, Route102AdvancedTips1Text
	; bg_event  5,  0, BGEVENT_JUMPTEXT, Route102AdvancedTips2Text
	; bg_event 30, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36
	; bg_event 31, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36

	def_object_events
	; object_event 14, 10, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSchoolgirlMolly, -1
	; fruittree_event 26, 14, FRUITTREE_ROUTE_36, RAWST_BERRY, PAL_NPC_TEAL
	; itemball_event 12,  9, GREAT_BALL, 1, EVENT_ROUTE_102_GREAT_BALL
	; itemball_event 25, 17, REPEL, 1, EVENT_ROUTE_102_REPEL
	; object_event 50,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSchoolgirlMolly, -1


	object_const_def


UniSignText:
	text "NORTH:"
	line "Bouffalant Academy"
	done

OlsteetonRoute103GateSignText:
	text "WEST: Olsteeton"
	line "EAST: Route 103"
	done

BrinesburgRoute103GateSignText:
	text "EAST: Brinesburg"
	line "WEST: Route 103"
	done

; Route102TrainerTips1Text:
; 	text "Trainer Tips"

; 	para "#mon stats"
; 	line "vary--even within"
; 	cont "the same species."

; 	para "Their stats may be"
; 	line "similar at first."

; 	para "However, differ-"
; 	line "ences will become"

; 	para "pronounced as the"
; 	line "#mon grow."
; 	done
; Route102AdvancedTips1Text:
; 	text "Trainer Tips!"

; 	para "Berries can be"
; 	line "used for a"
; 	cont "wide variety of"

; 	para "effect, and"
; 	line "#mon love them!"
; 	cont "the Options!"
; 	done

; Route102AdvancedTips2Text:
; 	text "Advanced Tips!"

; 	para "Treating your"
; 	line "#mon with hair-"
; 	cont "cuts, blessings or"

; 	para "massages can make"
; 	line "them help you out"

; 	para "in battles due to"
; 	line "their affection!"
; 	done
