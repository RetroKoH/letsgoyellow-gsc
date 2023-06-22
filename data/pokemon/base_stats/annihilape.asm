	db  110, 115, 80,  90,  50,  90 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, GHOST ; type
	db 45 ; catch rate
	db 189 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/annihilape/front.dimensions"
	abilities_for ANNIHILAPE, VITAL_SPIRIT, INNER_FOCUS, DEFIANT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, U_TURN, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, BULK_UP, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, OUTRAGE, EARTHQUAKE, SHADOW_BALL, HYPER_BEAM, WORK_UP, DRAIN_PUNCH, LOW_SWEEP, ACROBATICS, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, GUNK_SHOT, STONE_EDGE
	; end
