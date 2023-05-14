	db  55,  70,  65, 100,  75,  55 ; 420 BST +100 (20/15/25/10/25/5)
	;   hp  atk  def  spd  sat  sdf
	db ELECTRIC, ELECTRIC ; type
	db 0 ; catch rate
	db 82 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pikachu_plain/front.dimensions"
	abilities_for PIKACHU, STATIC, STATIC, STATIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, WILD_CHARGE, FLASH, VOLT_SWITCH, THUNDER_WAVE, STRENGTH, AGILITY, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, KNOCK_OFF, PAY_DAY, ROLLOUT, SEISMIC_TOSS, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
