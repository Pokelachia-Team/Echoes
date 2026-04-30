Route101_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 31, 10, ROUTE_101_102_GATE, 1
	warp_event 31, 11, ROUTE_101_102_GATE, 2
	warp_event 25,  5, ROUTE_101_HOUSE, 1
	warp_event 16,  3, ROUTE_101_CAVE, 1


	def_coord_events
	coord_event 14, 12, 0, FakeBattleTrigger1
	coord_event 14, 13, 0, FakeBattleTrigger2


	def_bg_events
	bg_event 20,  6, BGEVENT_ITEM + SUPER_POTION, EVENT_ROUTE_101_HIDDEN_SUPER_POTION


	def_object_events
	object_event 14, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GrannyScript, -1
	; object_event 14, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GrannyScript, EVENT_FAKE_BATTLE_2
	fruittree_event 22,  4, FRUITTREE_ROUTE_101_1, ORAN_BERRY, PAL_NPC_BLUE
	fruittree_event 23,  4, FRUITTREE_ROUTE_101_2, PECHA_BERRY, PAL_NPC_PINK
	fruittree_event  4,  2, FRUITTREE_ROUTE_101_3, PERSIM_BERRY, PAL_NPC_PINK
	; fruittree_event  4,  2, FRUITTREE_ROUTE_2, LUM_BERRY, PAL_NPC_GREEN
	itemball_event 20, 20, POKE_BALL, 1, EVENT_ROUTE_101_POKE_BALL
	itemball_event 17,  6, POTION, 1, EVENT_ROUTE_101_POTION

	object_const_def
	const ROUTE101_GRANNY


FakeBattleTrigger1:
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE101_GRANNY, 15
	turnobject PLAYER, UP
	showtext Text_GrannyFakeBattle
	setevent EVENT_FAKE_BATTLE
	clearevent EVENT_FAKE_BATTLE_2
	setscene $1
	special RestartMapMusic
	end

FakeBattleTrigger2:
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE101_GRANNY, 15
	turnobject PLAYER, UP
	applymovement ROUTE101_GRANNY, .granny_steps
	showtext Text_GrannyFakeBattle
	setevent EVENT_FAKE_BATTLE
	clearevent EVENT_FAKE_BATTLE_2
	setscene $1
	special RestartMapMusic
	end

.granny_steps
	step_down
	step_end
GrannyFakeBattleScript:
	checkevent EVENT_FAKE_BATTLE
	iftrue_jumptextfaceplayer Text_GrannyAfter
	faceplayer
	playmusic MUSIC_LASS_ENCOUNTER
	showemote EMOTE_SHOCK, LAST_TALKED, 30
	showemote EMOTE_SHOCK, ROUTE101_GRANNY, 30
	showtext Text_GrannyFakeBattle
	setevent EVENT_FAKE_BATTLE
	clearevent EVENT_FAKE_BATTLE_2
	setscene $1
	special RestartMapMusic
	end

GrannyScript:
	faceplayer
	checkscene
	iffalsefwd .GrannyEvent
	opentext
	checkevent EVENT_FAKE_BATTLE
	iftrue_jumpopenedtext Text_GrannyAfter
end

.GrannyEvent:
	playmusic MUSIC_LASS_ENCOUNTER
	sjump GrannyFakeBattleScript

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