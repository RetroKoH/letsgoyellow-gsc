	db  90,  85,  85,  95, 125, 100 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/articuno_galarian/front.dimensions"
	abilities_for ARTICUNO_GALARIAN, COMPETITIVE, COMPETITIVE, COMPETITIVE
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, U_TURN, CALM_MIND, PSYCHIC, SHADOW_BALL, HYPER_BEAM, DREAM_EATER, SANDSTORM, HAIL, TRICK_ROOM

	;tutors AERIAL_ACE
	; end
