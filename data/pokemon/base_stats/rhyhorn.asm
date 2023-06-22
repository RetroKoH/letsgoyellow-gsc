	db  80,  85,  95,  25,  30,  30 ; 345 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM ; item 1
	db PROTECTOR ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rhyhorn/front.dimensions"
	abilities_for RHYHORN, LIGHTNING_ROD, ROCK_HEAD, RECKLESS
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, ROCK_SLIDE, POISON_JAB, DRAGON_PULSE, THUNDERBOLT, FLAMETHROWER, THUNDER, EARTHQUAKE, FIRE_BLAST, SUPERPOWER, BLIZZARD, ICE_BEAM, STEALTH_ROCK, DRILL_RUN, MEGAHORN, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors EARTH_POWER, STONE_EDGE
	; end
