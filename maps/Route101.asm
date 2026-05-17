Route101_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_ROUTE101_NOOP
	scene_const SCENE_ROUTE101_CATCH_TUTORIAL
	scene_const SCENE_ROUTE101_FAKE_BATTLE
	
	def_callbacks

	def_warp_events
	warp_event 31, 10, ROUTE_101_102_GATE, 1
	warp_event 31, 11, ROUTE_101_102_GATE, 2
	warp_event 25,  5, ROUTE_101_HOUSE, 1
	warp_event 16,  3, ROUTE_101_CAVE, 1

	def_coord_events
	coord_event  8, 19, SCENE_ROUTE101_CATCH_TUTORIAL, Route101Tutorial1
	coord_event  9, 19, SCENE_ROUTE101_CATCH_TUTORIAL, Route101Tutorial2
	coord_event 14, 12, SCENE_ROUTE101_FAKE_BATTLE, FakeBattleTrigger1
	coord_event 14, 13, SCENE_ROUTE101_FAKE_BATTLE, FakeBattleTrigger2

	def_bg_events
	bg_event 20,  6, BGEVENT_ITEM + SUPER_POTION, EVENT_ROUTE_101_HIDDEN_SUPER_POTION

	def_object_events
	object_event  9, 14, SPRITE_BROOKE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BROOKE_ROUTE101
	object_event 14, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GrannyScript, -1
	fruittree_event 22,  4, FRUITTREE_ROUTE_101_1, ORAN_BERRY, PAL_NPC_BLUE
	fruittree_event 23,  4, FRUITTREE_ROUTE_101_2, PECHA_BERRY, PAL_NPC_PINK
	fruittree_event  4,  2, FRUITTREE_ROUTE_101_3, PERSIM_BERRY, PAL_NPC_PINK
	; fruittree_event  4,  2, FRUITTREE_ROUTE_2, LUM_BERRY, PAL_NPC_GREEN
	itemball_event 20, 20, POKE_BALL, 1, EVENT_ROUTE_101_POKE_BALL
	itemball_event 17,  6, POTION, 1, EVENT_ROUTE_101_POTION

	object_const_def
	const ROUTE101_BROOKE
	const ROUTE101_GRANNY


FakeBattleTrigger1:
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE101_GRANNY, 15
	turnobject PLAYER, UP
	showtext Text_GrannyFakeBattle
	; setevent EVENT_FAKE_BATTLE
	; clearevent EVENT_FAKE_BATTLE_2
	setscene SCENE_ROUTE101_NOOP
	special RestartMapMusic
	end

FakeBattleTrigger2:
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE101_GRANNY, 15
	turnobject PLAYER, UP
	applymovement ROUTE101_GRANNY, .granny_steps
	showtext Text_GrannyFakeBattle
	; setevent EVENT_FAKE_BATTLE
	; clearevent EVENT_FAKE_BATTLE_2
	setscene SCENE_ROUTE101_NOOP
	special RestartMapMusic
	end

.granny_steps
	step_down
	step_end
GrannyFakeBattleScript:
	; checkevent EVENT_FAKE_BATTLE
	; jumptextfaceplayer Text_GrannyAfter
	; faceplayer
	; playmusic MUSIC_LASS_ENCOUNTER
	; showemote EMOTE_SHOCK, LAST_TALKED, 30
	; showemote EMOTE_SHOCK, ROUTE101_GRANNY, 30
	; showtext Text_GrannyFakeBattle
	; setevent EVENT_FAKE_BATTLE
	; clearevent EVENT_FAKE_BATTLE_2
	; setscene SCENE_ROUTE101_NOOP
	; special RestartMapMusic
	; end

GrannyScript:
	jumptextfaceplayer Text_GrannyAfter

; 	faceplayer
; 	checkscene
; 	iffalsefwd .GrannyEvent
; 	opentext
; 	checkevent EVENT_FAKE_BATTLE
; 	iftrue_jumpopenedtext Text_GrannyAfter
; end

