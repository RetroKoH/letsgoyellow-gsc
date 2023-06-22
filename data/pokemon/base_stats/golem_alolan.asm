	db  80, 120, 130,  45,  55,  65 ; 495 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ELECTRIC ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM ; item 1
	db EVERSTONE ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/golem_alolan/front.dimensions"
	abilities_for GOLEM_ALOLAN, MAGNET_PULL, STURDY, GALVANIZE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   3,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, EARTHQUAKE, EXPLOSION, FIRE_BLAST, HYPER_BEAM, SUPERPOWER, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, VOLT_SWITCH, BULLDOZE

	;tutors FOCUS_BLAST, EARTH_POWER, STONE_EDGE, GYRO_BALL, WILD_CHARGE
	; end
