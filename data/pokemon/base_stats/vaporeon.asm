	db 130,  65,  60,  65, 110,  95 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/vaporeon/front.dimensions"
	abilities_for VAPOREON, WATER_ABSORB, WATER_ABSORB, HYDRATION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, WATERFALL, SCALD, CALM_MIND, SHADOW_BALL, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL

	;tutors WEATHER_BALL, SIGNAL_BEAM, LIQUIDATION
	; end
