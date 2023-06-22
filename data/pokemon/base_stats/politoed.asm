	db  90,  75,  75,  70,  90, 100 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/politoed/front.dimensions"
	abilities_for POLITOED, WATER_ABSORB, DAMP, DRIZZLE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, WATERFALL, SCALD, ICE_PUNCH, PSYCHIC, EARTHQUAKE, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, RAIN_DANCE, HAIL, BULLDOZE

	;tutors WEATHER_BALL, FOCUS_BLAST, EARTH_POWER, LIQUIDATION
	; end
