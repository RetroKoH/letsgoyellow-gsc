	db 110,  85,  95,  50,  80,  95 ; 515 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp
	db NO_ITEM ; item 1
	db LAGGING_TAIL ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/lickilicky/front.dimensions"
	abilities_for LICKILICKY, OWN_TEMPO, OBLIVIOUS, CLOUD_NINE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, EARTHQUAKE, EXPLOSION, SHADOW_BALL, SOLAR_BEAM, FIRE_BLAST, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP, DREAM_EATER, SUNNY_DAY, SANDSTORM, BULLDOZE

	;tutors FOCUS_BLAST, GYRO_BALL, ZEN_HEADBUTT, KNOCK_OFF
	; end
