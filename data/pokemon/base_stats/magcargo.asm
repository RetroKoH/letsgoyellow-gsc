	db  60,  50, 120,  30,  90,  80 ; 430 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 154 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magcargo/front.dimensions"
	abilities_for MAGCARGO, MAGMA_ARMOR, FLAME_BODY, WEAK_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, WILL_O_WISP, FACADE, ROCK_SLIDE, FLAMETHROWER, EARTHQUAKE, EXPLOSION, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, BULLDOZE

	;tutors EARTH_POWER, STONE_EDGE, GYRO_BALL, FLAME_CHARGE
	; end
