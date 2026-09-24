NationalForest1_MapScriptHeader:
    def_scene_scripts
    scene_script NationalForest1NoopScene, SCENE_NATIONAL_FOREST_1_NOOP
    scene_script NationalForest1LoggingScene, SCENE_NATIONAL_FOREST_1_LOGGING

    def_callbacks

    def_warp_events
	warp_event 21,  5, OLSTEETON_FOREST_GATE, 3

    def_coord_events
	coord_event  8, 14, SCENE_NATIONAL_FOREST_1_LOGGING, WalkPastPoplarScript
	coord_event 10, 14, SCENE_NATIONAL_FOREST_1_LOGGING, WalkPastPoplarScript

    def_bg_events
	bg_event 25,  7, BGEVENT_JUMPTEXT, NationalForest1EntranceSignText
	bg_event 30, 18, BGEVENT_JUMPTEXT, NationalForest1PondSignText
	bg_event 21, 17, BGEVENT_ITEM + SUPER_POTION, EVENT_NATIONAL_FOREST1_HIDDEN_SUPER_POTION

    def_object_events
	object_event  9, 14, SPRITE_POPLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ForestPoplarScript, EVENT_JOLLY_SODS_POPLAR
	object_event  5, 25, SPRITE_LUMBERJACK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LumberjackBossScript, EVENT_DEFEATED_LUMBERJACKS
	object_event  8, 20, SPRITE_LUMBERJACK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLumberjackVince, EVENT_JOLLY_SODS_POPLAR
	object_event  5, 22, SPRITE_LUMBERJACK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLumberjackOswald, EVENT_JOLLY_SODS_POPLAR
	object_event 14,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ConcernedCitizenScript, -1
	; pokemon_event  7, 15, CUPICO, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_GREEN, NatForest1CupicoText, -1
	object_event 29, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NatForest1FishermanText, -1
	object_event 30, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NatForest1Fisherman2Text, -1
	object_event 23, 14, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, NatForest1GirlText, -1
	pokemon_event 15, 6, MEOWTH, FOLKORAN_FORM, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_GRAY, NatForest1MeowthText, -1
	object_event 22, 26, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerVeteranFSue, -1
	itemball_event 31, 27, ANTIDOTE, 1, EVENT_NATIONAL_FOREST1_ANTIDOTE

    object_const_def
    const NATIONALFOREST1_POPLAR
    const NATIONALFOREST1_LUMBERJACK

NationalForest1NoopScene:
NationalForest1LoggingScene:
	end

; ||Scripts||

ConcernedCitizenScript:
    checkevent EVENT_DEFEATED_LUMBERJACKS
    iftrue_jumptextfaceplayer CCText2
    jumptextfaceplayer CCText1
    end

LumberjackBossScript:
    faceplayer
    opentext
	checkevent EVENT_BEAT_LUMBERJACK_BRETT
	iftrue_jumptextfaceplayer .BrettAfterText
	checkevent EVENT_BEAT_LUMBERJACK_VINCE
	iftruefwd .Battle
    jumptextfaceplayer GoonText1
.Battle:
    writetext GoonText1
	waitbutton
	closetext
	winlosstext .BrettBeatenText, 0
	setlasttalked NATIONALFOREST1_LUMBERJACK
	loadtrainer LUMBERJACK, BRETT
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LUMBERJACK_BRETT
	opentext
.Beaten:
	writetext .BrettAfterText
	promptbutton
	setevent EVENT_DEFEATED_LUMBERJACKS
    setevent EVENT_JOLLY_SODS_POPLAR
    setscene SCENE_NATIONAL_FOREST_1_LOGGING
    clearevent EVENT_POPLAR_IN_CLASSROOM
	addcellnum PHONE_TOLLFREE
	opentext
	writetext GotForestNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	end

.BrettAfterText: 
    text "Geez, find some-"
    line "one else to gripe"
    cont "at!"

    para "Go call the"
    line "company number"
    
    para "if you've got a"
    line "complaint!"
    done

.BrettBeatenText:
	text "Argh! This is too"
	line "much headache!"

    para "This was supposed"
    line "to be a simple job"
	done

WalkPastPoplarScript:
    sjumpfwd ForestPoplarScript
	end

ForestPoplarScript:
	showemote EMOTE_SHOCK, NATIONALFOREST1_POPLAR, 15
    faceplayer
    opentext
    checkevent EVENT_DEFEATED_LUMBERJACKS
    iftruefwd .MissionDone
    setscene SCENE_NATIONAL_FOREST_1_NOOP
	writetext ForestPoplarText1
    waitbutton
	showemote EMOTE_SAD, NATIONALFOREST1_POPLAR, 15
    jumpopenedtext ForestPoplarText2
.MissionDone:
    faceplayer
	checkevent EVENT_GOT_HM01_CUT
	iftrue_jumptextfaceplayer Text_ForestPoplarTalkAfter
	writetext Text_ForestPoplarCut
	promptbutton
	verbosegivetmhm HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext Text_ForestPoplarOutro
	waitbutton
	closetext
	setevent EVENT_JOLLY_SODS_POPLAR
	clearevent EVENT_POPLAR_IN_CLASSROOM
    setmapscene OLSTEETON, SCENE_OLSTEETON_ASHER_CONFRONT
    setscene SCENE_NATIONAL_FOREST_1_NOOP
	end

