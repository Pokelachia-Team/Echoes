	bst 350,  65,  65,  55,  50,  60,  55
	;   bst   hp  atk  def  sat  sdf  spe

	db BUG, POISON ; type
	db 190 ; catch rate
	db 80 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for VENONAT, INTIMIDATE, INTIMIDATE, POISON_POINT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm CURSE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLAR_BEAM, RETURN, PSYCHIC, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE, FLASH, AGILITY, BATON_PASS, DOUBLE_EDGE, ENDURE, SKILL_SWAP, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
