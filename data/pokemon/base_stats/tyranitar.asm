	db 100, 134, 110,  61,  95, 100 ; 600 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/tyranitar/front.dimensions"
	abilities_for TYRANITAR, SAND_STREAM, SAND_STREAM, UNNERVE
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, DRAGON_TAIL, IRON_TAIL, DARK_PULSE, FOUL_PLAY, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, DRAGON_PULSE, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, STEALTH_ROCK, SANDSTORM, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, EARTH_POWER, STONE_EDGE, AVALANCHE, DRAGON_DANCE
	; end
