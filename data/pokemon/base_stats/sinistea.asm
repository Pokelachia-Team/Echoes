	bst 460,  60,  50, 100,  110, 80,  60  
	;   bst   hp  atk  def  sat  sdf  spe

	db ICE, GHOST ; type
	db 90 ; catch rate
	db 62 ; base exp
	db NO_ITEM, ENIGMA_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SINISTEA, CURSED_BODY, ICE_BODY, LEVITATE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	ev_yield 2 SAT

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, HYPER_BEAM, SUBSTITUTE, FACADE, REST, DAZZLINGLEAM, DARK_PULSE, WATER_PULSE, SHADOW_CLAW, DREAM_EATER, ENDURE, ICY_WIND, SUCKER_PUNCH, TRICK, TRICK_ROOM, ICE_BEAM, ICE_PUNCH, SHADOW_BALL, GIGA_DRAIN, SLEEP_TALK, REFLECT, BATON_PASS
	; end
