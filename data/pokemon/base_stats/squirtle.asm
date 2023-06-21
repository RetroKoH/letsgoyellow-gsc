	db  44,  48,  65,  43,  50,  64 ; 314 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/squirtle/front.dimensions"
	abilities_for SQUIRTLE, TORRENT, TORRENT, RAIN_DISH
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, WATERFALL, SCALD, DRAGON_PULSE, ICE_PUNCH, OUTRAGE, SURF, BLIZZARD, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL, ICY_WIND

;	tutors WEATHER_BALL, GYRO_BALL, ZEN_HEADBUTT
	; end
