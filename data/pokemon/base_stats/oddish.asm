	db  45,  50,  55,  30,  75,  65 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp
	db SILVER_LEAF ; item 1
	db SILVER_LEAF ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/oddish/front.dimensions"
	abilities_for ODDISH, CHLOROPHYLL, CHLOROPHYLL, RUN_AWAY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, TOXIC, DAZZLINGLEAM, SOLAR_BEAM, SLUDGE_BOMB, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL

	;tutors GRASS_KNOT
	; end
