OlsteetonGymHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLSTEETON, 18
	warp_event  3,  7, OLSTEETON, 18

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonGymHouseEngineerText, -1
	object_event  1,  2, SPRITE_ENGINEER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonGymHouseRoughneckText, -1
	object_event  5,  4, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlsteetonGymHouseBettyScript, -1
	pokemon_event  4,  5, MAGNETON, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_GRAY, OlsteetonMagnetonText, -1


OlsteetonGymHouseBettyScript:
	faceplayer
	opentext
	checkevent EVENT_OLSTEETON_ABANDONED_MILL_METAL_COAT
	iftrue_jumpopenedtext BettyAfter
	checkevent EVENT_BOAT_PERMISSION
	iftrue_jumpopenedtext BettyThanks
	checkevent EVENT_BEAT_RUSTY_CHECK
	iftruefwd .BettyMillRequest
	jumptextfaceplayer OlsteetonGymHouseBettyText

.BettyMillRequest
	faceplayer
	opentext
	writetext ExplainMillText
	waitbutton
	writetext BettyRequestText
	yesorno
	iffalse_jumpopenedtext BettyRejected
	writetext BettyAccepted
	waitbutton 
	writetext BettyThanks
	waitbutton
	setevent EVENT_BOAT_PERMISSION
	closetext
	end


ExplainMillText: 
	text "......"
	para "Rusty sent you?"
	
	para "We used to work"
	line "at the old steel"
	cont "mill up river."
	
	para "MagiKorp bought it"
	line "recently & closed"
	cont "it a year later."

	para "Frankly, the mill"
	line "was falling apart"
	cont "even before that."

	para "There was a group"
	line "of guys that just"
	cont "couldn't accept it"

	para "Lead by Bradford,"
	line "my brother, they"
	cont "decided to stay."

	para "Rusty pleaded with"
	line "them to leave, but"
	cont "they refused."
	done

BettyRequestText:
	text "We're all busy"
	line "with the Gym cons-"
	cont "truction going on."

	para "It's dangerous and"
	line "illegal to work"
	cont "there any longer."

	para "Would you go and"
	line "try to knock some"
	cont "sense into them?"
	done

BettyRejected:
	text "Arrgh, I thought"
	line "you'd help out."
	done

BettyAccepted:
	text "You will? Oh"
	line "that would be such"
	cont "a relief!"
	done

BettyThanks:
	text "Thank you so much!"

	para "Use my boat at the"
	line "the dock uptown to"
	cont "get to the mill."
	done

BettyAfter:
	text "Bradford can be"
	line "even more stubborn"
	cont "than Rusty can."

	para "Thanks again for"
	line "your help. I look"
	cont "to facing you once"
	cont "the Gym is open."
	done
	
OlsteetonGymHouseEngineerText:
	text "I once chall-"
	line "enged Rusty to"

	para "a battle after"
	line "work. My poor"
	cont "Maggie didn't"
	cont "stand a chance."
	done

OlsteetonGymHouseRoughneckText:
	text "When the mill,"
	line "shut down"
	cont "I didn't know"
	cont "what to do."

	para "But Rusty rallied"
	line "the crew into"

	para "fixing up the"
	line "old town gym!"
	done

OlsteetonGymHouseBettyText:
	text "Rusty may be"
	line "harder headed"
	cont "than a Steelix,"

	para "But he's a good"
	line "leader and a"
	cont "loyal friend."

	para "Just wish Braford"
	line "& the others would"
	cont "understand that..."
	done

OlsteetonMagnetonText:
	text "Maggie: Bzzrt"
	done
