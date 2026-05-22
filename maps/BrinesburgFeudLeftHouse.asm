BrinesburgFeudLeftHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, BRINESBURG, 11
	warp_event  2,  7, BRINESBURG, 11

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPTEXT, BrinesburgFeudLeftHouseFridgeText
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  1,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FeudDadText, -1
	object_event  4,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FeudDaughterText, -1

FeudDadText:
	text "The neighbors next"
	line "door to the right"
	cont "are just awful."
	done

FeudDaughterText:
	text "The boy next door"
	line "is so dumb!"
	done

BrinesburgFeudLeftHouseFridgeText:
	text "There's some food"
	line "in here."
	done
