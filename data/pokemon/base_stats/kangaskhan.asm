	db 105,  95,  80,  90,  40,  80 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kangaskhan/front.dimensions"
	abilities_for KANGASKHAN, EARLY_BIRD, SCRAPPY, INNER_FOCUS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, SHADOW_BALL, SOLAR_BEAM, FIRE_BLAST, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP, SANDSTORM, DRAIN_PUNCH, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, AVALANCHE
	; end
