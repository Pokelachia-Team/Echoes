OlsteetonUniOfficePoplar_MapScriptHeader:
	def_scene_scripts
	scene_script OlsteetonUniOfficePoplarDexScene, SCENE_UNI_OFFICE_POPLAR_DEX
	scene_script OlsteetonUniOfficePoplarNoopScene, SCENE_UNI_OFFICE_POPLAR_NOOP


	def_callbacks

	def_warp_events
	warp_event  2,  5, OLSTEETON_UNI_OFFICE, 4
	warp_event  3,  5, OLSTEETON_UNI_OFFICE, 4
	
	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarSignpost1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarSignpost2Text
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarBookshelfText
	bg_event  2,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeProfPoplarBookshelfText

	def_object_events
	object_event  4,  2, SPRITE_POPLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_POPLAR_OFFICE_FIR
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_POPLAR_OFFICE_FIR
	object_event  4,  4, SPRITE_FIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_POPLAR_OFFICE_FIR
	object_event  5,  4, SPRITE_ASHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_POPLAR_OFFICE_FIR

	object_const_def
	const POPLAROFFICE_POPLAR
	const POPLAROFFICE_POKEDEX
	const POPLAROFFICE_FIR
	const POPLAROFFICE_ASHER

OlsteetonUniOfficePoplarDexScene:
	sdefer PoplarOffice_PoplarScript
OlsteetonUniOfficePoplarNoopScene:
	end

PoplarOffice_PoplarScript:
	applyonemovement PLAYER, step_up
	playmusic MUSIC_PROF_OAK
	showemote EMOTE_SHOCK, POPLAROFFICE_POPLAR, 15
	applymovement POPLAROFFICE_POPLAR, PoplarOffice_PoplarWalksToPlayer
	turnobject POPLAROFFICE_POPLAR, RIGHT
	turnobject PLAYER, LEFT
	showtext PoplarOffice_PoplarText1
	applymovement POPLAROFFICE_POPLAR, PoplarOffice_PoplarTakesPokedex
	turnobject POPLAROFFICE_POPLAR, RIGHT
	disappear POPLAROFFICE_POKEDEX
	pause 10
	applyonemovement POPLAROFFICE_POPLAR, step_down
	turnobject POPLAROFFICE_POPLAR, RIGHT
	pause 10
	opentext
	givespecialitem POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_POKEDEX_FROM_POPLAR
	writetext PoplarOffice_PoplarText2
	waitbutton
	; showtext PoplarOffice_PoplarHealText
	; special Special_FadeBlackQuickly
	; special Special_ReloadSpritesNoPalettes
	; playmusic MUSIC_HEAL
	; special HealParty
	; pause 60
	; special Special_FadeInQuickly
	; special RestartMapMusic
	sjumpfwd PoplarOffice_GivesDossier

PoplarOffice_GivesDossier:
	writetext PoplarOffice_PoplarText3
	promptbutton
	waitsfx
	verbosegivekeyitem PROF_DOSSIER
	setevent EVENT_GOT_DOSSIER_FROM_POPLAR
	setmapscene OLSTEETON_UNI_CLASSROOM_BIO, SCENE_OLSTEETONUNICLASSROOMBIO_NOOP
	writetext PoplarOffice_PoplarText4
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POPLAROFFICE_POPLAR, PoplarOffice_PoplarExits
	playsound SFX_EXIT_BUILDING
	disappear POPLAROFFICE_POPLAR
	waitsfx
	special RestartMapMusic
	pause 15
	closetext
	sjumpfwd PoplarOffice_FirScript

PoplarOffice_FirScript:
	turnobject POPLAROFFICE_FIR, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext FirAskBattleText
	yesorno
	iffalsefwd .FinishFir
	writetext FirSeenText
	waitbutton
	closetext
	winlosstext FirWinText, FirLoseText
	setlasttalked POPLAROFFICE_FIR
	loadtrainer PROF_FIR, 1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	special HealParty
	opentext
	writetext FirAfterBattleText
	waitbutton
	sjumpfwd .FinishFir

.FinishFir:
	opentext
	writetext PoplarOfficeFirText_AlrightyThen
	waitbutton
	writetext FirTimeToGoText
	waitbutton
	turnobject POPLAROFFICE_FIR, RIGHT
	writetext FirSeeYouAsherText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POPLAROFFICE_FIR, FirLeavesMovement
	turnobject POPLAROFFICE_FIR, DOWN
	disappear POPLAROFFICE_FIR
	special HealParty
	playmapmusic
	closetext
	sjumpfwd PoplarOffice_AsherScript

PoplarOffice_AsherScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	applyonemovement POPLAROFFICE_ASHER, step_left
	turnobject PLAYER, RIGHT
	showtext PoplarOffice_AsherText1
	turnobject POPLAROFFICE_ASHER, UP
	opentext
	writetext PoplarOffice_AsherText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POPLAROFFICE_ASHER, PoplarOffice_AsherExits
	playsound SFX_EXIT_BUILDING
	disappear POPLAROFFICE_ASHER
	waitsfx
	special RestartMapMusic
	pause 15
	setscene SCENE_UNI_OFFICE_POPLAR_NOOP
	setevent EVENT_POPLAR_OFFICE_FIR
	; setmapscene FIELD_LAB, SCENE_FIELD_LAB_MAGIGOON
	; specialphonecall SPECIALCALL_DOSSIER ;pawpaw calls to bring docs back
	end

