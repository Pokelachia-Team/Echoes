OlsteetonUniDormEast3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  0, OLSTEETON_UNI_DORM_EAST_2F, 2
	warp_event 10,  0, OLSTEETON_UNI_DORM_EAST_3F_ROOM_2, 1
	warp_event 14,  0, OLSTEETON_UNI_DORM_EAST_3F_ROOM_3, 1
	warp_event  9,  0, OLSTEETON_UNI_DORM_EAST_ELEVATOR, 1


	def_coord_events

	def_bg_events
	bg_event 11,  1, BGEVENT_JUMPTEXT, OlsteetonUniDormEast3FBookshelf1Text
	bg_event 10,  1, BGEVENT_READ, OlsteetonUniDormEast3FBookshelf2Text
	bg_event  0,  9, BGEVENT_RIGHT, OlsteetonUniDormEast3FComputer

	def_object_events
	object_event  4,  1, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast3FRichBoyText, -1
	object_event  1,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast3FCooltrainerfText, -1
	object_event  5,  7, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast3FSuper_nerd1Text, -1
	object_event  2,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniDormEast3FSuper_nerd2Text, -1

	object_const_def

OlsteetonUniDormEast3FRichBoyText:
	text "My roommate is"
	line "super into"
	cont "legendary #mon."

	para "For me, I just"
	line "think Fairy"
	cont "types are cool!"
	done

OlsteetonUniDormEast3FCooltrainerfText:
	text "What's even the"
	line "point of my" 

	para "Native Bio-"
	line "logy degree?"

	para "I'm gonna have"
	line "to move clear"

	para "to Unova if I"
	line "want to find"
	cont "a job!"

	para "Stupid Mega-"
	line "Corp!"
	done

OlsteetonUniDormEast3FSuper_nerd1Text:
	text "No one truly ap-"
	line "preciates Bug"
	cont "#mon like me."

	para "And Ast. Asher,"
	line "I suppose..."
	done

OlsteetonUniDormEast3FSuper_nerd2Text:
	text "Who cares about"
	line "Bug types?!"

	para "Where are all"
	line "the Dragons?!"

	para "We need more"
	line "research on"
	cont "them!"
	done

OlsteetonUniDormEast3FBookshelf1Text:
	text "A recreational"
  	line "bookshelf."

  	para "'Not Yet Night,'"
	line "'Not-Old Moon,'"

	para "'Hidden Sun,' &"
	line "'Smashing Sunrise'"

	para "Some of these"
	line "sound semi"
	cont "familiar..."
	done

OlsteetonUniDormEast3FComputer:
	jumpthistext

	text "Finally! A PC"
  line "where it looks"

  para "like someone is"
  line "actually studying!"

  para "..."

  para "No, wait."
  line "It's actually"

  para "Not-Giant"
  line "Fortress..."
	done
OlsteetonUniDormEast3FText:
	text "3rd Floor"
	done
OlsteetonUniDormEast3FRoom1Text:
	text "Room 301"
	line "Resident Advisor"
	cont "David"
	done

OlsteetonUniDormEast3FRoom2Text:
	text "Room 302"
	line "Shane"
	done

OlsteetonUniDormEast3FRoom3Text:
	text "Room 303"
	line "Elijah"
	done

OlsteetonUniDormEast3FBookshelf2Text:
	text "Needs Text"
	done