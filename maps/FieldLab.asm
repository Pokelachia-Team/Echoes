FieldLab_MapScriptHeader:
	def_scene_scripts
	scene_script FieldLabMeetPawpawScene, SCENE_FIELDLAB_MEET_PAWPAW
	scene_script FieldLabCantLeaveScene, SCENE_FIELDLAB_CANT_LEAVE
	scene_script FieldLabNoopScene, SCENE_FIELDLAB_NOOP
	scene_script FieldLabUnusedScene, SCENE_FIELDLAB_UNUSED
	scene_script FieldLabAideGivesPotionScene, SCENE_FIELDLAB_AIDE_GIVES_POTION
	scene_script FieldLabBrookeBattleScene, SCENE_FIELDLAB_BROOKE_BATTLE
	; scene_script FieldLabAideGivesPokeBallsScene, SCENE_FIELDLAB_AIDE_GIVES_POKE_BALLS

	def_callbacks
	callback MAPCALLBACK_OBJECTS, FieldLabCallback_MovePawpaw

	def_warp_events
	warp_event  7,  8, HOLLOWPORT, 2
	warp_event 12,  0, FIELD_LAB_2F, 2

	def_coord_events
	coord_event  6,  5, SCENE_FIELDLAB_CANT_LEAVE, FieldLabTryToLeaveScript
	coord_event  7,  5, SCENE_FIELDLAB_CANT_LEAVE, FieldLabTryToLeaveScript2
	coord_event  7,  7, SCENE_FIELDLAB_AIDE_GIVES_POTION, AideScript_WalkPotions1
	coord_event  8,  7, SCENE_FIELDLAB_AIDE_GIVES_POTION, AideScript_WalkPotions2
	coord_event  6,  4, SCENE_FIELDLAB_BROOKE_BATTLE, BrookeBattleScript

	def_bg_events
	bg_event  3,  3, BGEVENT_READ, FieldLabHealingMachine
	bg_event 10,  0, BGEVENT_JUMPTEXT, FieldLabTravelTip1Text
	bg_event 11,  0, BGEVENT_JUMPTEXT, FieldLabTravelTip2Text
	bg_event  8,  4, BGEVENT_JUMPTEXT, FieldLabTravelTip3Text
	bg_event  9,  4, BGEVENT_JUMPTEXT, FieldLabTravelTip4Text
	bg_event  4,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  5,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  1, BGEVENT_JUMPTEXT, FieldLabTrashcanText
	bg_event 10,  9, BGEVENT_READ, FieldLabWindow
	bg_event  2,  9, BGEVENT_READ, FieldLabWindow
	bg_event  4,  9, BGEVENT_READ, FieldLabWindow
	bg_event  8,  9, BGEVENT_READ, FieldLabWindow
	bg_event 12,  9, BGEVENT_READ, FieldLabWindow
	bg_event  4,  5, BGEVENT_DOWN, FieldLabPC

	def_object_events
	object_event  5,  2, SPRITE_PAWPAW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfPawpawScript, -1
	object_event  6,  8, SPRITE_BROOKE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FieldLabBrookeScript, EVENT_BROOKE_IN_PAWPAWS_LAB
	object_event  4,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FieldAideScript, EVENT_PAWPAWS_AIDE_IN_LAB
	object_event  6,  1, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_SCRIPT, 0, FlicklitPokeBallScript, EVENT_FLIKLIT_POKEBALL_IN_FIELD_LAB
	object_event  7,  1, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_BLUE, OBJECTTYPE_SCRIPT, 0, GluttlePokeBallScript, EVENT_GLUTTLE_POKEBALL_IN_FIELD_LAB
	object_event  8,  1, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_GREEN, OBJECTTYPE_SCRIPT, 0, CupicoPokeBallScript, EVENT_CUPICO_POKEBALL_IN_FIELD_LAB
	object_event 12,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FieldLabFellowText, -1

	object_const_def
	const FIELDLAB_PAWPAW
	const FIELDLAB_BROOKE
	const FIELDLAB_PAWPAWS_AIDE
	const FIELDLAB_POKE_BALL1
	const FIELDLAB_POKE_BALL2
	const FIELDLAB_POKE_BALL3

FieldLabMeetPawpawScene:
	sdefer FieldLab_AutowalkUpToPawpaw
FieldLabCantLeaveScene:
FieldLabNoopScene:
FieldLabUnusedScene:
FieldLabAideGivesPotionScene:
FieldLabBrookeBattleScene:
	end

; FieldLabAideGivesPokeBallsScene:
; 	sdefer FieldLab_AutoAideSpeech
; 	end


FieldLabCallback_MovePawpaw:
	checkscene
	iftruefwd .Skip
	moveobject FIELDLAB_PAWPAW, 3, 4
.Skip:
	endcallback

FieldLab_AutowalkUpToPawpaw:
	follow PLAYER, FIELDLAB_BROOKE
	applymovement PLAYER, FieldLab_WalkUpToPawpawMovement
	stopfollow
	faceplayer
 	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iftruefwd PawpawAfterMon
	showemote EMOTE_SHOCK, FIELDLAB_PAWPAW, 15
	applymovement FIELDLAB_PAWPAW, FieldLab_WalkToPlayer
	opentext
	writetext PawpawText_Intro
