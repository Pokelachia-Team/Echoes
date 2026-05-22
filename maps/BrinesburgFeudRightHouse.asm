BrinesburgFeudRightHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, BRINESBURG, 12
	warp_event  2,  7, BRINESBURG, 12

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPTEXT, BrinesburgFeudRightHouseFridgeText
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  1,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FeudMomText, -1
	object_event  4,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FeudSonText, -1

FeudMomText:
	text "The neighbors next"
	line "door to the left"
	cont "are just awful."
	done

FeudSonText:
	text "The girl next door"
	line "is so mean!"
	done

BrinesburgFeudRightHouseFridgeText:
	text "There's some food"
	line "in here."
	done
