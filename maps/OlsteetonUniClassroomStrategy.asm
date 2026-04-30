OlsteetonUniClassroomStrategy_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 6
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 6

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomStrategyBlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomStrategyBlackboardText
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomStrategyBlackboardText
	bg_event  0,  1, BGEVENT_READ, OlsteetonUniClassroomStrategyBookshelf1
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomStrategyBookshelf2Text

	def_object_events
	object_event  6,  2, SPRITE_CANDELA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomStrategyCandelaText, -1
	object_event  3,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomStrategyTeacherText, -1
	object_event  2,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomStrategyBug_catcherText, -1
	object_event 10,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomStrategyFisherText, -1
	object_event  8,  5, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomStrategyLadyText, -1
	object_event  9,  9, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlsteetonUniClassroomStrategyRich_boyScript, -1

	object_const_def

OlsteetonUniClassroomStrategyCandelaText:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyTeacherText:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyBug_catcherText:
	text "Needs text"
	done

OlsteetonUniClassroomStrategyFisherText:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyLadyText:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyRich_boyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ABILITY_CAP_IN_UNIVERSITY
	iftruefwd .GotItem
	writetext .Text1
	promptbutton
	verbosegiveitem ABILITY_CAP
	iffalse_endtext
	setevent EVENT_GOT_ABILITY_CAP_IN_UNIVERSITY
.GotItem:
	writetext .Text2
	waitendtext

.Text1:
	text "Needs text"
	done

	done

.Text2:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyBlackboardText:
	text "Needs text"
	done


OlsteetonUniClassroomStrategyBookshelf1: ;unchanged 
	checkevent EVENT_GOT_X_SP_ATK_IN_UNIVERSITY
	iftrue_jumptext .Text2
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem X_SP_ATK
	iffalse_endtext
	setevent EVENT_GOT_X_SP_ATK_IN_UNIVERSITY
	endtext

.Text1:
	text "This bookcase is"
	line "a mess!"

	para "<PLAYER> straight-"
	line "ened up the books."

	para "…Oh?"
	done

.Text2:
	text "This bookcase is"
	line "all neat and tidy."
	done

OlsteetonUniClassroomStrategyBookshelf2Text:
	text "Needs text"
	done

