	db  35,  35,  40,  50,  35,  55 ; 250 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/hoppip/front.dimensions"
	abilities_for HOPPIP, CHLOROPHYLL, LEAF_GUARD, INFILTRATOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, U_TURN, DAZZLINGLEAM, SOLAR_BEAM, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL, ACROBATICS

	;tutors AERIAL_ACE, GRASS_KNOT
	; end
