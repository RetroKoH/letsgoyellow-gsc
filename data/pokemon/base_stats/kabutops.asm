	db  60, 115, 105,  80,  65,  70 ; 495 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 5 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	abilities_for KABUTOPS, SWIFT_SWIM, BATTLE_ARMOR, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, SEISMIC_TOSS, ROCK_SLIDE, X_SCISSOR, WATERFALL, SCALD, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, MEGA_DRAIN, ICE_BEAM, STEALTH_ROCK, RAIN_DANCE, SANDSTORM, HAIL

	;tutors AERIAL_ACE, EARTH_POWER, STONE_EDGE, LIQUIDATION, KNOCK_OFF
	; end
