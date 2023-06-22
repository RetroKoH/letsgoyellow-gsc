	db  55,  45,  45,  15,  25,  25 ; 210 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp
	db NO_ITEM ; item 1
	db CHESTO_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/wooper_plain/front.dimensions"
	abilities_for WOOPER, DAMP, WATER_ABSORB, UNAWARE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, ROCK_SLIDE, WATERFALL, TOXIC, SCALD, ICE_PUNCH, EARTHQUAKE, SURF, BLIZZARD, SLUDGE_BOMB, ICE_BEAM, STEALTH_ROCK, RAIN_DANCE, SANDSTORM, HAIL, BULLDOZE

	;tutors EARTH_POWER, LIQUIDATION, AVALANCHE
	; end
