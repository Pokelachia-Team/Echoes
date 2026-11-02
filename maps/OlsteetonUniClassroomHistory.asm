OlsteetonUniClassroomHistory_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 7
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 7

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  8,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBookshelf1Text
	bg_event  9,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBookshelf2Text

	def_object_events
	object_event  3,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryTeacherText, -1
	object_event  8,  7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryYoungsterText, -1
	object_event  2,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryChildText, -1
	object_event  9,  5, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryLadyText, -1
	object_event  3,  5, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlsteetonUniClassroomHistoryCooltrainermScript, -1

OlsteetonUniClassroomHistoryTeacherText:
	text "It's important to"
	line "learn from our"
	cont "collective past."

	para "History doesn't"
	line "repeat itself line"

	para "for line, but it"
	line "does often rhyme."
	done

OlsteetonUniClassroomHistoryYoungsterText:
	text "I didn't want to"
	line "take this class,"

	para "but it's a pre-req"
	line "for the class on"
	cont "Legendary #mon"
	done

OlsteetonUniClassroomHistoryChildText:
	text "So, you're telling"
	line "me that Galar and"

	para "Kalos fought for"
	line "so long that a"

	para "giant man built a"
	line "weapon that was"

	cont "powered by a #-"
	line "mon of legend?"

	para "I thought History"
	line "was supposed to be"

	para "about stuff that"
	line "really happened..."
	done

OlsteetonUniClassroomHistoryLadyText:
	text "There was once a"
	line "war that happened"

	para "between 2 larger"
	line "regions on this"
	cont "continent too."

	para "The people that"
	line "lived here split"

	para "off from the other"
	line "regions & created"
	cont "the Folkora region"
	done

OlsteetonUniClassroomHistoryCooltrainermScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, UP
	end

.Text1: ; text > text
	text "…Zzz…"
	line "Huh!"
	done

.Text2:
	text "I was dreaming"
	line "that I was being"

	para "chased by a giant"
	line "Spheal..."
	done

OlsteetonUniClassroomHistoryBlackboardText:
	text "There is writing"
	line "on the board:"

	para "'The Great War"
	line "of Kalos'"
	done

OlsteetonUniClassroomHistoryBookshelf1Text:
	text "'Age of Apricorns:"
	line "A Brief History'"
	done


OlsteetonUniClassroomHistoryBookshelf2Text:
	text "'The #mon of"
	line "Myth & Legend.'"
	done

