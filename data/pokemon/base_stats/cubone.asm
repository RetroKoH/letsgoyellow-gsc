	db  50,  50,  95,  35,  40,  50 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/cubone/front.dimensions"
	abilities_for CUBONE, ROCK_HEAD, LIGHTNING_ROD, BATTLE_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   0,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, FLAMETHROWER, EARTHQUAKE, FIRE_BLAST, BLIZZARD, ICE_BEAM, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, FALSE_SWIPE, BULLDOZE

	;tutors AERIAL_ACE, EARTH_POWER, KNOCK_OFF
	; end
