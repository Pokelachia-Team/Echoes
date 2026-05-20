BrinesburgPokeCenter_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, BRINESBURG, 3
	warp_event  6,  7, BRINESBURG, 3

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalSalScript
	bg_event 10,  5, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event 11,  5, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	pc_nurse_event  5, 1
	object_event  0,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_PHARMACY, MART_CIANWOOD, -1
	object_event  9,  1, SPRITE_WAITRESS, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BrinesburgPokeCenterWaitressText, -1

	
; PokeCenterPharmacistScript:
; 	faceplayer
; 	scall .PokeMart
; 	turnobject LAST_TALKED, UP
; 	end

PokemonJournalSalScript:
	; setflag ENGINE_READ_SAL_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Sal!"

	para "somn somn"
	line "artisianl salts"
	done


BrinesburgPokeCenterWaitressText:
	text "I love my job,"
	line "but sometimes"

	para "I wish I could"
	line "just serve food"
	cont "without battling."
	done

	BrinesburgFluttrfawnText:
	text "Fluttrfawn: Seyy!"
	done