; .GrannyEvent:
; 	playmusic MUSIC_LASS_ENCOUNTER
; 	sjump GrannyFakeBattleScript

Route101Tutorial1:
	appear ROUTE101_BROOKE
	special Special_FadeOutMusic
	applymovement ROUTE101_BROOKE, Movement_BrookeEnters_101
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	pause 15
	showemote EMOTE_SHOCK, ROUTE101_BROOKE, 15
	applymovement ROUTE101_BROOKE, BrookeMovementData1a
	turnobject ROUTE101_BROOKE, DOWN
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalsefwd Route101RefusedTutorial
	closetext
	follow ROUTE101_BROOKE, PLAYER
	applymovement ROUTE101_BROOKE, BrookeMovementData2
	sjumpfwd Route101TutorialScript

Route101Tutorial2:
	appear ROUTE101_BROOKE
	special Special_FadeOutMusic
	applymovement ROUTE101_BROOKE, Movement_BrookeEnters_101
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	pause 15
	applymovement ROUTE101_BROOKE, BrookeMovementData1b
	turnobject ROUTE101_BROOKE, DOWN
	opentext
	writetext CatchingTutorialIntroText
	yesorno
	iffalsefwd Route101RefusedTutorial
	closetext
	follow ROUTE101_BROOKE, PLAYER
	applymovement ROUTE101_BROOKE, BrookeMovementData2

Route101TutorialScript:
	stopfollow
	loadwildmon CRIBNAL, 5
	catchtutorial BATTLETYPE_TUTORIAL
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	turnobject ROUTE101_BROOKE, LEFT
	opentext
	writetext CatchingTutorialDebriefText

Route101FinishTutorial:
	promptbutton
	verbosegiveitem POKE_BALL, 5
	writetext CatchingTutorialGoodbyeText
	waitbutton
	closetext
	applymovement ROUTE101_BROOKE, BrookeMovementData3
	disappear ROUTE101_BROOKE
	setscene SCENE_ROUTE101_FAKE_BATTLE
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	playmusic MUSIC_ROUTE_101_RSE
	end

Route101RefusedTutorial:
	setevent EVENT_NEVER_LEARNED_TO_CATCH_POKEMON
	writetext CatchingTutorialRefusedText
	sjump Route101FinishTutorial

Movement_BrookeEnters_101:
	step_down
	step_down
	step_end

BrookeMovementData1a:
	step_down
	step_left
	step_down
	step_end

BrookeMovementData1b:
	step_down
	step_down
	step_end

BrookeMovementData2:
	step_up
	step_right
	step_right
	step_right
	step_end

BrookeMovementData3:
	step_up
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

CatchingTutorialIntroText:
	text "Brooke: <PLAYER>!"

	para "You can catch wild"
	line "#mon with #"

	para "Balls. Follow me"
	line "and I'll show you!"
	done

CatchingTutorialDebriefText:
	text "Brooke: See? Just"
	line "like that!"

	para "If you weaken them"
	line "first, #mon are"
	cont "easier to catch."

	para "I'll give you"
	line "these. Good luck!"
	done

CatchingTutorialRefusedText:
	text "Aww… I wanted to"
	line "show off my cap-"
	cont "turing skills a"
	cont "little…"

	para "Anyway, I'll give"
	line "you these."
	cont "Good luck!"
	done

CatchingTutorialGoodbyeText:
	text "Brooke: See you!"
	done

Text_GrannyFakeBattle:
	para "Got yourself a"
	line "#mon, I see!"

	para "Time for your"
	line "first lesson"

	para "in the school of"
	line "hard knocks!"

	para "......"
	line "Just kiddin'!"

	para "That's what it'll"
	line "be like though"
	cont "So be ready!"
	done

Text_GrannyAfter:
	para "Heh! It"
	line "never gets old!"

	para "Good luck out"
	line "there, kid!"
	done