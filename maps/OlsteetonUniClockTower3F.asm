OlsteetonUniClockTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLOCK_TOWER_2F, 2

	def_coord_events
	; coord_event  9,  9, 0, OlsteetonUniClockTower3FRivalScene

	def_bg_events
	bg_event  5,  5, BGEVENT_JUMPTEXT, OlsteetonUniClockTower3FStatueText
	bg_event  6,  5, BGEVENT_JUMPTEXT, OlsteetonUniClockTower3FStatueText

	def_object_events
	object_event  6,  1, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 2, TeacherNolanScript, -1
	object_event  7,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSupernerdEric, -1
	object_event  3,  6, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHexManiacTamara, -1
	itemball_event  8,  8, POTION, 1, EVENT_SPROUT_TOWER_3F_POTION
	itemball_event  3,  1, ESCAPE_ROPE, 1, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE

	object_const_def

TeacherNolanScript:
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue_jumptextfaceplayer TeacherNolanAfterBattleText
	faceplayer
	showtext TeacherNolanSeenText
	winlosstext TeacherNolanBeatenText, 0
	loadtrainer TEACHER_M, NOLAN
	startbattle
	reloadmapafterbattle
	opentext
	writetext TeacherNolanTakeThisFlashText
	promptbutton
	verbosegivetmhm TM_HIDDEN_POWER
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	setevent EVENT_BEAT_SUPER_NERD_NOLAN
	jumpthisopenedtext

	text "Do you see it? It"
	line "is Hidden Power!"

	para "It draws out the"
	line "power of #mon"
	cont "for attacking."

	para "Remember this: its"
	line "type depends on"
	cont "the #mon"
	cont "using it."
	done

GenericTrainerSupernerdEric:
	generictrainer SUPER_NERD, ERIC, EVENT_BEAT_SUPER_NERD_ERIC, SupernerdEricSeenText, SupernerdEricBeatenText

	text "I guess I have to" ;unchanged text
	line "do things fair and"
	cont "square…"
	done

GenericTrainerHexManiacTamara:
	generictrainer HEX_MANIAC, TAMARA, EVENT_BEAT_HEX_MANIAC_TAMARA, HexManiacTamaraSeenText, HexManiacTamaraBeatenText

	text "There are powers"
	line "beyond our under-"

	para "standing in the"
	line "world…"
	done

SupernerdEricSeenText: ;unchanged text
	text "I got booted out"
	line "of the Game Cor-"
	cont "ner."

	para "I was trying to"
	line "cheat using my"
	cont "#mon…"
	done

SupernerdEricBeatenText:
	text "…Grumble…" ;unchanged text
	done

HexManiacTamaraSeenText:
	text "A strange power is"
	line "present here…"
	done

HexManiacTamaraBeatenText:
	text "I have lost…"
	done

TeacherNolanSeenText:
	text "Well done to make"
	line "it this far!"

	para "The Clock Tower is"
	line "our unofficial"
	cont "trainer course!"

	para "I am the final"
	line "test."

	para "Allow me to see"
	line "if you have what"
	cont "it takes!"
	done

TeacherNolanBeatenText: ;unchanged text
	text "Ah, excellent!"
	done

TeacherNolanTakeThisFlashText: ;unchanged text
	text "You and your #-"
	line "mon should have"

	para "no problem using"
	line "this move."

	para "Take this TM."
	done

TeacherNolanAfterBattleText:
	text "Well fought."

	para "The young woman"
	line "downstairs has a"

	para "knack for discern-"
	line "ing a #mon's"
	cont "Hidden Power."

	para "Talk to her"
	line "if you're curious."
	done

OlsteetonUniClockTower3FStatueText:
	text "It's a"
	line "giant hourglass."
	done
