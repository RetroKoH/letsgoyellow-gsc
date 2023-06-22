	db  86,  76,  86,  95, 116,  56 ; 515 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 30 ; catch rate
	db 198 ; base exp
	db NO_ITEM ; item 1
	db WIDE_LENS ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
	abilities_for YANMEGA, SPEED_BOOST, TINTED_LENS, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, U_TURN, PSYCHIC, SHADOW_BALL, SOLAR_BEAM, HYPER_BEAM, ROOST, MEGA_DRAIN, DREAM_EATER

	;tutors AERIAL_ACE, SIGNAL_BEAM
	; end
