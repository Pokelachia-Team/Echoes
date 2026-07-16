BrinesburgMagikorpOffice_MapScriptHeader:
	def_scene_scripts
	scene_script BrinesburgMagikorpOfficeFiredMagiGoonScene, SCENE_BRINESBURG_MAGIKORP_OFFICE_FIRED_MAGIGOON
	scene_script BrinesburgMagikorpOfficeNoopScene, SCENE_BRINESBURG_MAGIKORP_OFFICE_NOOP


	def_callbacks

	def_warp_events
	warp_event  6, 13, BRINESBURG, 16
	warp_event  7, 13, BRINESBURG, 16

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeSignText
	bg_event  8,  0, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeBrandText
	bg_event  2,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  3,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  5,  6, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  5,  7, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  9, 12, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText
	bg_event  4, 12, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText



	def_object_events
	object_event  6, 10, SPRITE_GIL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BrinesburgMagikorpOfficeGilScript, EVENT_MET_GIL
	object_event  7, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MET_GIL
	object_event  0,  1, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeOfficerText, -1
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeReceptionistText, -1
	object_event  7,  2, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeVeteranText, -1
	object_event 11, 10, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeSuperNerd1Text, -1
	object_event 11,  4, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficePIText, -1

	object_const_def
	const BRINESBURG_MAGIKORP_OFFICE_GIL
	const BRINESBURG_MAGIKORP_OFFICE_ROCKET
	const BRINESBURG_MAGIKORP_OFFICE_OFFICER_F

BrinesburgMagikorpOfficeFiredMagiGoonScene:
	sdefer BrinesburgMagikorpOfficeGilScript
BrinesburgMagikorpOfficeNoopScene:
	end

BrinesburgMagikorpOfficeGilScript:
	showemote EMOTE_QUESTION, BRINESBURG_MAGIKORP_OFFICE_GIL, 15
	showtext GilAskstext
	pause 10
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, DOWN
	turnobject BRINESBURG_MAGIKORP_OFFICE_ROCKET, DOWN
	pause 10
	showemote EMOTE_SHOCK, BRINESBURG_MAGIKORP_OFFICE_ROCKET, 15
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, RIGHT
	turnobject BRINESBURG_MAGIKORP_OFFICE_ROCKET, LEFT
	showtext GilFiresGoonText
	pause 10
	showtext MagigoonProtestText
	pause 10
	showemote EMOTE_SHOCK, BRINESBURG_MAGIKORP_OFFICE_GIL, 15
	showtext GilNoMoreText
	pause 10
	showemote EMOTE_BOLT, BRINESBURG_MAGIKORP_OFFICE_ROCKET, 15
	applymovement BRINESBURG_MAGIKORP_OFFICE_ROCKET, .MagigoonExits
	showtext MagigoonMoveText
	applyonemovement PLAYER, step_left
	pause 10
	applyonemovement BRINESBURG_MAGIKORP_OFFICE_ROCKET, step_down
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear BRINESBURG_MAGIKORP_OFFICE_ROCKET
	sjumpfwd .GilAfterFiring
	end

.GilAfterFiring:
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, DOWN
	showemote EMOTE_HAPPY, BRINESBURG_MAGIKORP_OFFICE_GIL, 15
	playmusic MUSIC_PROF_OAK
	showtext GilComeInText
	pause 10
	applyonemovement PLAYER, step_up
	opentext
	writetext GilIntroText
	waitbutton
	writetext GilApologyText
	promptbutton
	verbosegiveitem MAGI_BALL
	writetext GilGottaGoText
	showemote EMOTE_FISH, BRINESBURG_MAGIKORP_OFFICE_GIL, 15
	writetext GilMagikalDayText
	waitbutton
	closetext
	applymovement BRINESBURG_MAGIKORP_OFFICE_GIL, .GilExits
	playsound SFX_ENTER_DOOR
	disappear BRINESBURG_MAGIKORP_OFFICE_GIL
	waitsfx
	special RestartMapMusic
	pause 15
	setevent EVENT_MET_GIL
	setscene SCENE_BRINESBURG_MAGIKORP_OFFICE_NOOP
	end

.MagigoonExits:
	step_down
	step_down
	step_end

.GilExits:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_end

GilAskstext:
	text "You did what?!"
	done

GilFiresGoonText:
	text "You utter fool."
	line "This is completely"
	cont "unacceptable!"

	para "You do not deserve"
	line "to wear the Magi-"
	cont "Korp uniform."

	para "You're fired!"
	line "Get out of my"
	cont "sight immediately!"
	done

MagigoonProtestText: 
	text "But sir, I..."
	done

GilNoMoreText:
	text "I'll hear no more!"
	line "Out. Now!"
	done

MagigoonMoveText:
	text "UGH! Get out of"
	line "my way!"
	done

GilComeInText:
	text "Ah, please do come"
	line "in! I believe"

	para "you are owed"
	line "an apology!"
	done

GilIntroText:
	text "Hi! I'm Gilbert,"
	line "founder and CEO"
	cont "of MagiKorp."

	para "But please, call"
	line "me Gil!"
	done

GilApologyText:
	text "Gil: The man whom"
	line "you just saw, and"

	para "who accosted you"
	line "and the professor"
	cont "was in my employ,"

	para "but whatever he"
	line "was planning does"

	para "not represent the"
	line "interest of myself"
	cont "or of MagiKorp."

	para "I assure you, this"
	line "was an isolated"
	cont "incident."

	para "Please accept my"
	line "dearest apology on"

	para "behalf of all"
	line "of MagiKorp."

	para "And please accept"
	line "this small gift."
	done

GilGottaGoText:
	text "Well, I've got a "
	line "meeting to get to."
	done

GilMagikalDayText:
	text "Farewell, and have"
	line "a magikal day!"
	done

BrinesburgMagikorpOfficeReceptionistText:
	text "Hello, and welcome"
	line "to MagiKorp!"

	para "We hope you have"
	line "a magikal day!"
	done

BrinesburgMagikorpOfficeOfficerText:
	text "Sorry, but it's"
	line "employees only"
	cont "past this point."
	done

BrinesburgMagikorpOfficeSuperNerd1Text:
	text "This is the best"
	line "job I've ever had!"

	para "Everyone works so"
	line "hard here."
	done

BrinesburgMagikorpOfficeVeteranText:
	text "I've worked here"
	line "my whole career."

	para "I can't imagine"
	line "working anywhere"
	cont "else!"
	done

BrinesburgMagikorpOfficePIText:
	text "I love it here!"

	para "Best job"
	line "I've ever had!"
	done

BrinesburgMagikorpOfficeSignText:
	text "AUTHORIZED"
	line "PERSONNEL"
	cont "ONLY."
	done

BrinesburgMagikorpOfficeFileCabinetText:
	text "These file"
	line "cabinets are huge,"
	cont "and locked tight."

	para "They must contain"
	line "important files."
	done

BrinesburgMagikorpOfficePapersText:
	text "It says"
	line "Quarterly Reports"
	cont "at the top."
	done

BrinesburgMagikorpOfficeBrandText:
	text "MagiKorp"
	line "'Make a Splash!'"
	done
	
BrinesburgMagikorpOfficeStatueText:
	text "It's a statue"
	line "of Magikarp."
	done
