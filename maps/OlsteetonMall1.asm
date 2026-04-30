OlsteetonMall1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8,  7, OLSTEETON, 5
	warp_event  7,  7, OLSTEETON, 5
	warp_event 15,  4, OLSTEETON_MALL_2, 3
	warp_event 15,  5, OLSTEETON_MALL_2, 4

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, OlsteetonMall1DirectoryText

	def_object_events
	object_event 10,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BARGAIN, 0, -1
	object_event 11,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BARGAIN, 0, -1
	object_event 12,  7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonMall1YoungsterText, -1
	object_event  2,  6, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonMall1CooltrainerFText, -1
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OlsteetonMall1GentlemanText, -1
	pokemon_event  0,  3, HAUNTER, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PURPLE, OlsteetonMall1HaunterText, -1


OlsteetonMall1YoungsterText: 
	text "My friend's par-" 
	line "ents both worked"
	
	para "at the mill, but" 
	line "when it shut down,"
	cont "they had to move."
	
	para "Sniff. I miss"
	line "looking at the new"
	cont "#gear with him."
	done
OlsteetonMall1CooltrainerFText:
	text "I'm looking for" 
	line "something that"
	
	para "might cheer up my"
	line "brother... His"
	
	para "friend moved away,"
	line "and he's still"
	cont "really sad." 
	
	para "Maybe a Gluttle plushie?"
	line "Or-oh! This"
	
	para "paint-by-numbers"
	line "Pricupi book is"
	cont "perfect!"
	done

OlsteetonMall1GentlemanText:
	text "Gaublin here is"
	line "always up to" 
	cont "mischief."
	
	para "It snuck into the"
	line "cupboard and ate"
	  
	para "all the berries"
	line "I'd gotten for"
	cont "it for the week!"
	
	para "In one sitting!"
	line "I'm gonna have to"
	
	para "figure out a"
	line "ghost-proof food"
	cont "containment system"
	done

OlsteetonMall1HaunterText:
	text "Gaublin:HAUNTHANT!"
	line "It looks pleased"
	cont "with itself."
	done
OlsteetonMall1DirectoryText:
	text "Employees Only"
	line "Beyond This"
	cont "Point!"
	done
