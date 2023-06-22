	db  35,  40, 100,  35,  90,  55 ; 355 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 5 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/omanyte/front.dimensions"
	abilities_for OMANYTE, SWIFT_SWIM, SHELL_ARMOR, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, ROCK_SLIDE, WATERFALL, SCALD, SURF, BLIZZARD, ICE_BEAM, STEALTH_ROCK, RAIN_DANCE, SANDSTORM, HAIL

	;tutors EARTH_POWER, GYRO_BALL, LIQUIDATION, KNOCK_OFF
	; end
