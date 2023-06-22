	db  79,  83, 100,  78,  85, 105 ; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/blastoise/front.dimensions"
	abilities_for BLASTOISE, TORRENT, TORRENT, RAIN_DISH
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, WATERFALL, SCALD, DRAGON_PULSE, ICE_PUNCH, OUTRAGE, EARTHQUAKE, SURF, HYPER_BEAM, BLIZZARD, FLASH_CANNON, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL, BULLDOZE

	;tutors WEATHER_BALL, FOCUS_BLAST, SIGNAL_BEAM, GYRO_BALL, LIQUIDATION, ZEN_HEADBUTT, AVALANCHE
	; end
