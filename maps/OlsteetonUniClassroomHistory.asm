OlsteetonUniClassroomHistory_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 7
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 7

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBlackboardText
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBookshelf1Text
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomHistoryBookshelf2Text

	def_object_events
	object_event  6,  2, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryBlancheText, -1
	object_event  3,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryTeacherText, -1
	object_event  8,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryYoungsterText, -1
	object_event  2,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryChildText, -1
	object_event  9,  5, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomHistoryLadyText, -1
	object_event  3,  5, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlsteetonUniClassroomHistoryCooltrainermScript, -1

OlsteetonUniClassroomHistoryBlancheText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomHistoryTeacherText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomHistoryYoungsterText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomHistoryChildText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomHistoryLadyText:
	text "Needs dialogue"
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
	text "Needs dialogue"
	done

OlsteetonUniClassroomHistoryBlackboardText:
	text "Needs text"
	done

OlsteetonUniClassroomHistoryBookshelf1Text:
	text "Needs text"
	done


OlsteetonUniClassroomHistoryBookshelf2Text:
	text "Needs text"
	done

