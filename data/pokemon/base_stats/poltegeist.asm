	bst 508,  70,  50, 100,  60,  138, 90 
	;   BST   hp  atk  def  spe  sat  sdf

	db ICE, GHOST ; type
	db 60 ; catch rate
	db 180 ; base exp
	db NO_ITEM, ENIGMA_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for POLTEGEIST, LEVITATE, LEVITATE, CURSED_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	ev_yield 2 SAT

	; tm/hm learnset
	tmhm ICE_BEAM, ICE_PUNCH, SHADOW_BALL, GIGA_DRAIN, SLEEP_TALK, REFLECT, REST, SUBSTITUTE, CALM_MIND, HYPER_BEAM, CURSE, BATON_PASS, DARK_PULSE, ENDURE, FACADE, LIGHT_SCREEN, PROTECT, PSYCHIC, SLEEP_TALK, TRICK, TRICK_ROOM, WILL_O_WISP
	; end