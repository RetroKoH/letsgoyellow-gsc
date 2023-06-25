	db  75,  55,  70, 110,  55,  95 ; 460 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jumpluff/front.dimensions"
	abilities_for JUMPLUFF, CHLOROPHYLL, LEAF_GUARD, INFILTRATOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   3,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, U_TURN, DAZZLINGLEAM, SOLAR_BEAM, HYPER_BEAM, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL, ACROBATICS

	;tutors AERIAL_ACE, GRASS_KNOT
	; end
