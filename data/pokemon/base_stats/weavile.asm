	db  70, 120,  65, 125,  45,  85 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp
	db GRIP_CLAW ; item 1
	db QUICK_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/weavile/front.dimensions"
	abilities_for WEAVILE, PRESSURE, PRESSURE, PICKPOCKET
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, IRON_TAIL, DARK_PULSE, FOUL_PLAY, X_SCISSOR, POISON_JAB, CALM_MIND, ICE_PUNCH, SHADOW_BALL, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, DREAM_EATER, HAIL, FALSE_SWIPE, LOW_SWEEP

	;tutors AERIAL_ACE, AVALANCHE, KNOCK_OFF
	; end
