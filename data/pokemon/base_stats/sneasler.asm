	db  80, 130,  60, 120,  40,  80 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, POISON ; type
	db 45 ; catch rate
	db 199 ; base exp
	db GRIP_CLAW ; item 1
	db QUICK_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sneasler/front.dimensions"
	abilities_for SNEASLER, PRESSURE, UNBURDEN, POISON_TOUCH
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, IRON_TAIL, X_SCISSOR, POISON_JAB, BULK_UP, CALM_MIND, SHADOW_BALL, HYPER_BEAM, SLUDGE_BOMB, FALSE_SWIPE, LOW_SWEEP

	;tutors FOCUS_BLAST, AERIAL_ACE, GUNK_SHOT, GRASS_KNOT
	; end
