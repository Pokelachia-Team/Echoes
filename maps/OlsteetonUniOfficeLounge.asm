OlsteetonUniOfficeLounge_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_OFFICE, 11
	warp_event  6,  9, OLSTEETON_UNI_OFFICE, 11

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_JUMPTEXT, OlsteetonUniOfficeLoungeBookshelf1Text
	bg_event  5,  1, BGEVENT_READ, OlsteetonUniOfficeLoungeBookshelf2
	bg_event  0,  3, BGEVENT_RIGHT, OlsteetonUniOfficeLoungeComputer

	def_object_events
	object_event  3,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeLoungeLassText, -1
	object_event  8,  1, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeLoungeRichBoyText, -1
	object_event  6,  5, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeLoungeCooltrainerfText, -1
	object_event  8,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeLoungeSuper_nerd1Text, -1
	object_event  0,  8, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniOfficeLoungeSuper_nerd2Text, -1

	object_const_def

OlsteetonUniOfficeLoungeLassText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeLoungeRichBoyText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeLoungeCooltrainerfText:
	text "Needs dialogue"
	done

OlsteetonUniOfficeLoungeSuper_nerd1Text:
	text "Needs dialogue"
	done

OlsteetonUniOfficeLoungeSuper_nerd2Text:
	text "Needs dialogue"
	done

OlsteetonUniOfficeLoungeBookshelf1Text:
	text "Needs text"
	done

OlsteetonUniOfficeLoungeBookshelf2:
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

OlsteetonUniOfficeLoungeComputer:
	jumpthistext

	text "Needs dialogue"
	done
