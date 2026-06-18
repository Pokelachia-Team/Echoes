BrinesburgRoute105Gate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, BRINESBURG, 17
	warp_event  0,  5, BRINESBURG, 18
	; warp_event  9,  4, ROUTE_105, 1
	; warp_event  9,  5, ROUTE_105, 2


	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BrinesburgRoute105GateOfficerScript, -1
	pokemon_event 5,  3, MR__MIME, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_PINK, BrinesburgGateMrMimeText, -1

	object_const_def
	const BRINESBURG_ROUTE_105_GATE_OFFICER


BrinesburgRoute105GateOfficerScript:
	faceplayer
	opentext
	jumpopenedtext BrinesburgRoute105GateOfficerText1
	closetext
	applyonemovement BRINESBURG_ROUTE_105_GATE_OFFICER, turn_head_right
	end
	
BrinesburgRoute105GateOfficerText1:
	text "Nobody's getting"
	line "to Route 105"

	para "until Mr. Mime"
	line "takes down"
	cont "these walls..."
	done

BrinesburgGateMrMimeText:
	text "Miiiime"
	done