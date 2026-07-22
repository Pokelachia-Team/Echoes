RiverfrontAptRoof_MapScriptHeader:
	def_scene_scripts
	scene_script RiverfrontAptRoofPsyduckScene, SCENE_RIVERFRONTAPTROOF_FOUND_PSYDUCK
	scene_script RiverfrontAptRoofNoopScene, SCENE_RIVERFRONTAPTROOF_NOOP

	def_callbacks

	def_warp_events
	warp_event 13,  1, RIVERFRONT_APT_5F, 2
	warp_event  8,  0, RIVERFRONT_APT_ELEVATOR, 1

	def_coord_events

	def_bg_events
	; bg_event  1,  1, BGEVENT_UP, PokeDollVendingMachine

	def_object_events
	object_event 9, 4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, PSYDUCK, -1, PAL_MON_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, AptRoofPsyduckScript, -1
	object_event 10, 4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, AptRoofPsyduckLadyScript, EVENT_APTROOF_FOUND_PSYDUCK
	pokemon_event  8,  4, DUCKLETT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, RiverfrontAptRoofDucklettText, -1
	pokemon_event 10,  3, DUCKLETT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, RiverfrontAptRoofDucklettText, -1
	pokemon_event  7,  3, DUCKLETT, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, RiverfrontAptRoofDucklettText, -1
	object_event  1,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RiverfrontAptRoofPokefanFText, -1
	object_event  6,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, RiverfrontAptRoofGrampsText, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, RiverfrontAptRoofGrannyText, -1
	pokemon_event  5,  5, ALAKAZAM, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_YELLOW, RiverfrontAptRoofAlakazamText, -1

	object_const_def
	const APTROOF_PSYDUCK
	const APTROOF_TEACHER

RiverfrontAptRoofPsyduckScene:
RiverfrontAptRoofNoopScene:
	end

AptRoofPsyduckScript:
	faceplayer
	opentext
	cry PSYDUCK
	checkevent EVENT_GOT_TM54_FALSE_SWIPE
	iftrue_jumpopenedtext RiverfrontAptRoofPsyduckText
	pause 15
	showtext RiverfrontAptRoofPsyduckText
	showemote EMOTE_QUESTION, PLAYER, 15
	showemote EMOTE_SHOCK, PLAYER, 15
	moveobject APTROOF_TEACHER, 13,2
	appear APTROOF_TEACHER
	applymovement APTROOF_TEACHER, AptRoofPsyduckMovement
	showemote EMOTE_HAPPY, APTROOF_TEACHER, 15
	turnobject PLAYER, RIGHT
	clearevent EVENT_APTROOF_FOUND_PSYDUCK
	setscene SCENE_RIVERFRONTAPTROOF_NOOP
	sjumpfwd .AptRoofPsyduckReward 
	end

.AptRoofPsyduckReward
	opentext
	writetext AptRoofPsyduckLadyFoundText
	promptbutton
	verbosegivetmhm TM_FALSE_SWIPE
	setevent EVENT_GOT_TM54_FALSE_SWIPE
	jumpthisopenedtext

AptRoofPsyduckLadyRewardText:
	text "It's False Swipe."

	para "It won't knock"
	line "out wild #mon,"

	para "so they'll be"
	line "easier to catch."

	para "It came in very"
	line "handy when I enco-"
	cont "untered my Lucy!"
	done

AptRoofPsyduckLadyScript:
	faceplayer
	opentext
	writetext AptRoofPsyduckLadyRewardText
	closetext
	end

AptRoofPsyduckMovement:
	step_down
	step_left
	step_left
	step_down
	turn_head_left
	step_end

; PokeDollVendingMachine:
; 	opentext
; 	writetext PokeDollVendingMachineText
; 	special PlaceMoneyTopRight
; .Start:
; 	loadmenu .MenuData
; 	verticalmenu
; 	closewindow
; 	ifequalfwd $1, .JigglypuffDoll
; 	ifequalfwd $2, .DittoDoll
; 	ifequalfwd $3, .MeowthDoll
; 	endtext