FieldLab_RefuseLoop:
	yesorno
	iftruefwd FieldLab_PawpawGetsEmail
	writetext PawpawText_Refused
	sjump FieldLab_RefuseLoop

FieldLab_PawpawGetsEmail:
if !DEF(DEBUG)
	writetext PawpawText_Accepted
	promptbutton
	writetext PawpawText_ResearchAmbitions
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, FIELDLAB_PAWPAW, 10
	turnobject FIELDLAB_PAWPAW, DOWN
	showtext PawpawText_GotAnEmail
	opentext
	turnobject FIELDLAB_PAWPAW, RIGHT
	writetext PawpawText_MissionFromPoplar
	waitbutton
endc
	closetext
	applyonemovement FIELDLAB_PAWPAW, step_up
	turnobject PLAYER, UP
	applymovement FIELDLAB_PAWPAW, FieldLab_PawpawToDefaultPositionMovement
	turnobject PLAYER, RIGHT
	showtext PawpawText_ChooseAPokemon
	setevent EVENT_CHOOSE_POKEMON
	setscene SCENE_FIELDLAB_CANT_LEAVE
	end

ProfPawpawScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iftrue_jumpopenedtext PawpawDescribesPoplarText
	jumpthisopenedtext

	text "If a wild #mon"
	line "appears, let your"
	cont "#mon battle it!"
	done


; FieldLab_AutoAideSpeech:
; 	turnobject FIELDLAB_PAWPAWS_AIDE, DOWN
; 	showemote EMOTE_SHOCK, FIELDLAB_PAWPAWS_AIDE, 15
; 	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksDownMovement
; 	showtext AideText_ThiefReturnedMon
; 	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksBackMovement
; 	turnobject FIELDLAB_PAWPAWS_AIDE, DOWN
; 	setscene SCENE_FIELDLAB_NOOP
; 	end

; 	opentext
; 	checkevent EVENT_GOT_SS_TICKET_FROM_PAWPAW
; 	iftruefwd PawpawCheckMasterBall
; 	checkevent EVENT_BEAT_ELITE_FOUR
; 	iftrue PawpawGiveTicketScript
; PawpawCheckMasterBall:
; 	checkevent EVENT_GOT_MASTER_BALL_FROM_PAWPAW
; 	iftruefwd PawpawCheckOddSouvenir
; 	checkflag ENGINE_RISINGBADGE
; 	iftrue PawpawGiveMasterBallScript
; PawpawCheckOddSouvenir:
; 	checkevent EVENT_GOT_ODD_SOUVENIR_FROM_PAWPAW
; 	iftrue PawpawCheckBattleScript
; 	checkevent EVENT_SHOWED_TOGEPI_TO_PAWPAW
; 	iftrue PawpawGiveOddSouvenirScript
; 	checkevent EVENT_PAWPAW_WANTS_TO_BATTLE
; 	iftrue PawpawAskBattleScript
; 	checkevent EVENT_TOLD_PAWPAW_ABOUT_TOGEPI_OVER_THE_PHONE
; 	iffalsefwd PawpawCheckTogepiEgg
; 	scall PawpawEggHatchedScript
; 	jumpopenedtext PawpawThoughtEggHatchedText

; PawpawEggHatchedScript:
; 	setmonval TOGEPI
; 	special Special_FindThatSpeciesYourTrainerID
; 	iftrue ShowPawpawTogepiScript
; 	setmonval TOGETIC
; 	special Special_FindThatSpeciesYourTrainerID
; 	iftrue ShowPawpawTogepiScript
; 	setmonval TOGEKISS
; 	special Special_FindThatSpeciesYourTrainerID
; 	iftrue ShowPawpawTogepiScript
; 	sjumpfwd PawpawCheckGotEggAgain

; PawpawCheckTogepiEgg:
; 	checkevent EVENT_GOT_TOGEPI_EGG_FROM_PAWPAWS_AIDE
; 	iffalsefwd PawpawCheckGotEggAgain
; 	checkevent EVENT_TOGEPI_HATCHED
; 	iftrue PawpawEggHatchedScript
; PawpawCheckGotEggAgain:
; 	checkevent EVENT_GOT_TOGEPI_EGG_FROM_PAWPAWS_AIDE ; why are we checking it again?
; 	iftrue_jumpopenedtext PawpawWaitingEggHatchText
; 	checkflag ENGINE_ZEPHYRBADGE
; 	iftrue_jumpopenedtext PawpawAideHasEggText
; 	checkevent EVENT_GAVE_MYSTERY_EGG_TO_PAWPAW
; 	iftrue_jumpopenedtext PawpawStudyingEggText
; 	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
; 	iftrue PawpawAfterTheftScript

; 	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
; 	iftrue_jumpopenedtext PawpawDescribesPoplarText
; 	jumpopenedtext PawpawText_LetYourMonBattleIt

PawpawAfterMon:
	opentext
	writetext PawpawDescribesPoplarText
	closetext
	end
	jumpopenedtext PawpawText_LetYourMonBattleIt
	
FieldLabTryToLeaveScript:
	showtext PawpawWhereGoingText
	applyonemovement PLAYER, step_up
	end

