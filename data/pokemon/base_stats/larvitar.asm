	db  50,  64,  50,  41,  45,  50 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/larvitar/front.dimensions"
	abilities_for LARVITAR, GUTS, GUTS, SAND_VEIL
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, OUTRAGE, EARTHQUAKE, HYPER_BEAM, SUPERPOWER, STEALTH_ROCK, SANDSTORM, BULLDOZE

	;tutors EARTH_POWER, STONE_EDGE, DRAGON_DANCE
	; end
