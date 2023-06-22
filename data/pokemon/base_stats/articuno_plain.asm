	db  90,  85, 100,  85,  95, 125 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/articuno_plain/front.dimensions"
	abilities_for ARTICUNO, PRESSURE, PRESSURE, SNOW_CLOAK
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, U_TURN, HYPER_BEAM, ROOST, BLIZZARD, ICE_BEAM, SANDSTORM, HAIL, AURORA_VEIL

	;tutors WEATHER_BALL, AERIAL_ACE, SIGNAL_BEAM, AVALANCHE
	; end
