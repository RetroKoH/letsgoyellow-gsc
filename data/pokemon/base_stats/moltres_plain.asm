	db  90, 100,  90,  90, 125,  85 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/moltres_plain/front.dimensions"
	abilities_for MOLTRES, PRESSURE, PRESSURE, FLAME_BODY
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, WILL_O_WISP, FACADE, FLY, U_TURN, FLAMETHROWER, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, ROOST, SUNNY_DAY, SANDSTORM

	;tutors WEATHER_BALL, AERIAL_ACE, FLAME_CHARGE
	; end
