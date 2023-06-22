	db  75,  75,  55,  30, 105,  85 ; 425 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sunflora/front.dimensions"
	abilities_for SUNFLORA, CHLOROPHYLL, SOLAR_POWER, EARLY_BIRD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, FACADE, DAZZLINGLEAM, SOLAR_BEAM, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, SUNNY_DAY, BULLET_SEED, ENERGY_BALL

	;tutors EARTH_POWER, GRASS_KNOT
	; end
