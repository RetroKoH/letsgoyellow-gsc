	db  55,  35,  50,  85,  55, 110 ; 390 BST
	;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ledian/front.dimensions"
	abilities_for LEDIAN, SWARM, EARLY_BIRD, IRON_FIST
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, U_TURN, THUNDERPUNCH, ICE_PUNCH, SOLAR_BEAM, HYPER_BEAM, ROOST, MEGA_DRAIN, DRAIN_PUNCH, ACROBATICS

	;tutors FOCUS_BLAST, AERIAL_ACE, KNOCK_OFF
	; end
