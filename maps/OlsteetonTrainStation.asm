OlsteetonTrainStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17, 12, OLSTEETON, 14
	warp_event 17, 13, OLSTEETON, 15
	; warp_event  6,  5, SAFFRON_TRAIN_STATION, 4
	; warp_event 11,  5, SAFFRON_TRAIN_STATION, 3

	def_coord_events
	; coord_event 11,  6, 0, Script_ArriveFromSaffron

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlsteetonTrainStationOfficerScript, -1
	object_event  6, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_ELUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonTrainStationLassText, -1
	object_event  9, 14, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonTrainStationLadyText, -1
	object_event  9, 14, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonTrainStationSchoolboyText, -1


	object_const_def
	const OlsteetonTRAINSTATION_OFFICER

OlsteetonTrainStationOfficerScript:
	faceplayer
	opentext
	; checkevent EVENT_RESTORED_POWER_TO_KANTO
	; iftruefwd .MagnetTrainToSaffron
	jumpopenedtext OlsteetonTrainStationOfficerTheTrainHasntComeInText

; .MagnetTrainToSaffron:
; 	writetext OlsteetonTrainStationOfficerAreYouComingAboardText
; 	yesorno
; 	iffalse_jumpopenedtext OlsteetonTrainStationOfficerHopeToSeeYouAgainText
; 	checkkeyitem PASS
; 	iffalse_jumpopenedtext OlsteetonTrainStationOfficerYouDontHaveARailPassText
; 	writetext OlsteetonTrainStationOfficerRightThisWayText
; 	waitbutton
; 	closetext
; 	applymovement OlsteetonTRAINSTATION_OFFICER, OlsteetonTrainStationOfficerApproachTrainDoorMovement
; 	applymovement PLAYER, OlsteetonTrainStationPlayerApproachAndEnterTrainMovement
; 	setval $0
; 	special Special_MagnetTrain
; 	warpcheck
; 	newloadmap MAPSETUP_TRAIN
; 	applyonemovement PLAYER, turn_head_down
; 	wait 36
; 	end

; Script_ArriveFromSaffron:
; 	applymovement OlsteetonTRAINSTATION_OFFICER, OlsteetonTrainStationOfficerApproachTrainDoorMovement
; 	applymovement PLAYER, OlsteetonTrainStationPlayerLeaveTrainAndEnterStationMovement
; 	applymovement OlsteetonTRAINSTATION_OFFICER, OlsteetonTrainStationOfficerReturnToBoardingGateMovement
; 	jumptext OlsteetonTrainStationOfficerArrivedInGoldenrodText


; OlsteetonTrainStationOfficerApproachTrainDoorMovement:
; 	step_up
; 	step_up
; 	step_right
; 	turn_head_left
; 	step_end

; OlsteetonTrainStationOfficerReturnToBoardingGateMovement:
; 	step_left
; 	step_down
; 	step_down
; 	step_end

; OlsteetonTrainStationPlayerApproachAndEnterTrainMovement:
; 	step_up
; 	step_up
; 	step_up
; 	step_left
; 	step_left
; 	step_left
; 	step_up
; 	step_up
; 	step_end

; OlsteetonTrainStationPlayerLeaveTrainAndEnterStationMovement:
; 	step_left
; 	step_left
; 	step_down
; 	step_down
; 	step_down
; 	step_down
; 	turn_head_up
; 	step_end

OlsteetonTrainStationOfficerTheTrainHasntComeInText:
	text "The train isn't"
	line "running right now."

	para "Normally, you'd be"
	line "able to ride to"

	para "any town with a"
	line "train station with"
	cont "a rail pass."
	done

OlsteetonTrainStationOfficerAreYouComingAboardText:
	text "Are you coming"
	line "aboard?"
	done

OlsteetonTrainStationOfficerRightThisWayText:
	text "May I see your"
	line "rail pass, please?"

	para "OK. Right this"
	line "way, please."
	done

OlsteetonTrainStationOfficerYouDontHaveARailPassText:
	text "Sorry. You don't"
	line "have a rail pass."
	done

OlsteetonTrainStationOfficerHopeToSeeYouAgainText:
	text "We hope to see you"
	line "again!"
	done

OlsteetonTrainStationOfficerArrivedInGoldenrodText:
	text "We have arrived!"

	para "We hope to see you"
	line "again."
	done

OlsteetonTrainStationLassText:
	text "I called my friend"
	line "in Brinesburg, and"

	para "he said there was"
	line "a #mon blocking"
	cont "the tracks!"
	done

OlsteetonTrainStationLadyText:
	text "My son is so"
	line "worried that the"
	cont "train won't come."

	para "He loves trains"
	line "so very much."
	done

OlsteetonTrainStationSchoolboyText:
	text "Did you know that"
	line "locomotives weigh"
	cont "432,000 lbs??"
	
	para "That's the same as"
	line "653 hippowdons!"

	para "Ooh ooh, or did"
	line "you know that"

	para "the fastest train"
	line "in the world"

	para "connects the Johto"
	line "and Kanto regions"

	para "and it doesn't"
	line "use a steam"
	cont "engine!"
	done


