	db  70, 110,  80, 105,  55,  80 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/scyther/front.dimensions"
	abilities_for SCYTHER, SWARM, TECHNICIAN, STEADFAST
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, FACADE, BRICK_BREAK, U_TURN, X_SCISSOR, HYPER_BEAM, ROOST, FALSE_SWIPE, ACROBATICS

	;tutors AERIAL_ACE, KNOCK_OFF
	; end
