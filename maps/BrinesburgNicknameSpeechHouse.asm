BrinesburgNicknameSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, BRINESBURG, 8
	warp_event  3,  7, BRINESBURG, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgNicknameSpeechHouseTeacherText, -1
	object_event  6,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgNicknameSpeechHouseLassText, -1
	object_event  5,  2, SPRITE_EEVEE, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, BrinesburgNicknameSpeechHouseBirdScript, -1
	object_event  0,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgNicknameSpeechHouseGrampsText, -1

BrinesburgNicknameSpeechHouseBirdScript:
	faceplayer
	showcrytext BrinesburgNicknameSpeechHouseBirdText, EEVEE
	end

BrinesburgNicknameSpeechHouseTeacherText: ;unchanged dialogue
	text "She uses the names"
	line "of her favorite"
	cont "things to eat."

	para "For the nicknames"
	line "she gives to her"
	cont "#mon, I mean."
	done

BrinesburgNicknameSpeechHouseLassText: ;unchanged dialogue
	text "I call my Eevee"
	line "Strawberry!"
	done

BrinesburgNicknameSpeechHouseGrampsText:
	text "The Chef Badge"
	line "used to be called"

	para "the Cook Badge,"
	line "but Sal changed it"

	para "when he took over"
	line "from his father."
	done

BrinesburgNicknameSpeechHouseBirdText: ;unchanged dialogue
	text "Strawberry: Vui!"
	done
