	db 100, 125,  52,  71, 105,  52 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/honchkrow/front.dimensions"
	abilities_for HONCHKROW, INSOMNIA, SUPER_LUCK, MOXIE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, FLY, THUNDER_WAVE, U_TURN, DARK_PULSE, FOUL_PLAY, CALM_MIND, PSYCHIC, SHADOW_BALL, HYPER_BEAM, ROOST, DREAM_EATER, ACROBATICS

	;tutors AERIAL_ACE, HEX
	; end
