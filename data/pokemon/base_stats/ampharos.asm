	db  90,  75,  85,  55, 115,  90 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ampharos/front.dimensions"
	abilities_for AMPHAROS, STATIC, STATIC, STATIC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, DRAGON_TAIL, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, DAZZLINGLEAM, DRAGON_PULSE, ICE_PUNCH, THUNDERBOLT, THUNDER, OUTRAGE, HYPER_BEAM, RAIN_DANCE, VOLT_SWITCH, BULLDOZE

	;tutors FOCUS_BLAST, SIGNAL_BEAM, WILD_CHARGE
	; end
