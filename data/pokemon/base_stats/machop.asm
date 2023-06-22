	db  70,  80,  50,  35,  35,  35 ; 305 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp
	db NO_ITEM ; item 1
	db FOCUS_BAND ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/machop/front.dimensions"
	abilities_for MACHOP, GUTS, NO_GUARD, STEADFAST
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, BULK_UP, FIRE_PUNCH, ICE_PUNCH, FLAMETHROWER, EARTHQUAKE, FIRE_BLAST, SUPERPOWER, WORK_UP, LOW_SWEEP, BULLDOZE

	;tutors FOCUS_BLAST, KNOCK_OFF
	; end