FieldLabTryToLeaveScript2:
	showtext PawpawWhereGoingText
	applyonemovement PLAYER, step_down
	end

FlicklitPokeBallScript:
	checkevent EVENT_CHOOSE_POKEMON
	iffalse_jumptext PawpawPokeBallText
	turnobject FIELDLAB_PAWPAW, DOWN
	reanchormap
	pokepic FLIKLIT
	cry FLIKLIT
	waitbutton
	closepokepic
	opentext
	writetext TakeFlicklitText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear FIELDLAB_POKE_BALL1
	setevent EVENT_GOT_FLIKLIT_FROM_PAWPAW
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke FLIKLIT, PLAIN_FORM, 5, ORAN_BERRY
	writetext BrookeChoosesStarterText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookePicksCupicoMovement
	pause 15
	disappear FIELDLAB_POKE_BALL3
	opentext
	getmonname CUPICO, STRING_BUFFER_3
	writetext BrookeReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	writetext BrookeNicknamedCupicoText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookeAfterCupicoMovement
	readvar VAR_FACING
	ifequalfwd RIGHT, PawpawDirectionsScript
	applymovement PLAYER, AfterFlicklitMovement
	sjumpfwd PawpawDirectionsScript

GluttlePokeBallScript:
	checkevent EVENT_CHOOSE_POKEMON
	iffalse_jumptext PawpawPokeBallText
	turnobject FIELDLAB_PAWPAW, DOWN
	reanchormap
	pokepic GLUTTLE
	cry GLUTTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeGluttleText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear FIELDLAB_POKE_BALL2
	setevent EVENT_GOT_GLUTTLE_FROM_PAWPAW
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke GLUTTLE, PLAIN_FORM, 5, ORAN_BERRY
	writetext BrookeChoosesStarterText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookePicksFlicklitMovement
	pause 15
	disappear FIELDLAB_POKE_BALL1
	opentext
	getmonname FLIKLIT, STRING_BUFFER_3
	writetext BrookeReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	writetext BrookeNicknamedFliklitText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookeAfterFlicklitMovement
	applymovement PLAYER, AfterGluttleMovement
	sjumpfwd PawpawDirectionsScript

CupicoPokeBallScript:
	checkevent EVENT_CHOOSE_POKEMON
	iffalse_jumptext PawpawPokeBallText
	turnobject FIELDLAB_PAWPAW, DOWN
	reanchormap
	pokepic CUPICO
	cry CUPICO
	waitbutton
	closepokepic
	opentext
	writetext TakeCupicoText
	yesorno
	iffalse_jumpopenedtext DidntChooseStarterText
	disappear FIELDLAB_POKE_BALL3
	setevent EVENT_GOT_CUPICO_FROM_PAWPAW
	writetext ChoseStarterText
	promptbutton
	waitsfx
	givepoke CUPICO, PLAIN_FORM, 5, ORAN_BERRY
	writetext BrookeChoosesStarterText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookePicksGluttleMovement
	pause 15
	disappear FIELDLAB_POKE_BALL2
	opentext
	getmonname GLUTTLE, STRING_BUFFER_3
	writetext BrookeReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	writetext BrookeNicknamedGluttleText
	waitbutton
	closetext
	applymovement FIELDLAB_BROOKE, BrookeAfterGluttleMovement
	applymovement PLAYER, AfterCupicoMovement
	; fallthrough

PawpawDirectionsScript:
	; turnobject PLAYER, LEFT
if !DEF(DEBUG)
	showtext PawpawDirectionsText1
endc
	addcellnum PHONE_ELM
	opentext
	writetext GotFieldNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject FIELDLAB_PAWPAW, LEFT
	showtext PawpawDirectionsText2
	turnobject FIELDLAB_PAWPAW, DOWN
	showtext PawpawDirectionsText3
	setevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	setscene SCENE_HOLLOWPORT_NOOP
	; setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_FIELDLAB_BROOKE_BATTLE
	end

FieldLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iftruefwd .CanHeal
	jumpopenedtext FieldLabHealingMachineText1

.CanHeal:
	writetext FieldLabHealingMachineText2
	yesorno
	iftruefwd FieldLabHealingMachine_HealParty
	endtext

FieldLabHealingMachine_HealParty:
	special HealParty
	special SaveMusic
	playmusic MUSIC_NONE
	setval 1 ; Machine is in Pawpaw's Lab
	special HealMachineAnim
	pause 30
	special RestoreMusic
	endtext

; PawpawAfterTheftDoneScript:
; 	waitendtext

; PawpawAfterTheftScript:
; 	writetext PawpawAfterTheftText1
; 	checkkeyitem MYSTERY_EGG
; 	iffalse PawpawAfterTheftDoneScript
; 	promptbutton
; 	writetext PawpawAfterTheftText2
; 	waitbutton
; 	takekeyitem MYSTERY_EGG
; 	scall PawpawJumpBackScript1
; 	writetext PawpawAfterTheftText3
; 	waitbutton
; 	scall PawpawJumpBackScript2
; 	writetext PawpawAfterTheftText4
; 	promptbutton
; 	writetext PawpawAfterTheftText5
; 	promptbutton
; 	setevent EVENT_GAVE_MYSTERY_EGG_TO_PAWPAW
; 	clearevent EVENT_BROOKE_ROUTE_29
; 	setmapscene ROUTE_29, $1
; 	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
; 	setevent EVENT_ROUTE_30_BATTLE
; 	setscene $2
; 	jumpopenedtext PawpawAfterTheftText6

