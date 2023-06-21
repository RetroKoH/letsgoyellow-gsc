	db  45,  49,  49,  45,  65,  65 ; 318 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 64 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/bulbasaur/front.dimensions"
	abilities_for BULBASAUR, OVERGROW, OVERGROW, CHLOROPHYLL
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, TOXIC, OUTRAGE, SOLAR_BEAM, SLUDGE_BOMB, MEGA_DRAIN, WORK_UP, SUNNY_DAY, BULLET_SEED, ENERGY_BALL

;	tutors WEATHER_BALL, GRASS_KNOT, KNOCK_OFF
	; end
