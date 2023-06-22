	db  60,  95,  80,  30,  60,  80 ; 405 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp
	db TINYMUSHROOM ; item 1
	db BIG_MUSHROOM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/parasect/front.dimensions"
	abilities_for PARASECT, EFFECT_SPORE, DRY_SKIN, DAMP
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	ev_yield   0,   2,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, X_SCISSOR, SOLAR_BEAM, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, FALSE_SWIPE, BULLET_SEED, ENERGY_BALL

	;tutors AERIAL_ACE, GRASS_KNOT, KNOCK_OFF
	; end
