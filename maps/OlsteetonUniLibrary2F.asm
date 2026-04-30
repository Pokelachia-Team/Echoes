OlsteetonUniLibrary2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  0, OLSTEETON_UNI_LIBRARY_1F, 3

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FSignpost1Text
	bg_event 14,  8, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FSignpost2Text
	bg_event  4,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf1Text
	bg_event  5,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf2Text
	bg_event  6,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf3Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf4Text
	bg_event  8,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf5Text
	bg_event  9,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf6Text
	bg_event  4, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf7Text
	bg_event  5, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf8Text
	bg_event  0,  8, BGEVENT_JUMPTEXT, OlsteetonUniLibrary1FSignpost1Text
	bg_event 16,  1, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf10Text
	bg_event  6, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf11Text
	bg_event 15, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf12Text
	bg_event  7, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf13Text
	bg_event  8, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf14Text
	bg_event  9, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf15Text
	bg_event 10, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf16Text
	bg_event 11, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf17Text
	bg_event 12, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf18Text
	bg_event 13, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf19Text
	bg_event 14, 11, BGEVENT_JUMPTEXT, OlsteetonUniLibrary2FBookshelf20Text
	bg_event 25, 12, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer1
	bg_event 25, 10, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer2
	bg_event 25,  4, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer3
	bg_event 25,  2, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer1
	bg_event  0, 11, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer1
	bg_event 17, 12, BGEVENT_RIGHT, OlsteetonUniLibrary2FComputer4

	def_object_events
	object_event 10, 13, SPRITE_COSPLAYER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary2FCosplayerText, -1
	object_event  7,  2, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary2FLassText, -1
	object_event 14,  1, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OlsteetonUniLibrary2FArtistScript, -1
	object_event 24, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary2FSuper_nerdText, -1
	object_event  3,  2, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary2FCooltrainerfText, -1
	object_event  1, 12, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniLibrary2FYoungsterText, -1
	itemball_event  5,  5, TIMER_BALL, 1, EVENT_CELADON_UNIVERSITY_LIBRARY_2F_TIMER_BALL

OlsteetonUniLibrary2FCosplayerText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary2FLassText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary2FArtistScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, RIGHT
	end

.Text1:
	text "Needs dialogue"
	done

.Text2:
	text "Needs dialogue"
	done
OlsteetonUniLibrary2FSuper_nerdText:
	text "Needs dialogue"
	done
OlsteetonUniLibrary2FCooltrainerfText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary2FYoungsterText:
	text "Needs dialogue"
	done

OlsteetonUniLibrary2FBookshelf1Text:
	text "Needs text"
	done
OlsteetonUniLibrary2FBookshelf2Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf3Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf4Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf5Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf6Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf7Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf8Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf9Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf10Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf11Text:
	text "Needs text"
	done
OlsteetonUniLibrary2FBookshelf12Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf13Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf14Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf15Text:
	text "Needs text"
	done
OlsteetonUniLibrary2FBookshelf16Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf17Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf18Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf19Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FBookshelf20Text:
	text "Needs text"
	done

OlsteetonUniLibrary2FComputer1:
	jumpthistext

	text "Needs text"
	done

OlsteetonUniLibrary2FComputer2:
	jumpthistext

	text "Needs text"
	done

OlsteetonUniLibrary2FComputer3:
	jumpthistext

	text "Needs text"
	done
OlsteetonUniLibrary2FComputer4:
	jumpthistext

	text "Needs text"
	done
