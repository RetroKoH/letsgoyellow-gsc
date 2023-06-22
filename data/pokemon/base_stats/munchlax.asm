	db 135,  85,  45,   5,  40,  85 ; 395 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 94 ; base exp
	db NO_ITEM ; item 1
	db LEFTOVERS ; item 2
	dn GENDER_F12_5, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/munchlax/front.dimensions"
	abilities_for MUNCHLAX, PICKUP, THICK_FAT, GLUTTONY
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, PSYCHIC, EARTHQUAKE, EXPLOSION, SHADOW_BALL, SOLAR_BEAM, FIRE_BLAST, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, WORK_UP, SANDSTORM, BULLDOZE

	;tutors GUNK_SHOT, ZEN_HEADBUTT
	; end
