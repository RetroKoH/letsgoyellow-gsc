	db  65,  90,  50,  55,  85,  45 ; 390 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 151 ; base exp
	db GOLD_LEAF ; item 1
	db GOLD_LEAF ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/weepinbell/front.dimensions"
	abilities_for WEEPINBELL, CHLOROPHYLL, CHLOROPHYLL, GLUTTONY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, POISON_JAB, SOLAR_BEAM, SLUDGE_BOMB, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL

	;tutors GRASS_KNOT, KNOCK_OFF
	; end
