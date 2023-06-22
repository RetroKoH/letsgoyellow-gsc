	db  80, 100,  70,  45,  50,  60 ; 405 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp
	db NO_ITEM ; item 1
	db FOCUS_BAND ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/machoke/front.dimensions"
	abilities_for MACHOKE, GUTS, NO_GUARD, STEADFAST
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, THUNDERPUNCH, POISON_JAB, BULK_UP, FIRE_PUNCH, ICE_PUNCH, FLAMETHROWER, EARTHQUAKE, FIRE_BLAST, SUPERPOWER, WORK_UP, LOW_SWEEP, BULLDOZE

	;tutors FOCUS_BLAST, KNOCK_OFF
	; end
