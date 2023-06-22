	db  30,  80,  90,  55,  55,  45 ; 355 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 5 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kabuto/front.dimensions"
	abilities_for KABUTO, SWIFT_SWIM, BATTLE_ARMOR, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, ROCK_SLIDE, WATERFALL, SCALD, SURF, BLIZZARD, MEGA_DRAIN, ICE_BEAM, STEALTH_ROCK, RAIN_DANCE, SANDSTORM, HAIL

	;tutors AERIAL_ACE, EARTH_POWER, LIQUIDATION, KNOCK_OFF
	; end
