BrinesburgMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, BRINESBURG, 4
	warp_event  3,  7, BRINESBURG, 4

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_AZALEA
	object_event  5,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMartLassText, -1
	object_event  6,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgMartTeacherText, -1

BrinesburgMartLassText:
	text "Needs dialogue"
	done

BrinesburgMartTeacherText:
	text "Needs dialogue"
	done
