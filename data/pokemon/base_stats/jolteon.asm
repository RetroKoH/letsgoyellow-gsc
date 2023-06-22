	db  65,  65,  60, 130, 110,  95 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jolteon/front.dimensions"
	abilities_for JOLTEON, VOLT_ABSORB, VOLT_ABSORB, QUICK_FEET
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, THUNDER_WAVE, IRON_TAIL, CALM_MIND, THUNDERBOLT, THUNDER, SHADOW_BALL, HYPER_BEAM, WORK_UP, RAIN_DANCE, VOLT_SWITCH

	;tutors WEATHER_BALL, SIGNAL_BEAM, WILD_CHARGE
	; end
