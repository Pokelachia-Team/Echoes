OlsteetonUniClassroomArt_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 4
	warp_event  6,  9, OLSTEETON_UNI_CLASSROOM_BLDG, 4

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomArtBlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomArtBlackboardText
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonUniClassroomArtBlackboardText
	bg_event  0,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomArtBookshelf1Text
	bg_event  1,  1, BGEVENT_JUMPTEXT, OlsteetonUniClassroomArtBookshelf2Text

	def_object_events
	object_event  5,  2, SPRITE_ANDY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomArtProfText, -1
	object_event  3,  5, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, OlsteetonUniClassroomArtDragon_tamerText, -1
	object_event 10,  5, SPRITE_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomArtLadyText, -1
	object_event  8,  3, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomArtArtist1Text, -1
	object_event  3,  7, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << MORN) | (1 << DAY), PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomArtArtist2Text, -1
	object_event  9,  9, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonUniClassroomArtArtist3Text, -1
	pokemon_event  6,  3, SMEARGLE, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, OlsteetonUniSmeargleText, -1


	object_const_def

OlsteetonUniClassroomArtProfText:
	text "Most #mon stop"
	line "to watch if"

	para "they come across"
	line "a Smeargle paint"
	cont "-ing."

	para "The Smeargle"
	line "like it because"

	para "it gets a wide"
	line "variety of #mon"
	cont "to sketch."
	done

OlsteetonUniClassroomArtDragon_tamerText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomArtLadyText:
	text "Needs dialogue"
	done

OlsteetonUniClassroomArtArtist1Text:
	text "Needs dialogue"
	done

OlsteetonUniClassroomArtArtist2Text:
	text "Needs dialogue"
	done

OlsteetonUniClassroomArtArtist3Text:
	text "Needs dialogue"
	done

OlsteetonUniClassroomArtBlackboardText:
	text "Needs text"
	done

OlsteetonUniClassroomArtBookshelf1Text:
	text "Needs text"
	done
OlsteetonUniClassroomArtBookshelf2Text:
	text "Needs text"
	done

OlsteetonUniSmeargleText:
	text "Smeargle: Smeer!"
	done