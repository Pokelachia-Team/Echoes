	bst 460,  60,  50, 100,  60,  110, 80  
	;    BST  hp  atk  def  spe  sat  sdf

	db ICE, GHOST ; type
	db 90 ; catch rate
	db 62 ; base exp
	db NO_ITEM, ENIGMA_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SINISTEA, LEVITATE, LEVITATE, CURSED_BODY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	ev_yield 2 SAT

	; tm/hm learnset
	tmhm ICE_BEAM, ICE_PUNCH, SHADOW_BALL, GIGA_DRAIN, SLEEP_TALK, REFLECT, REST, SUBSTITUTE, CALM_MIND, HYPER_BEAM, CURSE, BATON_PASS
	; end
