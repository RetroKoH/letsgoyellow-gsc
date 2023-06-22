	db 105, 130, 120,  40,  45,  45 ; 485 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp
	db NO_ITEM ; item 1
	db PROTECTOR ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rhydon/front.dimensions"
	abilities_for RHYDON, LIGHTNING_ROD, ROCK_HEAD, RECKLESS
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, FIRE_PUNCH, DRAGON_PULSE, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, STEALTH_ROCK, DRILL_RUN, MEGAHORN, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors FOCUS_BLAST, EARTH_POWER, STONE_EDGE, AVALANCHE
	; end
