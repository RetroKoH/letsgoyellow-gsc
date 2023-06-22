	db  65, 105,  60,  95,  60,  70 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp
	db NO_ITEM ; item 1
	db KEE_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/primeape/front.dimensions"
	abilities_for PRIMEAPE, VITAL_SPIRIT, ANGER_POINT, DEFIANT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, U_TURN, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, BULK_UP, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, OUTRAGE, EARTHQUAKE, HYPER_BEAM, WORK_UP, DRAIN_PUNCH, LOW_SWEEP, ACROBATICS, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, GUNK_SHOT, STONE_EDGE
	; end
