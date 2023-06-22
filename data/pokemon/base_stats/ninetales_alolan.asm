	db  73,  67,  75, 109,  81, 100 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F75, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ninetales_alolan/front.dimensions"
	abilities_for NINETALES_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SNOW_WARNING
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   1,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, DARK_PULSE, FOUL_PLAY, DAZZLINGLEAM, CALM_MIND, SOLAR_BEAM, HYPER_BEAM, BLIZZARD, ICE_BEAM, DREAM_EATER, HAIL, AURORA_VEIL

	;tutors WEATHER_BALL, HEX, ZEN_HEADBUTT, AVALANCHE
	; end
