	db 115, 140, 130,  40,  55,  55 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 217 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rhyperior/front.dimensions"
	abilities_for RHYPERIOR, LIGHTNING_ROD, SOLID_ROCK, RECKLESS
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, FIRE_PUNCH, DRAGON_PULSE, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, FLASH_CANNON, ICE_BEAM, STEALTH_ROCK, DRILL_RUN, MEGAHORN, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors FOCUS_BLAST, EARTH_POWER, STONE_EDGE, AVALANCHE
	; end
