OlsteetonUniDormEast2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  0, OLSTEETON_UNI_DORM_EAST_1F, 5
	warp_event  3,  0, OLSTEETON_UNI_DORM_EAST_3F, 1
	warp_event  6,  0, OLSTEETON_UNI_DORM_EAST_2F_ROOM_1, 1
	warp_event 14,  0, OLSTEETON_UNI_DORM_EAST_2F_ROOM_3, 1
	warp_event  9,  0, OLSTEETON_UNI_DORM_EAST_ELEVATOR, 1
	

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonUniDormEast2FText
	bg_event  7,  0, BGEVENT_JUMPTEXT, OlsteetonUniDormEast2FRoom1Text
	bg_event 11,  0, BGEVENT_JUMPTEXT, OlsteetonUniDormEast2FRoom2Text
	bg_event 15,  0, BGEVENT_JUMPTEXT, OlsteetonUniDormEast2FRoom3Text

	def_object_events
	object_event  5,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast2FLassText, -1
	object_event  4,  1, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast2FRichBoyText, -1
	object_event  1,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast2FCooltrainerfText, -1

	object_const_def
OlsteetonUniDormEast2FLassText:
	text "I can't study"
	line "another minute or"
	cont "I'mma lose it!"

	para "All I want to do"
	line "is go back to my"

	para "room and play"
	line "Skydrop Ravine!"

	para "I'm never gonna"
	line "finish my farm"
	cont "at this rate!"
	done

OlsteetonUniDormEast2FRichBoyText:
	text "Prof. Poplar is"
	line "definitely the"
	cont "coolest professor."

	para "... even if she's"
	line "kinda brutal"
	cont "with homework."
	done

OlsteetonUniDormEast2FCooltrainerfText:
	text "Eeeuuuggghhh..."

	para "..."

	para "... can't talk"
	line "must snooze be-"
	cont "fore class."
	done

OlsteetonUniDormEast2FSuper_nerd2Text:
	text "I have to write"
	line "an essay on the"

	para "historical ethics"
	line "of #mon coll-"
	cont "ecting..."
	done

OlsteetonUniDormEast2FBookshelf1Text:
	text "A recreational"
	line "bookshelf for"
	cont "students."

	para "Oh my!"

	para "You see the new-"
	line "est edition of"

	para "the 'Two Part'"
	line "manga! The epic"

	para "sailor adventure"
	line "that's rocked"
	cont "the world!"
	done

OlsteetonUniDormEast2FBookshelf2:
	opentext
	writetext .Text1
	waitbutton
	checkevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
	iftruefwd .GotItem
	verbosegiveitem PP_MAX
	iffalsefwd .Done
	setevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
.Done
	endtext

.GotItem
	jumpopenedtext .Text2

.Text1:
	text "This book has a"
	line "secret compartment"

	para "where the pages"
	line "should be!"
	done

.Text2:
	text "Too bad--it's"
	line "empty."
	done

OlsteetonUniDormEast2FComputer:
	jumpthistext

	text "This is meant"
	line "to be a PC for"
	
	para "studying, but"
	line "someone is clearly"

	para "playing god with"
	line "some pixelated"
	cont "people."

	para "What a cruel and"
	line "indifferent god"
	cont "they are..."
	done

OlsteetonUniDormEast2FText:
	text "2nd Floor"
	done
OlsteetonUniDormEast2FRoom1Text:
	text "Room 201"
	line "Resident Advisor"
	cont "Emmeline"
	done

OlsteetonUniDormEast2FRoom2Text:
	text "Room 202"
	line "Krystal"
	done

OlsteetonUniDormEast2FRoom3Text:
	text "Room 203"
	line "Cassidy"
	done