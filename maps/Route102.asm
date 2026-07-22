Route102_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 12, ROUTE_101_102_GATE, 3
	warp_event  4, 13, ROUTE_101_102_GATE, 4
	warp_event 25,  4, ROUTE_102_OLSTEETON_GATE, 1
	warp_event 25,  5, ROUTE_102_OLSTEETON_GATE, 2

	def_coord_events


	def_bg_events
	bg_event 25,  3, BGEVENT_JUMPTEXT, OlsteetonGateSignText
	bg_event  4, 10, BGEVENT_JUMPTEXT, Route102SignText
	bg_event  9, 13, BGEVENT_JUMPTEXT, Route102TrainerTips1Text
	bg_event 27, 14, BGEVENT_JUMPTEXT, Route102AdvancedTips1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, Route102AdvancedTips2Text
	; bg_event 30, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36
	; bg_event 31, 11, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_ROUTE_36

	def_object_events
	object_event 14, 10, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSchoolgirlMolly, -1
	object_event 28, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerYoungsterMikey, -1
	object_event 18, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBug_catcherDon, -1
	fruittree_event 26, 14, FRUITTREE_ROUTE_36, RAWST_BERRY, PAL_NPC_TEAL
	itemball_event 12,  9, GREAT_BALL, 1, EVENT_ROUTE_102_GREAT_BALL
	itemball_event 25, 17, REPEL, 1, EVENT_ROUTE_102_REPEL


	; object_event 50,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSchoolgirlMolly, -1


	object_const_def




GenericTrainerSchoolgirlMolly:
	generictrainer SCHOOLGIRL, MOLLY, EVENT_BEAT_SCHOOLGIRL_MOLLY, SchoolgirlMollySeenText, SchoolgirlMollyBeatenText

	text "I still have a"
	line "lot to learn."
	done



SchoolgirlMollySeenText:
	text "My mom taught me"
	line "how to battle with"
	cont "#mon!"
	done

SchoolgirlMollyBeatenText:
	text "Waahh, I'm"
	line "sorry, mama!"
	done

GenericTrainerYoungsterMikey:
	generictrainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText

	text "Becoming a good"
	line "trainer is really"
	cont "tough."

	para "I'm going to bat-"
	line "tle other people"
	cont "to get better."
	done

GenericTrainerBug_catcherDon:
	generictrainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, Bug_catcherDonSeenText, Bug_catcherDonBeatenText

	text "I ran out of #"
	line "Balls while I was"
	cont "catching #mon."

	para "I should've bought"
	line "some more…"
	done

YoungsterMikeySeenText:
	text "You're a #mon"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"
	done

YoungsterMikeyBeatenText:
	text "That's strange."
	line "I won before."
	done

Bug_catcherDonSeenText:
	text "Instead of a bug"
	line "#mon, I found"
	cont "a trainer!"
	done

Bug_catcherDonBeatenText:
	text "Argh! You're too"
	line "strong!"
	done

Route102SignText:
	text "Route 102"
	done

OlsteetonGateSignText:
	text "EAST: Olsteeton"
	line "WEST: Route 102"
	done

Route102TrainerTips1Text:
	text "Trainer Tips"

	para "#mon stats"
	line "vary--even within"
	cont "the same species."

	para "Their stats may be"
	line "similar at first."

	para "However, differ-"
	line "ences will become"

	para "pronounced as the"
	line "#mon grow."
	done
Route102AdvancedTips1Text:
	text "Trainer Tips!"

	para "Berries can be"
	line "used for a"
	cont "wide variety of"

	para "effect, and"
	line "#mon love them!"
	done

Route102AdvancedTips2Text:
	text "Advanced Tips!"

	para "Treating your"
	line "#mon with hair-"
	cont "cuts, blessings or"

	para "massages can make"
	line "them help you out"

	para "in battles due to"
	line "their affection!"
	done
