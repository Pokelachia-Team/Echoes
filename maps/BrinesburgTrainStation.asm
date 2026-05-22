BrinesburgTrainStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17, 12, BRINESBURG, 13
	warp_event 17, 13, BRINESBURG, 14
	; warp_event  6,  5, SAFFRON_TRAIN_STATION, 4
	; warp_event 11,  5, SAFFRON_TRAIN_STATION, 3

	def_coord_events
	; coord_event 11,  6, 0, Script_ArriveFromSaffron

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BrinesburgTrainStationOfficerScript, -1
	object_event 11, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgTrainStationGentlemanText, EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
	object_event  6, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgTrainStationCooltrainerText, -1

	object_const_def
	const BrinesburgTrainStation_OFFICER

BrinesburgTrainStationOfficerScript:
	faceplayer
	opentext
	; checkevent EVENT_RESTORED_POWER_TO_KANTO
	; iftruefwd .MagnetTrainToSaffron
	jumpopenedtext BrinesburgTrainStationOfficerTheTrainHasntComeInText

; .MagnetTrainToSaffron:
; 	writetext BrinesburgTrainStationOfficerAreYouComingAboardText
; 	yesorno
; 	iffalse_jumpopenedtext BrinesburgTrainStationOfficerHopeToSeeYouAgainText
; 	checkkeyitem PASS
; 	iffalse_jumpopenedtext BrinesburgTrainStationOfficerYouDontHaveARailPassText
; 	writetext BrinesburgTrainStationOfficerRightThisWayText
; 	waitbutton
; 	closetext
; 	applymovement BrinesburgTrainStation_OFFICER, BrinesburgTrainStationOfficerApproachTrainDoorMovement
; 	applymovement PLAYER, BrinesburgTrainStationPlayerApproachAndEnterTrainMovement
; 	setval $0
; 	special Special_MagnetTrain
; 	warpcheck
; 	newloadmap MAPSETUP_TRAIN
; 	applyonemovement PLAYER, turn_head_down
; 	wait 36
; 	end

; Script_ArriveFromSaffron:
; 	applymovement BrinesburgTrainStation_OFFICER, BrinesburgTrainStationOfficerApproachTrainDoorMovement
; 	applymovement PLAYER, BrinesburgTrainStationPlayerLeaveTrainAndEnterStationMovement
; 	applymovement BrinesburgTrainStation_OFFICER, BrinesburgTrainStationOfficerReturnToBoardingGateMovement
; 	jumptext BrinesburgTrainStationOfficerArrivedInGoldenrodText


; BrinesburgTrainStationOfficerApproachTrainDoorMovement:
; 	step_up
; 	step_up
; 	step_right
; 	turn_head_left
; 	step_end

; BrinesburgTrainStationOfficerReturnToBoardingGateMovement:
; 	step_left
; 	step_down
; 	step_down
; 	step_end

; BrinesburgTrainStationPlayerApproachAndEnterTrainMovement:
; 	step_up
; 	step_up
; 	step_up
; 	step_left
; 	step_left
; 	step_left
; 	step_up
; 	step_up
; 	step_end

; BrinesburgTrainStationPlayerLeaveTrainAndEnterStationMovement:
; 	step_left
; 	step_left
; 	step_down
; 	step_down
; 	step_down
; 	step_down
; 	turn_head_up
; 	step_end

BrinesburgTrainStationOfficerTheTrainHasntComeInText:
	text "Needs dialogue"
	done

BrinesburgTrainStationCooltrainerText:
	text "Needs dialogue"
	done

BrinesburgTrainStationOfficerAreYouComingAboardText:
	text "Are you coming"
	line "aboard?"
	done

BrinesburgTrainStationOfficerRightThisWayText:
	text "May I see your"
	line "rail pass, please?"

	para "OK. Right this"
	line "way, please."
	done

BrinesburgTrainStationOfficerYouDontHaveARailPassText:
	text "Sorry. You don't"
	line "have a rail pass."
	done

BrinesburgTrainStationOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

BrinesburgTrainStationOfficerArrivedInGoldenrodText:
	text "We have arrived!"

	para "We hope to see you"
	line "again."
	done

BrinesburgTrainStationGentlemanText:
	text "Needs dialogue"
	done

BrinesburgTrainStationCooltrainerfText1:
	text "Needs dialogue"
	done

BrinesburgTrainStationCooltrainerfText2:
	text "Needs dialogue"
	done