; ShowPawpawTogepiScript:
; 	writetext ShowPawpawTogepiText1
; 	waitbutton
; 	closetext
; 	showemote EMOTE_SHOCK, FIELDLAB_PAWPAW, 15
; 	setevent EVENT_SHOWED_TOGEPI_TO_PAWPAW
; 	opentext
; 	writetext ShowPawpawTogepiText2
; 	promptbutton
; 	writetext ShowPawpawTogepiText3
; 	promptbutton
; PawpawGiveOddSouvenirScript:
; 	writetext PawpawGiveOddSouvenirText1
; 	promptbutton
; 	verbosegiveitem ODD_SOUVENIR
; 	iffalse_endtext
; 	setevent EVENT_GOT_ODD_SOUVENIR_FROM_PAWPAW
; 	writetext PawpawGiveOddSouvenirText2
; 	waitbutton
; 	checkevent EVENT_BATTLED_PROF_PAWPAW
; 	iffalsefwd PawpawAlsoBattleScript
; 	endtext

; PawpawGiveMasterBallScript:
; 	writetext PawpawGiveMasterBallText1
; 	promptbutton
; 	verbosegiveitem MASTER_BALL
; 	iffalse_endtext
; 	setevent EVENT_GOT_MASTER_BALL_FROM_PAWPAW
; 	writetext PawpawGiveMasterBallText2
; 	waitbutton
; 	checkevent EVENT_BATTLED_PROF_PAWPAW
; 	iftrue_endtext
; PawpawAlsoBattleScript:
; 	writetext PawpawByTheWayText
; 	waitbutton
; 	sjumpfwd PawpawAskBattleScript

; PawpawCheckBattleScript:
; 	checkevent EVENT_BATTLED_PROF_PAWPAW
; 	iftrue_jumpopenedtext PawpawText_CallYou
; 	checkevent EVENT_BEAT_SAL
; 	iffalse_jumpopenedtext PawpawText_CallYou
; 	writetext PawpawBeforeBattleText
; 	waitbutton
; PawpawAskBattleScript:
; 	setevent EVENT_PAWPAW_WANTS_TO_BATTLE
; 	writetext PawpawAskBattleText
; 	yesorno
; 	iffalse_jumpopenedtext PawpawRefusedBattleText
; 	writetext PawpawSeenText
; 	waitbutton
; 	closetext
; 	winlosstext PawpawWinText, PawpawLoseText
; 	setlasttalked FIELDLAB_PAWPAW
; 	readvar VAR_BADGES
; 	ifless 2, .Team1
; 	ifless 4, .Team2
; 	ifless 8, .Team3
; 	loadtrainer PROF_PAWPAW, 4
; 	sjumpfwd .GotTeam
; .Team1:
; 	loadtrainer PROF_PAWPAW, 1
; 	sjumpfwd .GotTeam
; .Team2:
; 	loadtrainer PROF_PAWPAW, 2
; 	sjumpfwd .GotTeam
; .Team3:
; 	loadtrainer PROF_PAWPAW, 3
; .GotTeam:
; 	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
; 	clearevent EVENT_PAWPAW_WANTS_TO_BATTLE
; 	setevent EVENT_BATTLED_PROF_PAWPAW
; 	startbattle
; 	reloadmap
; 	special HealParty
; 	jumptextfaceplayer PawpawAfterBattleText

; PawpawGiveTicketScript:
; 	writetext PawpawGiveTicketText1
; 	promptbutton
; 	verbosegivekeyitem S_S_TICKET
; 	writetext PawpawGiveTicketText2
; 	waitbutton
; 	closetext
; 	showemote EMOTE_SHOCK, FIELDLAB_PAWPAW, 15
; 	special Special_FadeOutMusic
; 	pause 10
; 	readvar VAR_FACING
; 	ifequalfwd UP, .Shortest
; 	ifequalfwd DOWN, .Longest
; 	disappear FIELDLAB_BROOKE
; 	moveobject FIELDLAB_BROOKE, 4, 7
; 	scall .BrookeEntryShort
; 	scall .BrookeAnnouncesGymChallenge
; 	turnobject PLAYER, RIGHT
; 	sjumpfwd .Continue

; .Longest
; 	disappear FIELDLAB_BROOKE
; 	moveobject FIELDLAB_BROOKE, 4, 6
; 	appear FIELDLAB_BROOKE
; 	applymovement FIELDLAB_BROOKE, BrookeRunsInMoreMovement
; 	turnobject FIELDLAB_PAWPAW, UP
; 	turnobject FIELDLAB_BROOKE, RIGHT
; 	turnobject PLAYER, LEFT
; 	scall .BrookeAnnouncesGymChallenge
; 	turnobject PLAYER, DOWN
; 	sjumpfwd .Continue

; .Shortest
; 	disappear FIELDLAB_BROOKE
; 	moveobject FIELDLAB_BROOKE, 5, 8
; 	scall .BrookeEntryShort
; 	scall .BrookeAnnouncesGymChallenge
; 	turnobject PLAYER, UP