ForestPoplarText1:
	text "Oh, <PLAYER>!"
	line "Thank you for"
    cont "coming!"

    para "There's a company"
    line "logging here, but"

    para "it is decimating"
    line "the habitat of"

    para "the Bug #mon"
    line "that live here!"
	done

ForestPoplarText2:
	text "I tried explaining"
	line "but they won't"
    cont "listen!"

    para "They told me to"
    line "battle them or"
    cont "buzz off, but I"

    para "left my #mon"
    line "back at the"
    cont "university..."

    para "Please help me"
    line "get them to stop!"
	done

Text_ForestPoplarTalkAfter:
	text "Don't use it to"
	line "destroy #mon"
    cont "habitats...hah..."
	done

Text_ForestPoplarOutro:
	text "HM01 contains Cut."
	line "Use it to clear"

    para "any invasive trees"
    line "blocking your way!"

    para "I'll be headed"
    line "back to campus"
    cont "shortly."

    para "Thanks again for"
    line "your assistance!"
	done

Text_ForestPoplarCut:
	text "<PLAYER>, you did"
	line "it! Well done!"

    para "Please accept this"
    line "HM as thanks for"
    cont "your assistance!"

    para "And please do try"
    line "to ignore the"
    cont "irony..."
	done


; ||Dialogue||

CCText1:
    text "Hey kid! Get a"
    line "load of this!"

    para "This whole region"
    line "used to be forests"
    cont "and woodlands!"

    para "Nowadays we can't"
    line "even expect our"
    
    para "own regional parks"
    line "to stay untouched!"
    done

CCText2:
    text "Such a darn shame"
    line "to see all this..."
    done

GoonText1:
    text "C'mon, c'mon,"
    line "just stay out of"
    cont "the way, now."

    para "We received"
    line "permission from"
    
    para "the region to cut"
    line "'non-threatening'"
    
    para "amounts of non-"
    line "vital lumber."

    para "It's just some"
    line "trees, anyway."
    done

; NatForest1CupicoText:
;     text "This Cupico"
;     line "sadly looks out"
    
;     para "across all the"
;     line "logged trees."
;     done

NatForest1FishermanText:
    text "Be careful in"
    line "streams and"
    
    para "ponds like"
    line "this one!"

    para "#mon like to"
    line "hide in the"
    cont "shallow water!"
    done

NatForest1Fisherman2Text:
    text "I was wading"
    line "in the pond"
    
    para "earlier, and"
    line "a #mon nearly"
    
    para "nibbled off my"
    line "toe!"
    done

NatForest1GirlText:
    text "I used to come"
    line "here all the time"

    para "with Meowth, but"
    line "its been so loud"
    cont "lately."

    para "It just seems"
    line "different now."
    done

NatForest1MeowthText:
    text "Meowth: MrrOOWW!"
    done


; ||Object Text||

NationalForest1EntranceSignText:
    text "Jolly Sods"
    line "Regional Park"
    done

NationalForest1PondSignText:
    text "Jolly Pond"

    para "Get your feet wet"
    line "but watch out for"
    cont "wild #mon!"
    done

GotForestNumberText:
	text "<PLAYER> got a"
	line "Toll-Free"
	cont "number."
	done


; ||Battles||

GenericTrainerVeteranFSue:
    generictrainer VETERANF, SUE, EVENT_BEAT_VETERANF_SUE, .SeenText, .BeatenText
    
    text "Well, since you"
    line "want to know so"
    cont "badly..."

    para "I was looking for"
    line "berries!"

    para "Don't tell no one"
    line "about this spot!"
    done

.SeenText:
    text "You're the nosy"
    line "sort, aren't ya'!"
    done

.BeatenText:
    text "Fine! I'll tell ya"
    line "my secret..."
    done

GenericTrainerLumberjackVince:
	generictrainer LUMBERJACK, VINCE, EVENT_BEAT_LUMBERJACK_VINCE, .SeenText, .BeatenText

	text "Move back home"
	line "they said... it'll"

    para "be good for you"
    line "they said..."
	done

.SeenText:
	text "Ayyyyyyy!"
	line "I'm choppin' here!"
	done

.BeatenText:
	text "I should've just"
	line "stayed in Unova."
	done

GenericTrainerLumberjackOswald:
    generictrainer LUMBERJACK, OSWALD, EVENT_BEAT_LUMBERJACK_OSWALD, .SeenText, .BeatenText

	text "Why you messin'"
	line "with us anyway?"

    para "You a Harcrow spy"
    line "or somethin'?"
	done

.SeenText:
	text "I'll teach ya not"
	line "to mess with the"
    cont "Morcap family!"
	done

.BeatenText:
	text "Guess we should've"
	line "brought some more"
    cont "muscle..."
	done
