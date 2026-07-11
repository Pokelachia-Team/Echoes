OlsteetonRoute103Gate_MapScriptHeader:
	def_scene_scripts
	scene_script OlsteetonRoute103GateClosedScene, SCENE_OLSTEETON_ROUTE_103_GATE_CLOSED
	scene_script DoNothingScript, SCENE_OLSTEETON_ROUTE_103_GATE_NOOP

	def_callbacks

	def_warp_events
	warp_event  0,  4, OLSTEETON, 24
	warp_event  0,  5, OLSTEETON, 25
	warp_event  9,  4, ROUTE_103, 1
	warp_event  9,  5, ROUTE_103, 2


	def_coord_events
	coord_event  6,  5, SCENE_OLSTEETON_ROUTE_103_GATE_CLOSED, Route103GateClosedScript
	coord_event  6,  4, SCENE_OLSTEETON_ROUTE_103_GATE_CLOSED, Route103GateClosedScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonRoute103GateOfficerText1, -1

	object_const_def
	const OLSTEETON_ROUTE_103_GATE_OFFICER

OlsteetonRoute103GateClosedScene:
	end

Route103GateClosedScript:
	showemote EMOTE_SHOCK, OLSTEETON_ROUTE_103_GATE_OFFICER, 10
	turnobject OLSTEETON_ROUTE_103_GATE_OFFICER, DOWN
	showtext OlsteetonRoute103GateClosedText
	applyonemovement PLAYER, step_left
	end

OlsteetonRoute103GateOfficerText1: ;needs dialogue
	text "I sure would"
	line "love some"
	cont "dialogue."
	done

OlsteetonRoute103GateClosedText:
	text "Wait! I'm sorry,"
	line "but you can't go"

	para "to Route 103 right"
	line "now. There's a"
	cont "#mon blocking"

	para "the path and some"
	line "folks from the Uni"

	para "are trying to move"
	line "it peacefully."
	done