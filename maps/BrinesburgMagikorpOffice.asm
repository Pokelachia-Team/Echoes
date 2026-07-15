BrinesburgMagikorpOffice_MapScriptHeader:
	def_scene_scripts
	scene_const DoNothingScript, SCENE_BRINESBURG_MAGIKORP_OFFICE_NOOP
	scene_const BrinesburgMagikorpOfficeFiredMagiGoonScene, SCENE_BRINESBURG_MAGIKORP_OFFICE_FIRED_MAGIGOON


	def_callbacks

	def_warp_events
	warp_event  6, 13, BRINESBURG, 16
	warp_event  7, 13, BRINESBURG, 16

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeSignText
	bg_event  2,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  3,  1, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeFileCabinetText
	bg_event  5,  6, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  5,  7, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficePapersText
	bg_event  9, 12, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText
	bg_event  4, 12, BGEVENT_JUMPTEXT, BrinesburgMagikorpOfficeStatueText



	def_object_events
	object_event  6,  9, SPRITE_GIL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BrinesburgMagikorpOfficeGilScript, EVENT_MET_GIL
	object_event  7,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MET_GIL
	object_event  0,  1, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeOfficerText, -1
	object_event  7,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeReceptionistText, -1
	object_event  7,  2, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeVeteranText, -1
	object_event 11, 10, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficeSuperNerd1Text, -1
	object_event 11,  4, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMagikorpOfficePIText, -1

	object_const_def
	const BRINESBURG_MAGIKORP_OFFICE_GIL
	const BRINESBURG_MAGIKORP_OFFICE_ROCKET
	const BRINESBURG_MAGIKORP_OFFICE_OFFICER_F

BrinesburgMagikorpOfficeNoopScene:
BrinesburgMagikorpOfficeFiredMagiGoonScene:
	sdefer BrinesburgMagikorpOfficeGilScript
	end

BrinesburgMagikorpOfficeGilScript:
	showemote EMOTE_QUESTION, BRINESBURG_MAGIKORP_OFFICE_GIL 15
	showtext GilAskstext
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, DOWN
	turnobject BRINESBURG_MAGIKORP_OFFICE_ROCKET, DOWN
	showemote EMOTE_SHOCK, BRINESBURG_MAGIKORP_OFFICE_ROCKET, 15
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, RIGHT
	turnobject BRINESBURG_MAGIKORP_OFFICE_ROCKET, LEFT
	showtext GilFiresGoonText
	showemote EMOTE_BOLT, BRINESBURG_MAGIKORP_OFFICE_ROCKET, 15
	applymovement BRINESBURG_MAGIKORP_OFFICE_ROCKET, .MagigoonExits
	showtext MagigoonMoveText
	applyonemovement PLAYER, LEFT
	applyonemovement BRINESBURG_MAGIKORP_OFFICE_ROCKET, DOWN
	playsound SFX_EXIT_BUILDING
	waitsfx
	disappear BRINESBURG_MAGIKORP_OFFICE_ROCKET
	turnobject BRINESBURG_MAGIKORP_OFFICE_GIL, DOWN
	showemote EMOTE_SHOCK, BRINESBURG_MAGIKORP_OFFICE_GIL, 15
	playmusic MUSIC_PROF_OAK
	showtext GilComeInText
	applymovement PLAYER, .WalkToGil
	opentext
	writetext GilApologyText
	promptbutton
	verbosegiveitem MAGI_BALL
	setevent EVENT_MET_GIL
	setmapscene BRINESBURG_MAGIKORP_OFFICE, SCENE_BRINESBURG_MAGIKORP_OFFICE_NOOP
	writetext GilMagikalDayText
	waitbutton
	closetext
	applymovement BRINESBURG_MAGIKORP_OFFICE_GIL, .GilExits
	playsound SFX_ENTER_DOOR
	disappear BRINESBURG_MAGIKORP_OFFICE_GIL
	waitsfx
	special RestartMapMusic
	pause 15
	end

.MagigoonExits:
	step_down
	step_down
	step_down
	step_end

.WalkToGil:
	step_up
	step_up
	step_end

.GilExits:
	step_up
	step_left
	step_up
	step_end

GilAskstext:
	text "text"
	done

GilFiresGoonText:
	text "text"
	done

MagigoonMoveText:
	text "text"
	done

GilComeInText:
	text "text"
	done

GilApologyText:
	text "text"
	done

GilMagikalDayText:
	text "text"
	done


BrinesburgMagikorpOfficeReceptionistText:
	text "Hello, and welcome"
	line "to MagiKorp!"

	para "We hope you have"
	line "a magikal day!"
	done

BrinesburgMagikorpOfficeOfficerText: ;unchanged text
	text "Sorry, but you can"
	line "only tour the"
	cont "ground floor."
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

BrinesburgMagikorpOfficeStatueText:
	text "It's a statue"
	line "of Magikarp."
	done
