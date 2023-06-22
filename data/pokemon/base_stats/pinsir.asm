	db  65, 125, 100,  85,  55,  70 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	abilities_for PINSIR, HYPER_CUTTER, MOLD_BREAKER, MOXIE
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, X_SCISSOR, BULK_UP, OUTRAGE, EARTHQUAKE, HYPER_BEAM, SUPERPOWER, STEALTH_ROCK, FALSE_SWIPE, BULLDOZE

	;tutors FOCUS_BLAST, STONE_EDGE, KNOCK_OFF
	; end
