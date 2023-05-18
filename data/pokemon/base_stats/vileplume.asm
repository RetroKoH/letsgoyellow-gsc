	db  75,  80,  85,  50, 110,  90 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ABSORB_BULB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/vileplume/front.dimensions"
	abilities_for VILEPLUME, CHLOROPHYLL, CHLOROPHYLL, EFFECT_SPORE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, SUNNY_DAY, HYPER_BEAM, PROTECT, GRASS_KNOT, SAFEGUARD, SOLAR_BEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, ENERGY_BALL, DRAIN_PUNCH, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLASH, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HYPER_VOICE, SEED_BOMB, SWAGGER
	; end
