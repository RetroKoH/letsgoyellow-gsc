	db  81, 102,  77,  85,  85,  75 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/nidoking/front.dimensions"
	abilities_for NIDOKING, POISON_POINT, RIVALRY, SHEER_FORCE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, TOXIC, FIRE_PUNCH, DRAGON_PULSE, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, SHADOW_BALL, FIRE_BLAST, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, SLUDGE_BOMB, ICE_BEAM, STEALTH_ROCK, DRILL_RUN, MEGAHORN, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors FOCUS_BLAST, EARTH_POWER, STONE_EDGE, HEX, AVALANCHE
	; end
