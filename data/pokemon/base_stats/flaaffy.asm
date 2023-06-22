	db  70,  55,  55,  45,  80,  60 ; 365 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 117 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/flaaffy/front.dimensions"
	abilities_for FLAAFFY, STATIC, STATIC, STATIC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, DAZZLINGLEAM, ICE_PUNCH, THUNDERBOLT, THUNDER, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, WILD_CHARGE
	; end
