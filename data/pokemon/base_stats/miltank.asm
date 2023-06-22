	db  95,  80, 105, 100,  40,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM ; item 1
	db MOOMOO_MILK ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/miltank/front.dimensions"
	abilities_for MILTANK, THICK_FAT, SCRAPPY, SAP_SIPPER
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, EARTHQUAKE, SHADOW_BALL, PLAY_ROUGH, SOLAR_BEAM, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, STEALTH_ROCK, WORK_UP, BULLDOZE

	;tutors FOCUS_BLAST, GYRO_BALL, ZEN_HEADBUTT
	; end
