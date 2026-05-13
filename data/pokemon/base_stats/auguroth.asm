	bst 580, 90,  75, 115,  90, 115,  95
	;   bst   hp  atk  def  sat  sdf  spe

	db GHOST, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	db ALWAYS_ITEM_2, SMOKE_BALL ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

	abilities_for AUGUROTH, PRESSURE, PRESSURE, INNER_FOCUS
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 Def, 2 SDf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, PROTECT, BULLDOZE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, GIGA_IMPACT, CUT, AGILITY, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
