	db  65,  75,  70,  80,  65,  70 ; 425 BST +100 (10/20/20/25/20/5)
	;   hp  atk  def  spd  sat  sdf
	db NORMAL, NORMAL ; type
	db 0 ; catch rate
	db 92 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/eevee/front.dimensions"
	abilities_for EEVEE, ADAPTABILITY, ADAPTABILITY, ADAPTABILITY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, HYPER_VOICE, PAY_DAY, SWAGGER
	; end
