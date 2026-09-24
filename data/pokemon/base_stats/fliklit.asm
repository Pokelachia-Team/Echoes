	bst 309,  39,  52,  43,  60,  50,  65
	;   bst   hp  atk  def  sat  sdf  spe

	db FIRE, BUG ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for FLIKLIT, BLAZE, BLAZE, TINTED_LENS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, LIGHT_SCREEN, PROTECT, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, DAZZLINGLEAM, LEECH_LIFE, WILL_O_WISP, SHADOW_CLAW, U_TURN, FLASH, SWORDS_DANCE, CUT, DEFENSE_CURL, ENDURE, SLEEP_TALK, SWAGGER
	; end
