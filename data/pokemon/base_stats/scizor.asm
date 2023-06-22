	db  70, 130, 100,  65,  55,  80 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp
	db NO_ITEM ; item 1
	db METAL_COAT ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/scizor/front.dimensions"
	abilities_for SCIZOR, SWARM, TECHNICIAN, LIGHT_METAL
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, FACADE, BRICK_BREAK, U_TURN, X_SCISSOR, HYPER_BEAM, SUPERPOWER, ROOST, FLASH_CANNON, SANDSTORM, FALSE_SWIPE, ACROBATICS

	;tutors AERIAL_ACE, KNOCK_OFF
	; end