PoplarOffice_PoplarWalksToPlayer:
	step_left
	step_left
	step_down
	step_down
	step_end

PoplarOffice_PoplarTakesPokedex:
	step_up
	step_end

PoplarOffice_PoplarExits:
	step_down
	step_end

FirLeavesMovement:
	step_down
	step_left
	step_end

PoplarOffice_AsherExits:
	step_down
	step_left
	step_end

PoplarOffice_PoplarText1: ;partially unchanged
	text "Poplar: Aha!"
	line "come in <PLAYER>!"

	para "I'm Poplar! A"
	line "#mon researcher"

	para "This gentleman"
	line "behind you"

	para "is my colleague,"
	line "Prof. Fir."

	para "He studies"
	line "#mon fossils."

	para "And beside him is"
	line "his assistant,"
	cont "Asher."

	para "Oh? What's that?"
	line "A rare #mon?"

	para "Interesting..."

	para "I understand why"
	line "Prof.Pawpaw gave"

	para "you a #mon for"
	line "this errand."

	para "To researchers"
	line "like Prof.Pawpaw"

	para "and I, #mon are"
	line "our friends."

	para "However, there"
	line "are those that"

	para "choose to exploit"
	line "#mon, as well"
	cont "as our research..."

	para "You seem to be"
	line "dependable."

	para "I think you'd make"
	line "a fine assistant."

	para "This is the"
	line "latest version of"
	cont "#dex."

	para "It automatically"
	line "records data on"

	para "#mon you've"
	line "seen or caught."

	para "It's a hi-tech"
	line "encyclopedia!"

	para "All Professor's"
	line "assistants have"
	cont "one."
	done

PoplarOffice_PoplarText2: ;unchanged oak text
	text "Go meet many kinds"
	line "of #mon and"

	para "complete that"
	line "#dex!"
	done

PoplarOffice_PoplarText3:
	text "Now I'm entrusting"
	line "you with some"

	para "very important"
	line "documents."

	para "Please deliver"
	line "these to Prof."
	cont "Pawpaw as soon"
	cont "as possible."
	done

PoplarOffice_PoplarText4:
	text "Oops, I've stayed"
	line "too long."

	para "I have to get to"
	line "my next class!"

	para "<PLAYER>, I'm"
	line "counting on you!"
	done

PoplarOffice_PoplarHealText:
	text "Allow me to heal"
	line "your #mon."
	done

FirAskBattleText:
	text "Good to meet ya!"
	line "I'm Prof. Fir."

	para "I recently revived"
	line "this little guy,"

	para "and it's itchin'"
	line "for a battle"

	para "Would you please"
	line "indulge us,"
	cont "<PLAYER>?"
	done

FirSeenText:
	text "Alright Tirtouga,"
	line "it's your time"
	cont "to shine!"
	done

FirWinText:
	text "Incredible!"
	done

FirLoseText:
	text "Wow, I guess"
	line "Tirtouga was"
	cont "really excited!"
	done

FirAfterBattleText:
	text "Fir: Wowzers!"
	line "I'm sure that"
	cont "Tirtouga had fun"
	cont "and learned a lot!"
	done

FirRefusedBattleText:
	text "Ahh alright."
	line "Perhaps another"
	cont "time then..."
	done

PoplarOfficeFirText_AlrightyThen:
	text "Alrighty then."
	done

FirTimeToGoText:
	text "Well, I've got"
	line "to get back to"
	cont "my lab for now."

	para "Good to meet you,"
	line "<PLAYER>!"
	done

FirSeeYouAsherText:
	text "I'll see you"
	line "later, Asher."

	para "Don't forget"
	line "to prepare the"
	cont "slides for class!"
	done

PoplarOffice_AsherText1:
	text "Let's get one"
	line "thing straight."

	para "Just because you"
	line "and that flighty"
	cont "photographer have"

	para "been made Prof."
	line "assistants, it"
	cont "doesn't make us"
	cont "equals."
	done

PoplarOffice_AsherText2:
	text "Ugh. You're not"
	line "even worth my"
	cont "time to battle."

	para "My bug #mon"
	line "deserve better."

	para "Maybe if you"
	line "manage to get"
	cont "a gym badge."

	para "Pfft..."
	line "Not likely."
	done

OlsteetonUniOfficeProfPoplarBookText: 
	text "Needs text"
	done

OlsteetonUniOfficeProfPoplarSignpost1Text:
	text "It's a diploma of"
	line "#mon studies"

	para "from a university"
	line "in Unova."
	done

OlsteetonUniOfficeProfPoplarSignpost2Text:
	text "Please do not"
	line "borrow books"
	cont "without asking!"
	done

OlsteetonUniOfficeProfPoplarBookshelfText:
	text "Anatomy of object-"
	line "like #mon."
	para "By Anna Poplar"
	done
