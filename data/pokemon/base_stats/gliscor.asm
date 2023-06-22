	db  75,  95, 125,  95,  45,  75 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 30 ; catch rate
	db 192 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gliscor/front.dimensions"
	abilities_for GLISCOR, HYPER_CUTTER, SAND_VEIL, POISON_HEAL
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, U_TURN, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, X_SCISSOR, POISON_JAB, EARTHQUAKE, HYPER_BEAM, ROOST, SLUDGE_BOMB, STEALTH_ROCK, SANDSTORM, FALSE_SWIPE, ACROBATICS, BULLDOZE

	;tutors AERIAL_ACE, STONE_EDGE, KNOCK_OFF
	; end
