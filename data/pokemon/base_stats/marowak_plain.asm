	db  60,  80, 110,  45,  50,  80 ; 425 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/marowak_plain/front.dimensions"
	abilities_for MAROWAK, ROCK_HEAD, LIGHTNING_ROD, BATTLE_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, FLAMETHROWER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, HYPER_BEAM, BLIZZARD, ICE_BEAM, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, FALSE_SWIPE, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, EARTH_POWER, STONE_EDGE, KNOCK_OFF
	; end
