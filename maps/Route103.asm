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
	object_event 29, 25, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermFinch, -1
	object_event 16, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJoey, -1
	object_event 16,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route103YoungsterText, -1
	fruittree_event 35, 17, FRUITTREE_ROUTE_103, ORAN_BERRY, PAL_NPC_BLUE
	itemball_event  8, 18, WHITE_HERB, 1, EVENT_ROUTE_103_WHITE_HERB


	object_const_def
	const ROUTE103_COOLTRAINER_M


; Route103CheckMomCall:
; 	checkevent EVENT_TALKED_TO_MOM_AFTER_PROF_DOSSIER_QUEST
; 	iffalsefwd .DoMomCall
; 	endcallback

; .DoMomCall:
; 	specialphonecall SPECIALCALL_WORRIED
; 	endcallback

TrainerCooltrainermFinch:
	trainer 0, 0, EVENT_INTRODUCED_ROUTE_LEADERS, .IntroText, 0, 0, .Script

.Script:
	endifjustbattled
	checkevent EVENT_GOT_AIR_BALLOON_FROM_ROUTE_31_LEADER
	iftrue_jumptextfaceplayer .AfterText2
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_FINCH
	iftruefwd .Beaten
	checkevent EVENT_BEAT_YOUNGSTER_JOEY
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_YOUNGSTER_MIKEY
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_BUG_CATCHER_DON
	iffalse_jumpopenedtext .IntroText
	checkevent EVENT_BEAT_SCHOOLGIRL_MOLLY
	iffalse_jumpopenedtext .IntroText
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked ROUTE103_COOLTRAINER_M
	loadtrainer COOLTRAINERM, FINCH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_FINCH
	opentext
.Beaten:
	writetext .AfterText1
	promptbutton
	verbosegiveitem AIR_BALLOON
	iffalse_endtext
	setevent EVENT_GOT_AIR_BALLOON_FROM_ROUTE_31_LEADER
	jumpthisopenedtext

.AfterText2: ;largely unchanged text
	text "You saw the effect"
	line "of an Air Balloon"
	cont "in our battle."

	para "You may find other"
	line "trainers like me"
	cont "wandering Folkora."

	para "Searching for"
	line "strength."

	para "You would do well"
	line "to challenge them!"
	done

.IntroText: ;largely unchanged text
	text "I am a trainer who"
	line "uses Air Balloons"
	cont "in battle."

	para "I want to be"
	line "swayed by your"
	cont "strength…"

	para "If you can defeat"
	line "every trainer on"
	cont "Route 102 and 103,"
	cont "then come face me."
	done

.QuestionText: ;unchanged text
	text "So you've defeated"
	line "all of the train-"
	cont "ers here!"

	para "Then you're fit to"
	line "challenge me!"

	para "Shall we battle?"
	done

.RefusedText: ;unchanged text
	text "You don't want to"
	line "test your strength"
	cont "with mine?"

	para "I'll give you my"
	line "signature item if"
	cont "you win…"
	done

.SeenText: ;unchanged text
	text "Well met! I will"
	line "stand before you"

	para "as an Air Balloon"
	line "user!"
	done

.BeatenText: ;unchanged text
	text "You've brought me"
	line "to the ground…"
	done

.AfterText1: ;unchanged text
	text "A fine battle!"
	line "You are a rising"

	para "star among train-"
	line "ers!"

	para "Here is proof of"
	line "our battle."
	cont "An Air Balloon!"

	para "Take it, my"
	line "strong friend!"
	done

TrainerYoungsterJoey:
	generictrainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoey1SeenText, YoungsterJoey1BeatenText ;, 0, .Script

; .Script:
; 	loadvar VAR_CALLERID, PHONE_YOUNGSTER_JOEY
; 	opentext
; 	checkflag ENGINE_JOEY_READY_FOR_REMATCH
; 	iftruefwd .Rematch
; 	checkcellnum PHONE_YOUNGSTER_JOEY
; 	iftruefwd .NumberAccepted
; 	checkevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
; 	iftruefwd .AskAgain
; 	writetext YoungsterJoey1AfterText
; 	promptbutton
; 	setevent EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
; 	callstd asknumber1m
; 	sjumpfwd .RequestNumber

; .AskAgain:
; 	callstd asknumber2m
; .RequestNumber:
; 	askforphonenumber PHONE_YOUNGSTER_JOEY
; 	ifequalfwd $1, .PhoneFull
; 	ifequalfwd $2, .NumberDeclined
; 	gettrainername YOUNGSTER, JOEY1, STRING_BUFFER_3
; 	callstd registerednumberm
; 	jumpstd numberacceptedm