; .Continue
; 	faceplayer
; 	playmusic MUSIC_PROF_PAWPAW
; 	showtext PawpawAfterTicketText
; 	setevent EVENT_BROOKE_IN_HER_ROOM
; 	setevent EVENT_GOT_SS_TICKET_FROM_PAWPAW
; 	end

; .BrookeAnnouncesGymChallenge
; 	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
; 	showtext BrookeAnnouncesGymChallengeText
; 	applymovement FIELDLAB_BROOKE, BrookeLeavesMovement
; 	disappear FIELDLAB_BROOKE
; 	pause 10
; 	end

; .BrookeEntryShort
; 	appear FIELDLAB_BROOKE
; 	applymovement FIELDLAB_BROOKE, BrookeRunsInMovement
; 	turnobject FIELDLAB_PAWPAW, DOWN
; 	turnobject FIELDLAB_BROOKE, UP
; 	turnobject PLAYER, DOWN
; 	end

; PawpawJumpBackScript1:
; 	closetext
; 	readvar VAR_FACING
; 	ifequalfwd DOWN, PawpawJumpDownScript
; 	ifequalfwd UP, PawpawJumpUpScript
; 	ifequalfwd LEFT, PawpawJumpLeftScript
; 	ifequalfwd RIGHT, PawpawJumpRightScript
; 	end

; PawpawJumpBackScript2:
; 	closetext
; 	readvar VAR_FACING
; 	ifequalfwd DOWN, PawpawJumpUpScript
; 	ifequalfwd UP, PawpawJumpDownScript
; 	ifequalfwd LEFT, PawpawJumpRightScript
; 	ifequalfwd RIGHT, PawpawJumpLeftScript
; 	end

; PawpawJumpUpScript:
; 	applymovement FIELDLAB_PAWPAW, PawpawJumpUpMovement
; 	opentext
; 	end

; PawpawJumpDownScript:
; 	applymovement FIELDLAB_PAWPAW, PawpawJumpDownMovement
; 	opentext
; 	end

; PawpawJumpLeftScript:
; 	applymovement FIELDLAB_PAWPAW, PawpawJumpLeftMovement
; 	opentext
; 	end

; PawpawJumpRightScript:
; 	applymovement FIELDLAB_PAWPAW, PawpawJumpRightMovement
; 	opentext
; 	end

BrookeBattleScript:
	turnobject FIELDLAB_BROOKE, DOWN
	playmusic MUSIC_LYRA_ENCOUNTER_HGSS
	showtext FieldLabBrookeChallengeText
	applymovement FIELDLAB_BROOKE, BrookeBattleMovement
	turnobject PLAYER, RIGHT
	winlosstext FieldLabBrookeWinText, FieldLabBrookeLossText
	setlasttalked FIELDLAB_BROOKE
	checkevent EVENT_GOT_GLUTTLE_FROM_PAWPAW
	iftruefwd .Gluttle
	checkevent EVENT_GOT_CUPICO_FROM_PAWPAW
	iftruefwd .Cupico
	loadtrainer BROOKE1, BROOKE1_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	iftruefwd .AfterYourDefeat
	sjumpfwd .AfterVictorious

.Gluttle:
	loadtrainer BROOKE1, BROOKE1_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	iftruefwd .AfterVictorious
	sjumpfwd .AfterYourDefeat

.Cupico:
	loadtrainer BROOKE1, BROOKE1_3
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	iftruefwd .AfterVictorious
	sjumpfwd .AfterYourDefeat

.AfterVictorious:
	showtext FieldLabBrookeText_YouWon
	sjumpfwd .FinishBrooke

.AfterYourDefeat:
	showtext FieldLabBrookeText_YouLost
.FinishBrooke:
	turnobject FIELDLAB_BROOKE, UP
	opentext
	writetext FieldLabBrookeThankYouText
	waitbutton
	turnobject FIELDLAB_BROOKE, LEFT
	writetext FieldLabBrookeSeeYouText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement FIELDLAB_BROOKE, BrookeLeavesMovement
	disappear FIELDLAB_BROOKE
	special HealParty
	setscene SCENE_FIELDLAB_AIDE_GIVES_POTION
	playmapmusic
	end

AideScript_WalkPotions1:
	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotions
	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotions2:
	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotions
	applymovement FIELDLAB_PAWPAWS_AIDE, AideWalksLeft2
	end

AideScript_GivePotions:
	opentext
	writetext AideText_GiveYouPotions
	promptbutton
	verbosegiveitem POTION
	setscene SCENE_FIELDLAB_NOOP
	jumpopenedtext AideText_AlwaysBusy

FieldAideScript:
	; checkevent EVENT_GOT_RIVALS_EGG
	; iftrue_jumptextfaceplayer AideText_AlwaysBusy
	; checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	; iftrue_jumptextfaceplayer AideText_TheftTestimony
	jumptextfaceplayer AideText_AlwaysBusy

FieldLabBrookeScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_PAWPAW
	iffalse_jumptextfaceplayer FieldLabBrookeWhichPokemonText
	jumpthistextfaceplayer

	text "Your #mon"
	line "looks cute too!"
	done


FieldLabPC:
	jumptext FieldLabPCText

