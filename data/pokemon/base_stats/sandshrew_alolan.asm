	db  50,  75,  90,  40,  10,  35 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM ; item 1
	db GRIP_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sandshrew_alolan/front.dimensions"
	abilities_for SANDSHREW_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SLUSH_RUSH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, X_SCISSOR, POISON_JAB, ICE_PUNCH, EARTHQUAKE, BLIZZARD, ICE_BEAM, STEALTH_ROCK, WORK_UP, HAIL, BULLDOZE, AURORA_VEIL

	;tutors AERIAL_ACE, GYRO_BALL, AVALANCHE, KNOCK_OFF
	; end
