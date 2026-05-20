Route103BrinesburgGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_103, 3
	warp_event  0,  5, ROUTE_103, 4
	warp_event  9,  4, BRINESBURG, 1
	warp_event  9,  5, BRINESBURG, 2


	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route103GateBrinesburgOfficerText, -1

Route103GateBrinesburgOfficerText: ;needs dialogue
	text "I sure would"
	line "love some"
	cont "dialogue."
	done