FieldLabWindow:
	jumptext FieldLabWindowText

FieldLab_WalkUpToPawpawMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

BrookePicksCupicoMovement:
	step_up
	step_right
	step_up
	step_end

BrookePicksGluttleMovement:
	step_up
	step_up
	step_end

BrookePicksFlicklitMovement:
	step_up
	step_left
	step_up
	step_end

BrookeAfterCupicoMovement:
	step_down
	step_left
	turn_head_up
	step_end

BrookeAfterGluttleMovement:
	step_down
	turn_head_up
	step_end

BrookeAfterFlicklitMovement:
	step_down
	step_right
	turn_head_up
	step_end

BrookeBattleMovement:
	step_down
	turn_head_left
	step_end

BrookeLeavesMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

; BrookeRunsInMoreMovement:
; 	step_up
; BrookeRunsInMovement:
; 	step_up
; 	step_up
; 	step_up
; 	step_up
; 	step_end

; BrookeStepsAsideMovement:
; 	step_left
; 	turn_head_right
; 	step_end

; OfficerLeavesMovement:
; 	step_down
; 	step_down
; 	step_down
; 	step_down
; 	step_down
; 	step_end

AideWalksRight1:
	step_right
	step_right
	step_end

AideWalksRight2:
	step_right
	step_right
	step_right
	step_end

AideWalksLeft1:
	step_left
	step_left
	turn_head_up
	step_end

AideWalksLeft2:
	step_left
	step_left
	step_left
	turn_head_up
	step_end

; AideWalksDownMovement:
; 	step_right
; 	step_right
; 	step_down
; 	step_end

; AideWalksBackMovement:
; 	step_up
; 	step_left
; 	step_left
; 	step_end

; PawpawJumpUpMovement:
; 	fix_facing
; 	run_step_up
; 	remove_fixed_facing
; 	step_end

; PawpawJumpDownMovement:
; 	fix_facing
; 	run_step_down
; 	remove_fixed_facing
; 	step_end

; PawpawJumpLeftMovement:
; 	fix_facing
; 	run_step_left
; 	remove_fixed_facing
; 	step_end

; PawpawJumpRightMovement:
; 	fix_facing
; 	run_step_right
; 	remove_fixed_facing
; 	step_end

FieldLab_WalkToPlayer:
	step_right
	step_up
	step_right
	step_end

FieldLab_PawpawToDefaultPositionMovement:
	step_up
	step_up
	step_right
	step_right
	turn_head_down
	step_end

AfterFlicklitMovement:
	step_down
	turn_head_up
	step_end

AfterGluttleMovement:
	step_left
	step_down
	turn_head_up
	step_end

AfterCupicoMovement:
	step_left
	step_left
	step_down
	turn_head_up
	step_end

PawpawText_Intro:
	text "Pawpaw: Hi <PLAYER>!"
	line "I'm Prof.Pawpaw!"

	para "I'd like to ask"
	line "a favor of you."

	para "You see…"

	para "I'm writing a"
	line "paper that I want"

	para "to present at a"
	line "conference."

	para "But there are some"
	line "things I don't"

	para "quite understand"
	line "yet."

	para "So!"

	para "I'd like you"
	line "to raise #mon"

	para "that I recently"
	line "caught."
	done

PawpawText_Accepted:
	text "Thanks, <PLAYER>!"

	para "You're a great"
	line "help!"
	done

PawpawText_Refused:
	text "But… Please, I"
	line "need your help!"
	done

PawpawText_ResearchAmbitions:
	text "When I announce my"
	line "findings, I'm sure"

	para "we'll delve a bit"
	line "deeper into the"

	para "many mysteries of"
	line "#mon."

	para "You can count on"
	line "it!"
	done

PawpawText_GotAnEmail:
	text "Oh, hey! I got an"
	line "e-mail!"

	para "………………"
	line "Hm… Uh-huh…"

	para "OK…"
	done

PawpawText_MissionFromPoplar:
	text "Hey, listen."

	para "I have a coll-"
	line "eague named "
	cont "Prof. Poplar."

	para "She says she's"
	line "got something"

	para "urgent for me"
	line "that can't be"
	cont "sent via email."

	para "We've just"
	line "set up the"

	para "Field Lab and"
	line "I can't afford"
	cont "to leave yet."

	para "It's prolly"
	line "nothin' but"

	para "she's never"
	line "been wrong"
	cont "before..."

	para "Now <PLAYER>, I"
	line "reckon we just"

	para "met and all, but"
	line "would you go"

	para "for me and see"
	line "what Prof.Poplar"
	cont "wants?"
	done

PawpawText_ChooseAPokemon:
	text "HOOHOO!"
	para "Okie dokie,"
	line "<PLAYER>, the"

	para "#mon contained"
	line "in these Balls"

	para "are newly caught"
	line "so that means"

	para "you'll be that"
	line "#mon's first"
	cont "partner, <PLAYER>!"

	para "Go 'head."
	line "Pick one!"
	done

PawpawText_LetYourMonBattleIt:
	text "If a wild #mon"
	line "appears, let your"
	cont "#mon battle it!"
	done

PawpawWhereGoingText:
	text "Pawpaw: Wait!"
	line "Where ya goin'?"
	done

