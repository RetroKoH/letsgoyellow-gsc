	db  75,  95,  67,  83, 125,  95 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 30 ; catch rate
	db 199 ; base exp
	db ASPEAR_BERRY ; item 1
	db MAGMARIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magmortar/front.dimensions"
	abilities_for MAGMORTAR, FLAME_BODY, FLAME_BODY, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, PROTECT, SUBSTITUTE, WILL_O_WISP, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, THUNDERBOLT, FLAMETHROWER, PSYCHIC, EARTHQUAKE, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, SUNNY_DAY, LOW_SWEEP, BULLDOZE

	;tutors WEATHER_BALL, FOCUS_BLAST, FLAME_CHARGE
	; end
