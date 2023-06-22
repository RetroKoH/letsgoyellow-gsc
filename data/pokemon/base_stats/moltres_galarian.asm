	db  90,  85,  90,  90, 100, 125 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/moltres_galarian/front.dimensions"
	abilities_for MOLTRES_GALARIAN, BERSERK, BERSERK, BERSERK
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, FLY, U_TURN, DARK_PULSE, FOUL_PLAY, SHADOW_BALL, HYPER_BEAM, SUNNY_DAY, SANDSTORM

	;tutors AERIAL_ACE, HEX
	; end
