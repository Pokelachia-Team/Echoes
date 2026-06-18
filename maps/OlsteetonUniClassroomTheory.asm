OlsteetonUniClassroomTheory_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 8
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 8

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomTheoryBlackboardText
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomTheoryBlackboardText
	bg_event  5,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomTheoryBlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomTheoryBookshelf1Text
	bg_event  7,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomTheoryBookshelf2Text

	def_object_events
	object_event  5,  2, SPRITE_SPARK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomTheorySparkText, -1
	object_event  3,  5, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomTheoryChildText, -1
	object_event  8,  4, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_RED, OBJECTTYPE_COMMAND, jumptext, RegPokeBallText, -1
	object_event  9,  4, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_BLUE, OBJECTTYPE_COMMAND, jumptext, GreatPokeBallText, -1
	object_event 10,  4, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_ENV_GREEN, OBJECTTYPE_COMMAND, jumptext, NestPokeBallText, -1
	object_event 11,  4, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptext, MasterPokeBallText, -1


OlsteetonUniClassroomTheorySparkText:
	text "Hey! I'm Spark."
	line "I teach Science--"

	para "right now, it's"
	line "#Ball Theory."

	para "We're study-"
	line "ing how different"

	para "types of"
	line "#balls work."
	done

OlsteetonUniClassroomTheoryChildText:
	text "#mon inside"
	line "# Balls are"

	para "converted to light"
	line "energy, then"

	para "changed back to"
	line "matter when they're"
	cont "sent out."

	para "Don't worry, it"
	line "doesn't hurt them"
	cont "one bit!"
	done

OlsteetonUniClassroomTheoryBlackboardText:
	text "'Phylogenetics'"
	line "is on the board."

	para "“…#mon can be"
	line "divided into 14"
	cont "“Egg groups”,"
	cont "plus Ditto."

	para "Baby #mon can-"
	line "not breed."

	para "Legendary #mon"
	line "have not been"
	cont "studied.”"
	done

OlsteetonUniClassroomTheoryBookshelf1Text:
	text "It's a book of"
	line "prototype designs"

	para "for technological"
	line "devices."

	para "Hey! An early"
	line "#gear diagram"
	cont "is in here!"
	done

OlsteetonUniClassroomTheoryBookshelf2Text:
	text "It's a paper writ-"
	line "ten by Prof."
	cont "Silktree."

	para "“Ruins of Alph"
	line "Investigation"
	cont "Report”…"
	done

RegPokeBallText:
	text "It's a regular"
	line "#ball."
	done

GreatPokeBallText:
	text "It's a"
	line "Great Ball."
	done
NestPokeBallText:
	text "It's a"
	line "Nest Ball."
	done

MasterPokeBallText:
	text "It's a"
	line "replica of"
	cont "a Master Ball."
	done