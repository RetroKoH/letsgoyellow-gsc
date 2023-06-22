	db  40,  45,  35,  55,  30,  40 ; 245 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/zubat/front.dimensions"
	abilities_for ZUBAT, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, FLY, U_TURN, TOXIC, SHADOW_BALL, ROOST, SLUDGE_BOMB, MEGA_DRAIN, ACROBATICS

	;tutors AERIAL_ACE, ZEN_HEADBUTT
	; end