TakeFlicklitText:
	text "Pawpaw: So it's"
	line "Flicklit, the"
	cont "fire #mon?"
	done

TakeGluttleText:
	text "Pawpaw: You want"
	line "Gluttle, the"
	cont "water #mon?"
	done

TakeCupicoText:
	text "Pawpaw: You like"
	line "Cupico, the"
	cont "grass #mon?"
	done

DidntChooseStarterText:
	text "Pawpaw: Think it"
	line "over carefully."

	para "Your first partner"
	line "is important."
	done

ChoseStarterText:
	text "Pawpaw: I think"
	line "that's a great"
	cont "#mon too!"
	done

PawpawDirectionsText1:
	text "Poplar is at"
	line "the Academy near"

	para "Olsteeton, the"
	line "next city over."

	para "It's almost a"
	line "direct route"

	para "there, so you"
	line "can't miss it."

	para "But just in case,"
	line "here's my phone"

	para "number. Call me if"
	line "anything comes up!"
	done

PawpawDirectionsText2:
	text "If your #mon is"
	line "hurt, you should"

	para "heal it with that"
	line "machine over"
	cont "yonder."

	para "Feel free to use"
	line "it anytime."
	done

PawpawDirectionsText3:
	text "<PLAYER>, I'm"
	line "countin' on ya!"
	done

FieldLabFellowText:
	text "I'm a recent"
	line "academy grad."

	para "I was lucky"
	line "to get this"

	para "fellowship under"
	line "Prof. Pawpaw."
	done
GotFieldNumberText:
	text "<PLAYER> got Pawpaw's"
	line "phone number."
	done

PawpawDescribesPoplarText:
	text "Prof. Poplar"
	line "studies object-"
	cont "like #mon."

	para "She was a part"
	line "of the team"

	para "that discovered"
	line "the #mon,"
	cont "Trubbish, in the"
	cont "Unova Region."
	done

PawpawPokeBallText:
	text "It contains a"
	line "#mon caught by"
	cont "Prof.Pawpaw."
	done

FieldLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

FieldLabHealingMachineText2:
	text "Would you like to"
	line "heal your #mon?"
	done

PawpawText_CallYou:
	text "Pawpaw: <PLAYER>,"
	line "I'll call you"
	cont "if anything"
	cont "comes up."
	done

FieldLabTravelTip1Text:
	text "Travel Tip 1:"

	para "Press Start to"
	line "open the Menu."
	done

FieldLabTravelTip2Text:
	text "Travel Tip 2:"

	para "Record your trip"
	line "with Save!"
	done

FieldLabTravelTip3Text:
	text "Travel Tip 3:"

	para "Open your Bag and"
	line "press Select to"
	cont "move items."
	done

FieldLabTravelTip4Text:
	text "Travel Tip 4:"

	para "Check your #mon"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

FieldLabTrashcanText:
	text "The wrapper from"
	line "the snack"

	para "Prof.Pawpaw"
	line "ate is in there…"
	done

FieldLabPCText:
	text "The screen says"
	line "Indicator #mon"

	para "Does the presence"
	line "of certain #mon"

	para "correlate with"
	line "biome health?"
	done

FieldLabWindowText:
	text "Light streams"
	line "in through the"

	para "recently in-"
	line "stalled window."
	done

; PawpawGiveMasterBallText1:
; 	text "Pawpaw: Hi, <PLAYER>!"
; 	line "Thanks to you, my"

; 	para "research is going"
; 	line "great!"

; 	para "Take this as a"
; 	line "token of my"
; 	cont "appreciation."
; 	done

; PawpawGiveMasterBallText2:
; 	text "The Master Ball is"
; 	line "the best!"

; 	para "It's the ultimate"
; 	line "Ball! It'll catch"

; 	para "any #mon with-"
; 	line "out fail."

; 	para "It's given only to"
; 	line "recognized #mon"
; 	cont "researchers."

; 	para "I think you can"
; 	line "make much better"

; 	para "use of it than I"
; 	line "can, <PLAYER>!"
; 	done

; BrookeAnnouncesGymChallengeText:
; 	text "Brooke: There you"
; 	line "are, <PLAYER>!"

; 	para "I saw your battle"
; 	line "with the Champion"
; 	cont "on TV."

; 	para "You were incred-"
; 	line "ible!"

; 	para "It really inspired"
; 	line "me, <PLAYER>."

; 	para "Even if I can't"
; 	line "reach that level…"
; 	cont "I want to try."

; 	para "I want to see what"
; 	line "I'm capable of."

; 	para "Prof.Pawpaw, I'm"
; 	line "sorry I can't keep"
; 	cont "helping out here."

; 	para "I'm going to"
; 	line "challenge all the"

; 	para "Gyms in Johto and"
; 	line "make it to the"
; 	cont "#mon League!"

; 	para "Wish me luck!"
; 	line "See you later!"
; 	done

; PawpawBeforeBattleText:
; 	text "Pawpaw: <PLAYER>!"
; 	line "How is your #-"
; 	cont "journey so far?"
; 	done

; PawpawByTheWayText:
; 	text "While you're here,"
; 	line "<PLAYER>…"
; 	done

; PawpawAskBattleText:
; 	text "I could use some"
; 	line "practice battling"

