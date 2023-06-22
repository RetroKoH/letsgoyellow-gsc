	db  65,  55, 115,  60, 100,  40 ; 435 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/tangela/front.dimensions"
	abilities_for TANGELA, CHLOROPHYLL, LEAF_GUARD, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL

	;tutors GRASS_KNOT, KNOCK_OFF
	; end
