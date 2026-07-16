OlsteetonAbandonedMill_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, OLSTEETON_ABANDONED_MILL_OUTSIDE, 1
	warp_event  9, 17, OLSTEETON_ABANDONED_MILL_OUTSIDE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 18, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, ObjectEvent, 0, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	itemball_event  0, 12, STARDUST, 1, EVENT_OLSTEETON_ABANDONED_MILL_STARDUST
	itemball_event 16, 13, BURN_HEAL, 1, EVENT_OLSTEETON_ABANDONED_MILL_BURN_HEAL
	itemball_event  2,  7, ULTRA_BALL, 1, EVENT_OLSTEETON_ABANDONED_MILL_ULTRA_BALL
	object_event  5, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonAbandonedMillBlackBeltText, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	object_event  9,  5, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BradfordScript, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	object_event 14, 12, SPRITE_FIREBREATHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonAbandonedMillFirebreatherText, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	pokemon_event  3, 11, GURDURR, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BROWN, OlsteetonAbandonedMillGurdurrText, EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT

	object_const_def
	const OLSTEETON_ABANDONED_MILL_VETERAN_F
	const OLSTEETON_ABANDONED_MILL_ENGINEER

BradfordScript:
	faceplayer
	opentext
	checkevent EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	iftrue_jumpopenedtext BradfordMetalCoatText
	sjumpfwd BradfordBattleScript

BradfordBattleScript:
	writetext BradfordText1
	yesorno
	iffalse_jumpopenedtext BradfordRejectedText
	writetext BradfordAcceptedText
	waitbutton
	closetext
	winlosstext BradfordBeatenText, BradfordLossText
	setlasttalked OLSTEETON_ABANDONED_MILL_ENGINEER
	loadtrainer ENGINEER, BRADFORD1
	startbattle
	reloadmap
	sjumpfwd .AfterWin
	

.AfterWin:
	showtext BradfordAfterText
	sjumpfwd .BettyMillEvent

.BettyMillEvent:
	moveobject OLSTEETON_ABANDONED_MILL_VETERAN_F, 8, 11
	appear OLSTEETON_ABANDONED_MILL_VETERAN_F
	setevent EVENT_BEAT_ENGINEER_BRADFORD
	playsound SFX_ENTER_DOOR
	applymovement OLSTEETON_ABANDONED_MILL_VETERAN_F, .BettyEnters
	showemote EMOTE_SHOCK, OLSTEETON_ABANDONED_MILL_ENGINEER, 15
	turnobject OLSTEETON_ABANDONED_MILL_ENGINEER, DOWN
	opentext
	writetext BettySpeechText
	waitbutton
	writetext BradfordApologyText
	waitbutton
	turnobject OLSTEETON_ABANDONED_MILL_ENGINEER, RIGHT
	writetext BradfordWrapitUpText
	waitbutton
	turnobject OLSTEETON_ABANDONED_MILL_ENGINEER, DOWN
	showemote EMOTE_HAPPY, OLSTEETON_ABANDONED_MILL_VETERAN_F, 15
	writetext BettyGoodbyeText
	waitbutton
	closetext
	applymovement OLSTEETON_ABANDONED_MILL_VETERAN_F, .BettyExits
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear OLSTEETON_ABANDONED_MILL_VETERAN_F
	opentext
	verbosegiveitem METAL_COAT
	setevent EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	setmapscene OLSTEETON_ROUTE_103_GATE, SCENE_OLSTEETON_ROUTE_103_GATE_NOOP
	writetext BradfordMetalCoatText
	waitbutton
	setmapscene BRINESBURG_MAGIKORP_OFFICE, SCENE_BRINESBURG_MAGIKORP_OFFICE_NOOP
	setevent EVENT_MET_GIL
	closetext
	end

.BettyEnters
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

.BettyExits
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

BradfordText1:
	text "Bradford: What in"
	line "tarnation are you"
	cont "doing here?"

	para "Nobody is"
	line "supposed to know"
	cont "we're here..."

	para "....."
	line "Betty sent you up"
	cont "here now too?"

	para "Fine. Beat me in a"
	line "battle and we'll"
	cont "leave. Okay?"
	done

BradfordAcceptedText:
	text "I'll make short"
	line "work of you, kid!"
	done

BradfordRejectedText:
	text "Heh. That's"
	line "what I thought."
	done

BradfordBeatenText:
	text "....."
	line "Okay, you win."
	done

BradfordLossText:
	text "Heh!"

	para "Exactly like I"
	line "figured it'd go!"
	done

BradfordAfterText:
	text "So what, you won."

	para "Guess what? We're"
	line "still not leaving!"
	done

BettySpeechText:
	text "Betty: I know you"
	line "aren't this"
	cont "foolish!"

	para "Just come work"
	line "at the gym with"
	cont "us..."

	para "Rusty will be"
	line "happy to bring"
	cont "you all on."
	done

BradfordApologyText:
	text "Ok ok fine."
	line "That's a better"
	cont "deal than we ever"

	para "had here anyway,"
	line "plus we'll get"
	cont "paid to battle."
	done

BradfordWrapitUpText:
	text "Alright, boys!"
	line "Wrap it up!"

	para "We're goin to work"
	line "at Rusty's gym!"
	done

BettyGoodbyeText:
	text "Glad we could"
	line "come to an agree-"
	cont "ment!"

	para "I'll see you all"
	line "at work!"
	done

BradfordThanksText:
	text "Thanks again for"
	line "helping knock some"

	para "sense into us."
	line "Here, take this."
	done

BradfordMetalCoatText:
	text "We used to make"
	line "these here at"
	cont "the mill..."

	para "It boosts Steel"
	line "type moves and"

	para "certain #mon" 
	line "use it to evolve."
	done
	
OlsteetonAbandonedMillBlackBeltText:
	text "We're not"
	line "givin' up"
	cont "on the mill!"

	para "This is where"
	line "my pappy worked"

	para "and his pappy"
	line "before him."

	para "and his pappy"
	line "before him."

	para "I don't give"
	line "a Hoot-Hoot"

	para "what Rusty or"
	line "any of those"

	para "MagiKorp grunts"
	line "have to say!"
	done

OlsteetonAbandonedMillFirebreatherText:
	text "Oohah! Oohah!"

	para "The stuff on the"
	line "ground's junk."

	para "Take it if you"
	line "want it!"
	done

OlsteetonAbandonedMillGurdurrText:
	text "Gurdurr: Gurrr!"
	done

