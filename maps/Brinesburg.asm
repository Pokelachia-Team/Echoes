Brinesburg_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 28, ROUTE_103_BRINESBURG_GATE, 3
	warp_event  6, 29, ROUTE_103_BRINESBURG_GATE, 4
	warp_event 53, 11, BRINESBURG_POKECENTER, 1
	warp_event 47, 19, BRINESBURG_MART, 1
	; warp_event 34, 19, BRINESBURG_GYM, 1
	; warp_event 57,  3, SALT_BRINE_CAVE, 1
	; warp_event  5,  5, BRINESBURG_POLLUTION_SPEECH_HOUSE, 1
	; warp_event 17,  1, BRINESBURG_INSERT_SPEECH_HOUSE, 1
	; warp_event 25,  3, BRINESBURG_SOMETHING_HOUSE, 1
	; warp_event 17,  7, BRINESBURG_SOMN_HOUSE, 1
	; warp_event  6, 28, BRINESBURG_ROUTE_103_GATE, 1
	; warp_event  6, 29, BRINESBURG_ROUTE_103_GATE, 2
	; warp_event 55, 30, BRINESBURG_ROUTE_105_GATE, 1
	; warp_event 55, 31, BRINESBURG_ROUTE_105_GATE, 2


	def_coord_events

	def_bg_events
	bg_event 19, 26, BGEVENT_JUMPTEXT, BrinesburgSignText
	bg_event 38, 19, BGEVENT_JUMPTEXT, BrinesburgGymSignText
	bg_event 44, 14, BGEVENT_JUMPTEXT, PokemonFanClubSignText
	bg_event 56,  4, BGEVENT_JUMPTEXT, BrinesburgDiglettsCaveSignText
	bg_event 48,  1, BGEVENT_JUMPTEXT, BrinesburgPortSignText
	bg_event  6, 27, BGEVENT_JUMPTEXT, BrinesburgBattleFactorySignText
	bg_event  3, 13, BGEVENT_JUMPTEXT, BrinesburgAdvancedTipsSignText
	bg_event  5, 24, BGEVENT_ITEM + FULL_HEAL, EVENT_BRINESBURG_HIDDEN_FULL_HEAL

	def_object_events
	object_event 34, 20, SPRITE_SAL, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSalText, -1
	object_event 27, 32, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgTeacherText, -1
	object_event 40, 21, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSuperNerdText, -1
	; object_event 33, 11, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BrinesburgSuperNerd2Script, -1
	object_event 13, 14, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSailorText, -1
	; cuttree_event  5, 22, EVENT_BRINESBURG_CITY_CUT_TREE

	object_const_def

; BrinesburgSnorlax:
; 	opentext
; 	special SpecialSnorlaxAwake
; 	iftruefwd .Awake
; 	jumpthisopenedtext

; 	text "Snorlax is snoring"
; 	line "peacefully…"
; 	done

; .Awake:
; 	writetext BrinesburgRadioNearSnorlaxText
; 	pause 15
; 	cry SNORLAX
; 	closetext
; 	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
; 	loadwildmon SNORLAX, 60
; 	startbattle
; 	disappear BRINESBURGCITY_BIG_SNORLAX
; 	setevent EVENT_FOUGHT_SNORLAX
; 	reloadmapafterbattle
; 	end

BrinesburgSalText:
	text "Sure would be"
	line "nice if my"
	cont "gym got designed."
	done

BrinesburgTeacherText:
	text "BRINESBURG Port is"
	line "Kanto's seaside"
	cont "gateway."

	para "Luxury liners from"
	line "around the world"
	cont "dock here."
	done

BrinesburgSuperNerdText:
	text "There are eight"
	line "official Gyms"
	cont "in Folkora."

	para "That big building"
	line "is Brinesburg's"
	cont "#mon Gym."
	done

BrinesburgSuperNerd2Text:
	text "The Battle Factory"
	line "is brand-new, but"

	para "trainers are al-"
	line "ready arriving"

	para "from distant"
	line "regions to take"
	cont "its challenge!"
	done

BrinesburgSailorText:
	text "Nothing beats"
	line "good sea air!"
	done

BrinesburgRadioNearSnorlaxText:
	text "The #gear was"
	line "placed near the"
	cont "sleeping Snorlax…"

	para "…"

	para "Snorlax woke up!"
	done

BrinesburgSignText:
	text "BRINESBURG City"

	para "The Port of"
	line "Exquisite Sunsnails"
	done

BrinesburgGymSignText:
	text "Brinesburg"
	line "#mon Gym"
	cont "Sal Von Brackish"

	para "The Culinary"
	line "Battler"
	done

PokemonFanClubSignText:
	text "#mon Fan Club"

	para "All #mon Fans"
	line "Welcome!"
	done

BrinesburgDiglettsCaveSignText:
	text "Diglett's Cave"
	done

BrinesburgPortSignText:
	text "BRINESBURG Port"
	line "Entrance"
	done

BrinesburgAdvancedTipsSignText:
	text "Advanced Tips!"

	para "Your Trainer Card"
	line "has room to show"
	cont "sixteen Badges!"
	done

BrinesburgBattleFactorySignText:
	text "Battle Factory"

	para "Win it All with"
	line "Rental #mon!"
	done
