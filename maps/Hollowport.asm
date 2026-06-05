Hollowport_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_HOLLOWPORT_ELDER_STOPS_YOU
	scene_const SCENE_HOLLOWPORT_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, HollowportFlyPoint

	def_warp_events
	warp_event 17,  5, PLAYERS_HOUSE_1F, 1
	warp_event  5,  3, FIELD_LAB, 1
	warp_event 13, 11, HOLLOWPORT_RIVAL_1F, 2
	warp_event  5, 15, HOLLOWPORT_NEIGHBOR, 1
	warp_event  1,  7, ECHOING_CAVE, 1


	def_coord_events
	coord_event 13,  3, SCENE_HOLLOWPORT_ELDER_STOPS_YOU, Hollowport_ElderStopsYouTrigger1
	coord_event 12,  3, SCENE_HOLLOWPORT_ELDER_STOPS_YOU, Hollowport_ElderStopsYouTrigger2
	coord_event  5,  8, SCENE_HOLLOWPORT_ELDER_STOPS_YOU, Hollowport_BrookeIntroTrigger

	def_bg_events
	bg_event 11,  5, BGEVENT_JUMPTEXT, HollowportRouteSignText
	bg_event  9, 11, BGEVENT_JUMPTEXT, HollowportSignText
	bg_event 15,  5, BGEVENT_JUMPTEXT, PlayerHouseSignText
	bg_event  3,  4, BGEVENT_JUMPTEXT, FieldLabSignText
	bg_event 14, 12, BGEVENT_JUMPTEXT, RivalsHouseSignText
	bg_event 10,  4, BGEVENT_ITEM + POTION, EVENT_HOLLOWPORT_HIDDEN_POTION
	bg_event  4, 12, BGEVENT_ITEM + NUGGET, EVENT_HOLLOWPORT_HIDDEN_NUGGET

	def_object_events
	object_event  2,  8, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_HollowportThief, EVENT_GOT_POKEDEX_FROM_POPLAR
	object_event 11,  8, SPRITE_BROOKE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BROOKE_HOLLOWPORT
	object_event 14,  4, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HollowportElderScript, -1
	object_event 11, 14, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_Technologia, -1
	object_event  6, 10, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_HollowportBirdFriend, -1
	object_event 17, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_HollowportFisher, -1
	pokemon_event  8, 10, MURKROW, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLACK, HollowportMurkrowText, -1

	object_const_def
	const HOLLOWPORT_THIEF
	const HOLLOWPORT_BROOKE
	const HOLLOWPORT_ELDER
HollowportFlyPoint:
	setflag ENGINE_FLYPOINT_HOLLOWPORT
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

Hollowport_ElderStopsYouTrigger1:
	playmusic MUSIC_MOM
	turnobject HOLLOWPORT_ELDER, LEFT
	showtext Text_Wait
	turnobject PLAYER, DOWN
	showtext Text_WhatDoing
	showtext Text_DangerousToGoAlone
	applyonemovement PLAYER, step_down
	special RestartMapMusic
	end

Hollowport_ElderStopsYouTrigger2:
	playmusic MUSIC_MOM
	turnobject HOLLOWPORT_ELDER, LEFT
	showtext Text_Wait
	turnobject PLAYER, DOWN
	showtext Text_WhatDoing
	showtext Text_DangerousToGoAlone
	applyonemovement PLAYER, step_down
	special RestartMapMusic
	end

Hollowport_BrookeIntroTrigger:
	appear HOLLOWPORT_BROOKE
	special Special_FadeOutMusic
	applymovement HOLLOWPORT_BROOKE, Movement_BrookeEnters_NBT
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	showemote EMOTE_SHOCK, HOLLOWPORT_BROOKE, 15
	applymovement HOLLOWPORT_BROOKE, Movement_BrookeApproaches_NBT
	turnobject PLAYER, RIGHT
	showtext Text_BrookeIntro
	follow PLAYER, HOLLOWPORT_BROOKE
	applymovement PLAYER, Movement_PlayerLab_NBT
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applyonemovement HOLLOWPORT_BROOKE, step_up
	playsound SFX_EXIT_BUILDING
	disappear HOLLOWPORT_BROOKE
	setscene SCENE_HOLLOWPORT_NOOP
	setevent EVENT_FOUGHT_FIELD_LAB_MAGIGOON
	special FadeOutPalettes
	pause 15
	warpfacing UP, FIELD_LAB, 7, 8
	end

; .Totodile:
; 	loadtrainer BROOKE1, BROOKE1_11
; 	sjumpfwd .AfterBattle

