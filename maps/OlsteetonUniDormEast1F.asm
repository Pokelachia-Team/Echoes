OlsteetonUniDormEast1F_MapScriptHeader:

	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 11, OLSTEETON_UNI, 15
	warp_event  8, 11, OLSTEETON_UNI, 15
	warp_event  0,  8, OLSTEETON_UNI_DINING_HALL, 4
	warp_event  0,  9, OLSTEETON_UNI_DINING_HALL, 5
	warp_event  0,  3, OLSTEETON_UNI_DORM_EAST_2F, 1
	warp_event  7,  0, OLSTEETON_UNI_DORM_EAST_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 11,  6, BGEVENT_RIGHT, OlsteetonUniDormEast1FComputer
	bg_event  6,  0, BGEVENT_JUMPTEXT, OlsteetonUniDormEast1FSignText
	bg_event 11,  8, BGEVENT_RIGHT, OlsteetonUniDormEast1FComputer

	def_object_events
	object_event 10,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast1FLassText, -1
	object_event 10,  9, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast1FPicknickerText, -1
	object_event 11,  5, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast1FCoolDudeText, -1
	object_event  1,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast1FGuardText, -1

	object_const_def

OlsteetonUniDormEast1FLassText:
	text "Did you get to"
	line "see the musicians"
	cont "in town?"

	para "I go to watch"
	line "them inbetween"
	cont "classes!"
	done

OlsteetonUniDormEast1FPicknickerText:
	text "Trying to remember"
	line "all the type adv-"
	cont "antages is tough."

	para "I dunno if I'm"
	line "gonna pass this"
	cont "semester!"
	done

OlsteetonUniDormEast1FCoolDudeText:
	text "I can't wait for"
	line "summer break!"

	para "If I survive"
	line "these exams..."
	done

OlsteetonUniDormEast1FGuardText:
	text "Needs dialogue"
	done

OlsteetonUniDormEast1FSignText:
	text "Gym Trainees:"
	line "Don't slack off"
	
	para "young Gym Leaders!"
	line "Test your skills"

	para "by battling your"
	line "fellows! All the"

	para "professionals do"
	line "it!"
	done

OlsteetonUniDormEast1FBookshelf2:
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

OlsteetonUniDormEast1FComputer:
	jumpthistext

	text "It's some new"
	line "game where you"
	cont "collect monsters."

	para "Eh, there's a"
	line "million of those"
	cont "these days."

	para "What you really"
	line "want is one"

	para "where you can"
	line "actually pet your"
	
	para "monsters - they"
	line "deserve love, too!"
	done
