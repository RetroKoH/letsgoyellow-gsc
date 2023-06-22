	db  70, 135,  95,  85,  45,  70 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 15 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kleavor/front.dimensions"
	abilities_for KLEAVOR, SWARM, TECHNICIAN, TOUGH_CLAWS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, FACADE, BRICK_BREAK, U_TURN, X_SCISSOR, HYPER_BEAM, ROOST, STEALTH_ROCK, SANDSTORM, FALSE_SWIPE, ACROBATICS

	;tutors AERIAL_ACE, STONE_EDGE, KNOCK_OFF
	; end
