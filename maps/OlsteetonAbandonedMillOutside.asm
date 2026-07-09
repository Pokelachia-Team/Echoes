OlsteetonAbandonedMillOutside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  5, OLSTEETON_ABANDONED_MILL, 1

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_JUMPTEXT, OlsteetonAbandonedMillOutsideSignText
	bg_event  9,  7, BGEVENT_JUMPTEXT, OlsteetonAbandonedMillOutsideDoorsClosedText
	bg_event  9, 14, BGEVENT_DOWN,    OlsteetonAbandonedMillOutsideBoatScript
	bg_event 10, 14, BGEVENT_DOWN,    OlsteetonAbandonedMillOutsideBoatScript


	def_object_events
	


OlsteetonAbandonedMillOutsideBoatScript:
	checkevent EVENT_BOAT_PERMISSION
	iftruefwd Olsteeton_MillBoatQuestion
	jumptext OlsteetonAbandonedMillOutsideSailboatText

Olsteeton_MillBoatQuestion:
	opentext
	writetext BoatMillText_Ask
	yesorno
	iftruefwd Olsteeton_MillBoatRide
	endtext

Olsteeton_MillBoatRide:
	warp OLSTEETON, $25, $3
	end

BoatMillText_Ask:
	text "Take the boat"
	line "to Olsteeton?"
	done

OlsteetonAbandonedMillOutsideSignText:
	text "Olsteefac Mill"

	para "There is a sign "
	line "nailed below..."
	
	para "PERMANENTLY"
	line "CLOSED"
	done

OlsteetonAbandonedMillOutsideSailorText:
	text "Heh, I ain't"
	line "gettin involved"

	para "with any of"
	line "Rusty's crew's"
	cont "drama..."

	para "You just get back"
	line "in the boat"

	para "when you're"
	line "done here, ok?"
	done

OlsteetonAbandonedMillOutsideDoorsClosedText:
	text "NO GYM"
	line "TRAITORS ALLOWED"
	done

OlsteetonAbandonedMillOutsideSailboatText:
	text "It's a boat"
	line "named Magic Harp."
	done