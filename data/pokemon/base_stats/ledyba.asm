	db  40,  20,  30,  55,  40,  80 ; 265 BST
	;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
	abilities_for LEDYBA, SWARM, EARLY_BIRD, RATTLED
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, U_TURN, THUNDERPUNCH, ICE_PUNCH, SOLAR_BEAM, ROOST, MEGA_DRAIN, DRAIN_PUNCH, ACROBATICS

	;tutors AERIAL_ACE, KNOCK_OFF
	; end
