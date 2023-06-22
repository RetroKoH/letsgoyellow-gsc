	db  95,  85,  85,  35,  65,  65 ; 430 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp
	db NO_ITEM ; item 1
	db CHESTO_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/quagsire/front.dimensions"
	abilities_for QUAGSIRE, DAMP, WATER_ABSORB, UNAWARE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, WATERFALL, TOXIC, SCALD, ICE_PUNCH, EARTHQUAKE, SURF, HYPER_BEAM, BLIZZARD, SLUDGE_BOMB, ICE_BEAM, STEALTH_ROCK, RAIN_DANCE, SANDSTORM, HAIL, DRAIN_PUNCH, BULLDOZE

	;tutors FOCUS_BLAST, EARTH_POWER, STONE_EDGE, LIQUIDATION, AVALANCHE
	; end
