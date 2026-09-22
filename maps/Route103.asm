Route103_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_ROUTE_103_NOOP
	scene_const SCENE_ROUTE_103_ASHER_BATTLE

	def_callbacks

	def_warp_events
	warp_event  6,  2, OLSTEETON_ROUTE_103_GATE, 3
	warp_event  6,  3, OLSTEETON_ROUTE_103_GATE, 4
	warp_event 53, 30, ROUTE_103_BRINESBURG_GATE, 1
	warp_event 53, 31, ROUTE_103_BRINESBURG_GATE, 2

	def_coord_events
	coord_event 29,  28, SCENE_ROUTE_103_ASHER_BATTLE, Route103AsherBattleScene



	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPTEXT, OlsteetonRoute103GateSignText
	bg_event 19,  1, BGEVENT_JUMPTEXT, UniSignText
	bg_event 53, 29, BGEVENT_JUMPTEXT, BrinesburgGateSignText
	; bg_event 30, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36
	; bg_event 31, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36

	def_object_events
	object_event 23,  7, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermFinch, -1
	object_event 29, 25, SPRITE_ASHER, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, ROUTE_103_RIVAL_BATTLE
	pokemon_event 23, 22, AUGUROTH, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_RED, ClearText, EVENT_ROUTE_103_AUGUROTH_ENCOUNTER
	object_event 30, 32, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Route103ElderScript, -1
	object_event 16, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJoey, -1
	object_event 16,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route103YoungsterText, -1
	fruittree_event 35, 17, FRUITTREE_ROUTE_103, ORAN_BERRY, PAL_NPC_BLUE
	itemball_event 11, 27, WHITE_HERB, 1, EVENT_ROUTE_103_WHITE_HERB
	cuttree_event 28,  31, EVENT_ROUTE_103_CUT_TREE_1
	cuttree_event 29, 31, EVENT_ROUTE_103_CUT_TREE_2



	object_const_def
	const ROUTE103_COOLTRAINER_M
	const ROUTE103_ASHER
	const ROUTE103_AUGUROTH
	const ROUTE103_ELDER


; Route103CheckMomCall:
; 	checkevent EVENT_TALKED_TO_MOM_AFTER_PROF_DOSSIER_QUEST
; 	iffalsefwd .DoMomCall
; 	endcallback

; .DoMomCall:
; 	specialphonecall SPECIALCALL_WORRIED
; 	endcallback

Route103AsherBattleScene:
	special Special_FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE103_ASHER, 15
	turnobject ROUTE103_ASHER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	showtext .Text1
	applymovement PLAYER, PlayerWalktoAsherMovement
	turnobject ROUTE103_ASHER, LEFT
	showtext .Text2
	winlosstext .WinText, .LossText
	loadtrainer ASHER1, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special Special_FadeOutMusic
	faceplayer
	opentext
	writetext .AfterText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	disappear ROUTE103_ASHER
	setevent ROUTE_103_RIVAL_BATTLE
	reloadmap
	special Special_ReloadSpritesNoPalettes
	; setflag ENGINE_RED_IN_MOUNT_SILVER
	pause 15
	special Special_FadeInQuickly
	pause 30
	clearevent EVENT_ROUTE_103_AUGUROTH_ENCOUNTER
	playmapmusic
	sjumpfwd Route103AugurothScript

.Text1: 
	text "So, you decided to"
	line "show up after all?"
	done

.Text2: 
	text "I will prove to"
	line "you and everyone"

	para "that bug #mon"
	line "are no joke!"
	done

.WinText:
	text "Hmph. This"
	line "is unbelievable."
	done

.LossText:
	text "Hah, I knew"
	line "you were weak."
	done

.AfterText:
	text "Ok. Fine. You won."

	para "It doesn't mean"
	line "that you're better"
	cont "than me, and I"

	para "intend to prove it"
	line "tenfold when next"
	cont "we meet."
	done

Route103AugurothScript:
	special Special_FadeOutMusic
	appear ROUTE103_AUGUROTH
	applyonemovement ROUTE103_AUGUROTH, step_right
	cry AUGUROTH
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, UP
	pause 15
	playsound SFX_WARP_FROM
	waitsfx
	applymovement ROUTE103_AUGUROTH, Route103AugurothMovement
	disappear ROUTE103_AUGUROTH
	pause 10
	playmapmusic
	setscene SCENE_ROUTE_103_NOOP
	setevent EVENT_ROUTE_103_AUGUROTH_ENCOUNTER
	sjumpfwd Route103ElderTrigger
Route103ElderTrigger:
	disappear ROUTE103_ELDER
	moveobject ROUTE103_ELDER, 29, 30
	appear ROUTE103_ELDER
	applymovement ROUTE103_ELDER, Route103ElderMovement
	showemote EMOTE_SHOCK, ROUTE103_ELDER, 15
	turnobject PLAYER, RIGHT
	showemote EMOTE_QUESTION, ROUTE103_ELDER, 15
	showtext Text_DidYouSee
	showtext Text_LegendaryOmen
	setscene SCENE_ROUTE_103_NOOP
	pause 15
	specialphonecall SPECIALCALL_WORRIED ;mom calls to end demo
	special RestartMapMusic
	end

PlayerWalktoAsherMovement:
	step_up
	step_up
	step_left
	step_up
	turn_head_right
	step_end

Route103AugurothMovement:
	fix_facing
	step_right
	step_right
	fast_slide_step_right
	fast_slide_step_right
	fast_slide_step_right
	fast_slide_step_right
	fast_slide_step_up
	fast_slide_step_up
	remove_fixed_facing
	step_end

Route103ElderMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

Route103ElderScript:
	checkevent ROUTE_103_RIVAL_BATTLE
	iftrue_jumptextfaceplayer Text_RememberOmen
	jumptextfaceplayer Text_CutTrees

Text_RememberOmen:
	text "That #mon..."
	line "It hasn't been"
	cont "seen for 50 years."

	para "I wonder what"
	line "would cause it to"
	cont "return now..."
	done

Text_CutTrees:
	text "These trees can be"
	line "cut down if your"

	para "#mon knows a"
	line "special move."
	done


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


Text_DidYouSee:
	text "Did you see that?!"
	line "I can't believe"
	cont "my eyes!"

	para "I thought it was"
	line "a myth, and if"

	para "you hadn't seen it"
	line "too, I surely"

	para "would assume it"
	line "was just my old"
	cont "age gettin' to me."
	done

Text_LegendaryOmen:
	text "It  was rumored to"
	line "have appeared a"

	para "few times when I "
	line "was a young man."

	para "People said it was"
	line "an omen of mis-"
	cont "fortune..."

	para "Others said it"
	line "outright caused"
	cont "disasters..."

	para "Either way, its"
	line "reappearance now"
	cont "cannot be good..."

	para "Be careful out"
	line "there, young'n..."
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