; .Rematch:
; 	callstd rematchm
; 	winlosstext YoungsterJoey1BeatenText, 0
; 	readmem wJoeyFightCount
; 	ifequalfwd 4, .Fight4
; 	ifequalfwd 3, .Fight3
; 	ifequalfwd 2, .Fight2
; 	ifequalfwd 1, .Fight1
; 	ifequalfwd 0, .LoadFight0
; .Fight4:
; 	checkevent EVENT_BEAT_ELITE_FOUR
; 	iftruefwd .LoadFight4
; .Fight3:
; 	checkevent EVENT_CLEARED_RADIO_TOWER
; 	iftruefwd .LoadFight3
; .Fight2:
; 	checkflag ENGINE_FLYPOINT_OLIVINE
; 	iftruefwd .LoadFight2
; .Fight1:
; 	checkflag ENGINE_FLYPOINT_GOLDENROD
; 	iftruefwd .LoadFight1
; .LoadFight0:
; 	loadtrainer YOUNGSTER, JOEY1
; 	startbattle
; 	reloadmapafterbattle
; 	loadmem wJoeyFightCount, 1
; 	clearflag ENGINE_JOEY_READY_FOR_REMATCH
; 	end

; .LoadFight1:
; 	loadtrainer YOUNGSTER, JOEY2
; 	startbattle
; 	reloadmapafterbattle
; 	loadmem wJoeyFightCount, 2
; 	clearflag ENGINE_JOEY_READY_FOR_REMATCH
; 	end

; .LoadFight2:
; 	loadtrainer YOUNGSTER, JOEY3
; 	startbattle
; 	reloadmapafterbattle
; 	loadmem wJoeyFightCount, 3
; 	clearflag ENGINE_JOEY_READY_FOR_REMATCH
; 	end

; .LoadFight3:
; 	loadtrainer YOUNGSTER, JOEY4
; 	startbattle
; 	reloadmapafterbattle
; 	loadmem wJoeyFightCount, 4
; 	clearflag ENGINE_JOEY_READY_FOR_REMATCH
; 	end

; .LoadFight4:
; 	loadtrainer YOUNGSTER, JOEY5
; 	startbattle
; 	reloadmapafterbattle
; 	clearflag ENGINE_JOEY_READY_FOR_REMATCH
; 	checkevent EVENT_JOEY_HP_UP
; 	iftruefwd .GiveHPUp
; 	checkevent EVENT_GOT_HP_UP_FROM_JOEY
; 	iftruefwd .done
; 	callstd rematchgiftm
; 	verbosegiveitem HP_UP
; 	iffalsefwd .PackFull
; 	setevent EVENT_GOT_HP_UP_FROM_JOEY
; 	jumpstd numberacceptedm

; .done
; 	end

; .GiveHPUp:
; 	opentext
; 	writetext YoungsterJoeyText_GiveHPUpAfterBattle
; 	waitbutton
; 	verbosegiveitem HP_UP
; 	iffalsefwd .PackFull
; 	clearevent EVENT_JOEY_HP_UP
; 	setevent EVENT_GOT_HP_UP_FROM_JOEY
; 	jumpstd numberacceptedm

; .NumberAccepted:
; 	jumpstd numberacceptedm

; .NumberDeclined:
; 	jumpstd numberdeclinedm

; .PhoneFull:
; 	jumpstd phonefullm

; .PackFull:
; 	setevent EVENT_JOEY_HP_UP
; 	jumpstd packfullm

YoungsterJoey1SeenText:
	text "I just lost, so"
	line "I'm trying to find"
	cont "more #mon."

	para "Wait! You look"
	line "weak! Come on,"
	cont "let's battle!"
	done

YoungsterJoey1BeatenText:
	text "Ack! I lost again!"
	line "Doggone it!"
	done

YoungsterJoey1AfterText:
	text "Do I have to have"
	line "more #mon in"

	para "order to battle"
	line "better?"

	para "No! I'm sticking"
	line "with this one no"
	cont "matter what!"
	done

Route103YoungsterText: ;largely unchanged text
	text "I found a good"
	line "#mon in"
	cont "Echoing Cave."

	para "I'm going to raise"
	line "it to take on"
	cont "Sal."

	para "He's the leader of"
	line "Brinesburg's Gym."
	done

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
