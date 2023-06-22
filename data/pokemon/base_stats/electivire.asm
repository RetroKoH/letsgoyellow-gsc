	db  75, 123,  67,  95,  95,  85 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 30 ; catch rate
	db 199 ; base exp
	db PERSIM_BERRY ; item 1
	db ELECTIRIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/electivire/front.dimensions"
	abilities_for ELECTIVIRE, MOTOR_DRIVE, MOTOR_DRIVE, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, PSYCHIC, EARTHQUAKE, HYPER_BEAM, RAIN_DANCE, VOLT_SWITCH, LOW_SWEEP, BULLDOZE

	;tutors WEATHER_BALL, FOCUS_BLAST, SIGNAL_BEAM, WILD_CHARGE
	; end
