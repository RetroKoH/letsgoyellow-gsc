	db  90,  90,  85, 100, 125,  90 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/zapdos_plain/front.dimensions"
	abilities_for ZAPDOS, PRESSURE, PRESSURE, STATIC
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, THUNDER_WAVE, U_TURN, THUNDERBOLT, THUNDER, HYPER_BEAM, ROOST, RAIN_DANCE, SANDSTORM, VOLT_SWITCH

	;tutors WEATHER_BALL, AERIAL_ACE, SIGNAL_BEAM, WILD_CHARGE
	; end
