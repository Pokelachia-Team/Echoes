OlsteetonUniLibrary1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 11, OLSTEETON_UNI, 3
	warp_event  8, 11, OLSTEETON_UNI, 3
	warp_event  9,  0, OLSTEETON_UNI_LIBRARY_2F, 1

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FSignpost1Text
	bg_event 10,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FSignpost2Text
	bg_event  0,  9, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf1Text
	bg_event  1,  9, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf2Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf3Text
	bg_event  6,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf4Text
	bg_event  4,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf5Text
	bg_event  5,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf6Text
	bg_event  6,  5, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf7Text
	bg_event  7,  5, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf8Text
	bg_event  0,  5, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf9Text
	bg_event  1,  5, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf10Text
	bg_event  4,  9, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf11Text
	bg_event  5,  9, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FBookshelf12Text

	def_object_events
	object_event  4,  5, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary1FLadyText, -1
	object_event 13,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary1FGentlemanText, -1
	object_event  0,  6, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary1FCooltrainerfText, -1
	object_event 12,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlsteetonUniLibrary1FGameboyKidScript, -1
	object_event  5,  2, SPRITE_MATRON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary1FPokefan_fText, -1
	object_event 10,  4, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, OlsteetonUniLibrary1FCooltrainermScript, -1
	object_event 12, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary1FTeacherText, -1
	object_event 12,  5, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, OlsteetonUniLibrary1FBookText, -1

OlsteetonUniLibrary1FLadyText:
	para "Needs dialogue"
	done

OlsteetonUniLibrary1FGentlemanText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FCooltrainerfText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FGameboyKidScript:
	showtextfaceplayer .Text
	turnobject LAST_TALKED, DOWN
	end

.Text:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FPokefan_fText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FCooltrainermScript:
	checkevent EVENT_GOT_FOCUS_BAND_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem FOCUS_BAND
	iffalse_endtext
	setevent EVENT_GOT_FOCUS_BAND_IN_UNIVERSITY
	jumpopenedtext .Text2

.Text1:
	text "Needs dialogue"
	done

.Text2:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FTeacherText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FBookText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary1FSignpost1Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FSignpost2Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf1Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf2Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf3Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf4Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf5Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf6Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf7Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf8Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf9Text:
	text "Needs text"
	done
OlsteetonUniLibrary1FBookshelf10Text:
	text "Needs text"
	done

OlsteetonUniLibrary1FBookshelf11Text:
	text "Needs text"
	done
OlsteetonUniLibrary1FBookshelf12Text:
	text "Needs text"
	done
