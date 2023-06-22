	db  35, 100,  50, 120,  50,  70 ; 425 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp
	db NO_ITEM ; item 1
	db SOFT_SAND ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dugtrio_plain/front.dimensions"
	abilities_for DUGTRIO, SAND_VEIL, ARENA_TRAP, SAND_FORCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, ROCK_SLIDE, TRI_ATTACK, EARTHQUAKE, HYPER_BEAM, SLUDGE_BOMB, STEALTH_ROCK, WORK_UP, SANDSTORM, BULLDOZE

	;tutors AERIAL_ACE, EARTH_POWER, STONE_EDGE
	; end
