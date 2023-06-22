	db  70,  84,  70,  51,  65,  70 ; 410 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pupitar/front.dimensions"
	abilities_for PUPITAR, SHED_SKIN, SHED_SKIN, SHED_SKIN
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, OUTRAGE, EARTHQUAKE, HYPER_BEAM, SUPERPOWER, STEALTH_ROCK, SANDSTORM, BULLDOZE

	;tutors AERIAL_ACE, EARTH_POWER, STONE_EDGE, DRAGON_DANCE
	; end
