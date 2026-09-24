	bst 508,  70,  50, 100, 138, 90,  60   
	;   bst   hp  atk  def  sat  sdf  spe

	db ICE, GHOST ; type
	db 60 ; catch rate
	db 180 ; base exp
	db NO_ITEM, ENIGMA_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for POLTEGEIST, CURSED_BODY, ICE_BODY, LEVITATE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	ev_yield 2 SAT

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, HYPER_BEAM, SUBSTITUTE, FACADE, REST, DAZZLINGLEAM, DARK_PULSE, WATER_PULSE, SHADOW_CLAW, DREAM_EATER, ENDURE, ICY_WIND, SUCKER_PUNCH, TRICK, TRICK_ROOM, ICE_BEAM, ICE_PUNCH, SHADOW_BALL, GIGA_DRAIN, SLEEP_TALK, REFLECT, BATON_PASS
	; end