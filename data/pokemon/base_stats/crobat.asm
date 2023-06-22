	db  85,  90,  80, 130,  70,  80 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/crobat/front.dimensions"
	abilities_for CROBAT, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   3,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, FLY, U_TURN, DARK_PULSE, X_SCISSOR, TOXIC, SHADOW_BALL, HYPER_BEAM, ROOST, SLUDGE_BOMB, MEGA_DRAIN, SUNNY_DAY, ACROBATICS

	;tutors AERIAL_ACE, HEX, ZEN_HEADBUTT
	; end
