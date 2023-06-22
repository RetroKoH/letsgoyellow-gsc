	db 130,  85,  80,  60,  85,  95 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db MYSTIC_WATER ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/lapras/front.dimensions"
	abilities_for LAPRAS, WATER_ABSORB, SHELL_ARMOR, HYDRATION
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, IRON_TAIL, WATERFALL, DRAGON_PULSE, THUNDERBOLT, THUNDER, OUTRAGE, PSYCHIC, SOLAR_BEAM, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, DRILL_RUN, DREAM_EATER, MEGAHORN, RAIN_DANCE, HAIL, BULLDOZE, SMART_STRIKE, AURORA_VEIL

	;tutors WEATHER_BALL, SIGNAL_BEAM, LIQUIDATION, ZEN_HEADBUTT, AVALANCHE, DRAGON_DANCE
	; end