; .Chikorita:
; 	loadtrainer BROOKE1, BROOKE1_12
; .AfterBattle
; 	startbattle
; 	dontrestartmapmusic
; 	reloadmapafterbattle
; 	special DeleteSavedMusic
; 	playmusic MUSIC_LYRA_DEPARTURE_HGSS
; 	showtext Text_BrookeGoodbye2
; 	applymovement HOLLOWPORT_BROOKE, Movement_BrookeSaysGoodbye3_NBT
; 	disappear HOLLOWPORT_BROOKE
; 	setscene $2
; 	playmapmusic
; 	end

HollowportElderScript:
	; checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	; iftrue_jumptextfaceplayer Text_CallMom
	; checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	; iftrue_jumptextfaceplayer Text_TellMomLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iftrue_jumptextfaceplayer Text_MonIsAdorable
	jumptextfaceplayer Text_NiceBreeze
	
; Movement_ElderRunsToYou1_NBT:
; 	step_left
; 	step_up
; 	step_up
; 	step_up
; 	step_end

; Movement_ElderRunsToYou2_NBT:
; 	step_left
; 	step_left
; 	step_up
; 	step_up
; 	step_up
; 	step_end

; Movement_ElderBringsYouBack2_NBT:
; 	step_right
; 	step_down
; 	step_down
; 	step_down
; 	step_right
; 	turn_head_left
; 	step_end
; Movement_ElderBringsYouBack1_NBT:
; 	step_down
; 	step_down
; 	step_down
; 	step_right
; 	turn_head_left
; 	step_end

Movement_BrookeEnters_NBT:
	step_left
	step_end

Movement_BrookeApproaches_NBT:
	step_left
	step_left
	step_left
	step_left
	step_end

Movement_PlayerLab_NBT:
	step_up
	step_up
	step_up
	step_up
	step_end

; HollowportRivalScript:
; 	showtext HollowportRivalText1
; 	turnobject HOLLOWPORT_THIEF, LEFT
; 	showtext HollowportRivalText2
; 	turnobject PLAYER, UP
; 	applyonemovement PLAYER, fix_facing
; 	follow PLAYER, HOLLOWPORT_THIEF
; 	applyonemovement PLAYER, step_down
; 	stopfollow
; 	pause 5
; 	turnobject HOLLOWPORT_THIEF, DOWN
; 	pause 5
; 	playsound SFX_TACKLE
; 	applyonemovement PLAYER, jump_step_down
; 	applyonemovement PLAYER, remove_fixed_facing
; 	applyonemovement HOLLOWPORT_THIEF, step_right
; 	end

Text_HollowportThief:
	text "……"

	para "So this is where"
	line "Pawpaw is"
	cont "setting up..."

	para "…What are you"
	line "staring at?"
	done

Text_HollowportBirdFriend:
	text "KIKIKI"
	line "..."

	para "Shh I'm trying to"
	line "make friends with"
	cont "that Murkrow"
	done

Text_NiceBreeze:
	text "The breeze from"
	line "the river is real"
	cont "nice, ain't it?"
	done
	
Text_HollowportFisher:
	text "Hush!"
	line "You'll scare away"
	cont "all the fish"
	cont "#mon!"
	done

Text_Wait:
	text "Wait, <PLAYER>!"
	done

Text_WhatDoing:
	text "Now just what do"
	line "ya think"
	cont "you're doin?"
	done

Text_DangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#mon!"

	para "There are wild"
	line "#mon in the"
	cont "tall grass!"

	para "Ya need yer"
	line "own partner"
	cont "#mon first!"
	done

Text_MonIsAdorable:
	text "Oh! Your #mon"
	line "is so cool!"
	cont "You're so lucky!"
	done

Text_TellMomLeaving:
	text "Hi, <PLAYER>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMom:
	text "Call your mom on"
	line "your #gear to"

	para "let her know how"
	line "you're doing."
	done

Text_Technologia:
	text "Yo, <PLAYER>!"

	para "You can create"
	line "new games"
	cont "by modifying"
	cont "the original"

	para "Isn't technology"
	line "incredible?!"
	done
	
HollowportMurkrowText:
	text "Murkrow: MrrKAW!"
	done

Text_BrookeIntro:
	text "Brooke: Oh,"
	line "hi, <PLAYER>!"

	para "I came by your"
	line "house earlier,"

	para "but you were"
	line "still sleeping."

	para "You know how I"
	line "assist Prof.Pawpaw"
	cont "sometimes?"

	para "He's starting new"
	line "#mon research"

	para "and would like us"
	line "both to help."

	para "Let's go and see"
	line "what he wants!"
	done

HollowportSignText:
	text "Hollowport"

	para "Where Home is"
	line "Just Around the"
	cont "Rivers' Bend"
	done

HollowportRouteSignText:
	text "NORTH:"
	line "Route 101"

	para "SOUTH:"
	line "Hollowport"

	done
PlayerHouseSignText:
	text "<PLAYER>'s House"
	done

FieldLabSignText:
	text "Pawpaw #mon"
	line "Field Lab"
	done

RivalsHouseSignText:
	text "Brooke's House"
	done
