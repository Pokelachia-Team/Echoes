	; If you change the BST, update data/pokemon/base_exp_exceptions.asm
	bst 220, 50,  20,  20,  45,  45,  40
	;   bst   hp  atk  def  sat  sdf  spe

	db FAIRY, NORMAL ; type
	db 130 ; catch rate
	db 255 ; base exp
	db HARD_STONE, LUCKY_EGG ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for NOFAWTS, NATURAL_CURE, SERENE_GRACE, NATURAL_CURE
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLAR_BEAM, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, DRAIN_PUNCH, WATER_PULSE, FLASH, THUNDER_WAVE, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, HEADBUTT, HYPER_VOICE, ICY_WIND, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
