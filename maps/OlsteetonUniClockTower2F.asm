OlsteetonUniClockTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8,  2, OLSTEETON_UNI_CLOCK_TOWER_1F, 3
	warp_event  3,  5, OLSTEETON_UNI_CLOCK_TOWER_3F, 1


	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, OlsteetonUniClockTower2FStatueText

	def_object_events
	object_event  5,  3, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerLadyAva, -1
	object_event 10,  4, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerCooltrainermNick, -1
	object_event  1,  1, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerCooltrainerfIrene, -1
	object_event  1,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBlackbeltBenji, -1
	itemball_event  4,  6, X_ACCURACY, 1, EVENT_SPROUT_TOWER2F_X_ACCURACY

GenericTrainerLadyAva:
	generictrainer LADY, AVA, EVENT_BEAT_LADY_AVA, LadyAvaSeenText, LadyAvaBeatenText

	text "I need some"
	line "text here"

	para "like, real"
	line "bad."
	done

GenericTrainerCooltrainermNick:
	generictrainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText

	text "Your #mon style" ;unchanged text
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done

GenericTrainerCooltrainerfIrene:
	generictrainer COOLTRAINERF, IRENE, EVENT_BEAT_COOLTRAINERF_IRENE, CooltrainerfIreneSeenText, CooltrainerfIreneBeatenText

	text "I need some" ;unchanged text
	line "text here"
	done


GenericTrainerBlackbeltBenji:
	generictrainer BLACKBELT_T, BENJI, EVENT_BEAT_BLACKBELT_BENJI, BlackbeltBenjiSeenText, BlackbeltBenjiBeatenText

	text "I lost!" ;unchanged text
	line "I'm speechless!"
	done


LadyAvaSeenText:
	text "However hard we"
	line "battle, the tower"
	cont "will stand strong."
	done

LadyAvaBeatenText:
	text "I fought hard but"
	line "I'm too weak."
	done

CooltrainermNickSeenText: ;unchanged text
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done

CooltrainermNickBeatenText: ;unchanged text
	text "You've got"
	line "dazzling style!"
	done

CooltrainerfIreneSeenText: ;unchanged text
	text "Irene: Kyaaah!"
	line "I'll stomp you!"
	done

CooltrainerfIreneBeatenText: ;unchanged text
	text "Ohhh!"
	line "Too strong!"
	done

BlackbeltBenjiSeenText: ;unchanged text
	text "Words are useless."
	line "Let your fists do"
	cont "the talking!"
	done

BlackbeltBenjiBeatenText: ; ;unchanged text
	text "…"
	done

OlsteetonUniClockTower2FStatueText:
	text "It's a"
	line "giant hourglass."
	done