; 	para "a talented trainer"
; 	line "like yourself."

; 	para "How about it,"
; 	line "<PLAYER>?"
; 	done

; PawpawSeenText:
; 	text "Show me how much"
; 	line "you've grown since"

; 	para "you left New Bark"
; 	line "Town!"
; 	done

; PawpawWinText:
; 	text "Astounding!"
; 	done

; PawpawLoseText:
; 	text "Were you going"
; 	line "easy on me?"
; 	done

; PawpawRefusedBattleText:
; 	text "If your #mon"
; 	line "need healing,"

; 	para "just use the"
; 	line "machine here."
; 	done

; PawpawAfterBattleText:
; 	text "Pawpaw: I'm proud"
; 	line "of you, <PLAYER>."

; 	para "I was right to"
; 	line "trust you with"
; 	cont "a #mon!"
; 	done

;unchanged
AideText_GiveYouPotions:
	text "<PLAYER>, I want"
	line "you to have this"
	cont "for your errand."
	done

;unchanged
AideText_AlwaysBusy:
	text "There's only a few"
	line "of us, so we're"
	cont "always busy."
	done

FieldLabBrookeWhichPokemonText:
	text "Which #mon are"
	line "you going to pick,"
	cont "<PLAYER>?"
	done

BrookeChoosesStarterText:
	text "Brooke: Then I'll"
	line "pick this one!"
	done

BrookeReceivedStarterText:
	text "Brooke received"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

BrookeNicknamedCupicoText:
	text "Brooke: It's so"
	line "...cute..."
	done

BrookeNicknamedFliklitText:
	text "Brooke: It's so"
	line "...cute..."
	done

BrookeNicknamedGluttleText:
	text "Brooke: It's so"
	line "...cute..."
	done


FieldLabBrookeChallengeText:
	text "Brooke: <PLAYER>!"
	line "Let's get to know"

	para "our #mon with"
	line "a battle!"
	done

FieldLabBrookeWinText:
	text "Good job,"
	line "<PLAYER>!"
	done

FieldLabBrookeLossText:
	text "Yay! I won!"
	done

FieldLabBrookeText_YouWon:
FieldLabBrookeText_YouLost:
	text "That was an"
	line "exciting battle!"
	done

FieldLabBrookeThankYouText:
	text "Thank you for the"
	line "#mon, Prof."
	cont "Elm."
	done

FieldLabBrookeSeeYouText:
	text "<PLAYER>, I'll"
	line "see you later!"

	para "Have fun on your"
	line "errand!"
	done

; FieldLabBrookeTheftInnocentText:
; 	text "Brooke: Hold on!"
; 	line "<PLAYER> has noth-"
; 	cont "ing to do with it!"

; 	para "I saw a red-haired"
; 	line "boy spying on the"
; 	cont "building!"
; 	done

; FieldLabBrookeTheftGoodbyeText:
; 	text "Brooke: <PLAYER>,"
; 	line "I'm glad he under-"

; 	para "stood that you're"
; 	line "innocent."

; 	para "I hope he makes"
; 	line "the thief return"
; 	cont "that #mon…"

; 	para "Well then, see"
; 	line "you later!"
; 	done

; if !DEF(DEBUG)
; 	para "Prof.Poplar gave you"
; 	line "a #dex?"

; 	para "<PLAYER>, is that"
; 	line "true? Th-that's"
; 	cont "incredible!"

; 	para "He is superb at"
; 	line "seeing the poten-"
; 	cont "tial of people as"
; 	cont "trainers."

; 	para "Wow, <PLAYER>. You"
; 	line "may have what it"

; 	para "takes to become"
; 	line "the Champion."

; 	para "You seem to be"
; 	line "getting on great"
; 	cont "with #mon too."

; 	para "You should take"
; 	line "the #mon Gym"
; 	cont "challenge."

; 	para "The closest Gym"
; 	line "would be the one"
; 	cont "in Violet City."
; endc
; 	done

; PawpawAfterTheftText6:
; 	text "…<PLAYER>. The"
; 	line "road to the"

; 	para "championship will"
; 	line "be a long one."

; 	para "Before you leave,"
; 	line "make sure that you"
; 	cont "talk to your mom."

; 	para "And give me a call"
; 	line "sometimes too."

; 	para "I can tell you all"
; 	line "about my research"

; 	para "on how #mon"
; 	line "evolve!"
; 	done


; PawpawWaitingEggHatchText:
; 	text "Pawpaw: Hey, has that"
; 	line "Egg changed any?"
; 	done

; PawpawThoughtEggHatchedText:
; 	text "<PLAYER>? I thought"
; 	line "the Egg hatched."

; 	para "Where is the"
; 	line "#mon?"
; 	done

; ShowPawpawTogepiText1:
; 	text "Pawpaw: <PLAYER>, you"
; 	line "look great!"
; 	done

; ShowPawpawTogepiText2:
; 	text "What?"
; 	line "That #mon?!"
; 	done

; ShowPawpawTogepiText3:
; 	text "The Egg hatched!"
; 	line "So, #mon are"
; 	cont "born from Eggs…"

; 	para "No, perhaps not"
; 	line "all #mon are."

; 	para "Wow, there's still"
; 	line "a lot of research"
; 	cont "to be done."
; 	done