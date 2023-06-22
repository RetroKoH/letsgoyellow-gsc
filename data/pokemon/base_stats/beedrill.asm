	db  65,  90,  40,  75,  45,  80 ; 395 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	db SHED_SHELL ; item 1
	db POISON_BARB ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/beedrill/front.dimensions"
	abilities_for BEEDRILL, SWARM, SWARM, SNIPER
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, U_TURN, X_SCISSOR, POISON_JAB, OUTRAGE, SOLAR_BEAM, HYPER_BEAM, ROOST, SLUDGE_BOMB, MEGA_DRAIN, DRILL_RUN, SUNNY_DAY, FALSE_SWIPE, ACROBATICS

	;tutors AERIAL_ACE, KNOCK_OFF
	; end
