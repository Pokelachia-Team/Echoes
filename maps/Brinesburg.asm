Brinesburg_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 28, ROUTE_103_BRINESBURG_GATE, 3
	warp_event  6, 29, ROUTE_103_BRINESBURG_GATE, 4
	warp_event 53, 11, BRINESBURG_POKECENTER, 1
	warp_event 47, 19, BRINESBURG_MART, 1
	warp_event 34, 19, BRINESBURG_GYM, 2
	warp_event 57,  3, SALT_BRINE_CAVE, 1
	warp_event 11, 23, BRINESBURG_POLLUTION_SPEECH_HOUSE, 1
	warp_event 45, 33, BRINESBURG_NICKNAME_SPEECH_HOUSE, 1
	warp_event 19,  9, BRINESBURG_PP_SPEECH_HOUSE, 1
	warp_event 27,  3, BRINESBURG_DEBRITE_TRADE_HOUSE, 1
	warp_event  9,  3, BRINESBURG_FEUD_LEFT_HOUSE, 1
	warp_event 19,  3, BRINESBURG_FEUD_RIGHT_HOUSE, 1
	warp_event  6, 12, BRINESBURG_TRAIN_STATION, 1
	warp_event  6, 13, BRINESBURG_TRAIN_STATION, 2
	warp_event 45, 13, BRINESBURG_SALT_SHOP, 1
	warp_event 55, 21, BRINESBURG_MAGIKORP_OFFICE, 1
	warp_event 55, 30, BRINESBURG_ROUTE_105_GATE, 1
	warp_event 55, 31, BRINESBURG_ROUTE_105_GATE, 2


	def_coord_events

	def_bg_events
	bg_event 19, 26, BGEVENT_JUMPTEXT, BrinesburgSignText
	bg_event 38, 19, BGEVENT_JUMPTEXT, BrinesburgGymSignText
	bg_event 44, 14, BGEVENT_JUMPTEXT, SaltShopSignText
	bg_event 56,  4, BGEVENT_JUMPTEXT, BrinesburgSaltBrineCaveSignText
	bg_event 48,  1, BGEVENT_JUMPTEXT, BrinesburgRoute104SignText
	bg_event  6, 27, BGEVENT_JUMPTEXT, BrinesburgGateSignText
	bg_event 13, 28, BGEVENT_JUMPTEXT, BrinesburgPotholeText
	bg_event 33, 30, BGEVENT_JUMPTEXT, BrinesburgPotholeText
	bg_event 23,  8, BGEVENT_JUMPTEXT, BrinesburgPotholeText
	bg_event 51,  8, BGEVENT_JUMPTEXT, BrinesburgPotholeText
	bg_event 55, 14, BGEVENT_JUMPTEXT, BrinesburgPotholeText
	bg_event  7, 11, BGEVENT_JUMPTEXT, BrinesburgTrainStationSignText
	bg_event 39, 17, BGEVENT_JUMPTEXT, BrinesburgAdvancedTipsSignText
	bg_event 55, 29, BGEVENT_JUMPTEXT, BrinesburgRoute105SignText
	bg_event 22, 33, BGEVENT_JUMPTEXT, BrinesburgGrandOpeningText
	bg_event 53, 21, BGEVENT_JUMPTEXT, BrinesburgMagikorpText
	bg_event  5, 24, BGEVENT_ITEM + FULL_HEAL, EVENT_BRINESBURG_HIDDEN_FULL_HEAL

	def_object_events
	object_event 27, 32, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgTeacherText, -1
	object_event 40, 21, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSuperNerdText, -1
	object_event 29, 11, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSailorText, -1
	object_event 31, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgFisherText, -1
	object_event 18, 34, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgCoolDudeText, -1
	object_event 19, 34, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgPokemaniacText, -1
	object_event 20, 34, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgPokemaniacText, -1
	object_event 16, 14, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgSailorText, -1
	object_event 44,  1, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgConstructionText, -1
	object_event 47,  1, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 3, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgConstructionText, -1
	pokemon_event 45,  1, TIMBURR, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BROWN, BrinesburgTimburrText, -1
	pokemon_event 46,  1, GURDURR, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BROWN, BrinesburgGurdurrText, -1



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

BrinesburgTeacherText:
	text "Needs dialogue"
	done

BrinesburgSuperNerdText:
	text "There are eight"
	line "official Gyms"
	cont "in Folkora."

	para "That big building"
	line "is Brinesburg's"
	cont "#mon Gym."
	done

BrinesburgSailorText:
	text "Nothing beats"
	line "good river air!"
	done

BrinesburgFisherText:
	text "Needs dialogue"
	done

BrinesburgCoolDudeText:
	text "I've been camped"
	line "here for 3 days."

	para "No way am"
	line "I moving now."
	done

BrinesburgPokemaniacText:
	text "Hey! No cutting!"
	done

BrinesburgSignText:
	text "Brinesburg"

	para "The city of"
	line "salt...idk man"
	done

BrinesburgConstructionText:
	text "The road north"
	line "is closed for"
	cont "construction."
	done

BrinesburgTimburrText:
	text "Timburrrr"
	done

BrinesburgGurdurrText:
	text "GURRR"
	done

BrinesburgGymSignText:
	text "Brinesburg"
	line "#mon Gym"
	cont "Sal Von Brackish"

	para "The Culinary"
	line "Battler"
	done

SaltShopSignText:
	text "Von Brackish"
	line "Artisinal Salts"
	cont "Est. 1955"
	done

BrinesburgSaltBrineCaveSignText:
	text "Salt Brine Cave"
	done

BrinesburgRoute104SignText:
	text "NORTH:Route 104"
	line "SOUTH: Brinesburg"
	done

BrinesburgRoute105SignText:
	text "EAST:Route 105"
	line "WEST: Brinesburg"
	done

BrinesburgAdvancedTipsSignText:
	text "Advanced Tips!"

	para "Your Trainer Card"
	line "has room to show"
	cont "sixteen Badges!"
	done

BrinesburgGateSignText:
	text "WEST: Route 103"
	line "EAST: Brinesburg"
	done

BrinesburgTrainStationSignText:
	text "Brinesburg"
	line "Train Station"
	done

BrinesburgPotholeText:
	text "It's a pothole."
	done

BrinesburgGrandOpeningText:
	text "MagiKorp Museum"
	line "Grand Opening"
	cont "Soon!"
	done

	BrinesburgMagikorpText:
	text "MagiKorp Office"
	line "Brinesburg"
	done