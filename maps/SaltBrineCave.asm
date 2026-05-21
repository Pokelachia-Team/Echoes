SaltBrineCave_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	warp_event 11, 13, BRINESBURG, 6

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_ITEM + BIG_PEARL, EVENT_UNION_CAVE_1F_HIDDEN_BIG_PEARL
	bg_event 12,  2, BGEVENT_ITEM + PARALYZEHEAL, EVENT_UNION_CAVE_1F_HIDDEN_PARALYZEHEAL

	def_object_events
	object_event 13,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerDaniel, -1
	object_event  7,  4, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerRussell, -1
	itemball_event  2,  6, GREAT_BALL, 1, EVENT_UNION_CAVE_1F_GREAT_BALL
	itemball_event 17,  6, X_ATTACK, 1, EVENT_UNION_CAVE_1F_X_ATTACK

GenericTrainerHikerRussell:
	generictrainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText

	text "Look, I'm sorry."

	para "I just get real"
	line "grumpy when my"
	cont "flow gets broken."
	done

GenericTrainerHikerDaniel:
	generictrainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText

	text "Alright, my idea"
	line "is for salt"
	cont "infused with"
	cont "berry juice!"

	para "It's good, right?"
	line "Think Sal will"
	cont "go for it?"
	done

HikerRussellSeenText:
	text "Hey! Can't you"
	line "see I'm workin'!"

	para "I'll teach you"
	line "not to ruin"
	cont "my flow state!"
	done

HikerRussellBeatenText:
	text "Hrumph!"
	done

HikerDanielSeenText:
	text "I have an idea"
	line "for a new flavor"
	cont "of salt."

	para "If you win, I'll"
	line "let you in on it!"
	done

HikerDanielBeatenText:
	text "Dang! I guess I"
	line "gotta cut you in."
	done