; .JigglypuffDoll:
; 	checkmoney YOUR_MONEY, 2400
; 	ifequalfwd HAVE_LESS, .NotEnoughMoney
; 	checkevent EVENT_DECO_JIGGLYPUFF_DOLL
; 	iftruefwd .AlreadyBought
; 	takemoney YOUR_MONEY, 2400
; 	setevent EVENT_DECO_JIGGLYPUFF_DOLL
; 	writetext BoughtJigglypuffDollText
; 	playsound SFX_TRANSACTION
; 	special PlaceMoneyTopRight
; 	waitbutton
; 	writetext JigglypuffDollSentText
; 	waitbutton
; 	sjump .Start

; .DittoDoll:
; 	checkmoney YOUR_MONEY, 2400
; 	ifequalfwd HAVE_LESS, .NotEnoughMoney
; 	checkevent EVENT_DECO_DITTO_DOLL
; 	iftruefwd .AlreadyBought
; 	takemoney YOUR_MONEY, 2400
; 	setevent EVENT_DECO_DITTO_DOLL
; 	writetext BoughtDittoDollText
; 	playsound SFX_TRANSACTION
; 	special PlaceMoneyTopRight
; 	waitbutton
; 	writetext DittoDollSentText
; 	waitbutton
; 	sjump .Start

; .MeowthDoll:
; 	checkmoney YOUR_MONEY, 2400
; 	ifequalfwd HAVE_LESS, .NotEnoughMoney
; 	checkevent EVENT_DECO_MEOWTH_DOLL
; 	iftruefwd .AlreadyBought
; 	takemoney YOUR_MONEY, 2400
; 	setevent EVENT_DECO_MEOWTH_DOLL
; 	writetext BoughtMeowthDollText
; 	playsound SFX_TRANSACTION
; 	special PlaceMoneyTopRight
; 	waitbutton
; 	writetext MeowthDollSentText
; 	waitbutton
; 	sjump .Start

; .NotEnoughMoney:
; 	writetext PokeDollVendingMachineNoMoneyText
; 	waitbutton
; 	sjump .Start

; .AlreadyBought:
; 	writetext PokeDollVendingMachineAlreadyBoughtText
; 	waitbutton
; 	sjump .Start

; .MenuData:
; 	db MENU_BACKUP_TILES
; 	menu_coords 0, 2, 19, 11
; 	dw .MenuData2
; 	db 1 ; default option

; .MenuData2:
; 	db $80 ; flags
; 	db 4 ; items
; 	db "Jigglypuff  ¥2400@"
; 	db "Ditto       ¥2400@"
; 	db "Meowth      ¥2400@"
; 	db "Cancel@"

AptRoofPsyduckLadyFoundText:
	text "Oh thank you!"

	para "I'm so glad that"
	line "Psyduck is safe!"

	para "Here, as promised!"
	done

RiverfrontAptRoofPokefanFText:
	text "I sometimes come"
	line "up to the rooftop"

	para "to take a break"
	line "from everything."
	done

RiverfrontAptRoofGrannyText:
	text "I don't know"
	line "where we would"

	para "be without"
	line "#mon."
	done

RiverfrontAptRoofGrampsText:
	text "Sometimes I"
	line "forget what's"

	para "going on,"
	line "but Alakazam"

	para "helps me"
	line "to remember."
	done

RiverfrontAptRoofAlakazamText:
	text "Alakazam:"
	line "Psshhakzm"
	done

RiverfrontAptRoofDucklettText:
	text "Ducklett: Duduck?"
	done

RiverfrontAptRoofPsyduckText:
	text "Lucy: Psyayay?"
	done

; PokeDollVendingMachineText:
; 	text "A vending machine"
; 	line "for #mon dolls!"
; 	done

; PokeDollVendingMachineNoMoneyText:
; 	text "It costs too much!"
; 	done

; PokeDollVendingMachineAlreadyBoughtText:
; 	text "It's a duplicate!"
; 	done

; BoughtJigglypuffDollText:
; 	text "<PLAYER> bought"
; 	line "Jigglypuff Doll."
; 	done

; JigglypuffDollSentText:
; 	text "Jigglypuff Doll"
; 	line "was sent home."
; 	done

; BoughtDittoDollText:
; 	text "<PLAYER> bought"
; 	line "Ditto Doll."
; 	done

; DittoDollSentText:
; 	text "Ditto Doll"
; 	line "was sent home."
; 	done

; BoughtMeowthDollText:
; 	text "<PLAYER> bought"
; 	line "Meowth Doll."
; 	done

; MeowthDollSentText:
; 	text "Meowth Doll"
; 	line "was sent home."
; 	done
