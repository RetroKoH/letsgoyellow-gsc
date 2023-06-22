	db  50,  75,  85,  40,  20,  30 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM ; item 1
	db QUICK_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sandshrew_plain/front.dimensions"
	abilities_for SANDSHREW, SAND_VEIL, SAND_VEIL, SAND_RUSH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, X_SCISSOR, POISON_JAB, EARTHQUAKE, STEALTH_ROCK, WORK_UP, SUNNY_DAY, SANDSTORM, BULLDOZE

	;tutors AERIAL_ACE, EARTH_POWER, GYRO_BALL, KNOCK_OFF
	; end
