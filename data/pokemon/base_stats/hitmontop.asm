	db  50,  95,  95,  70,  35, 110 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 138 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/hitmontop/front.dimensions"
	abilities_for HITMONTOP, INTIMIDATE, TECHNICIAN, STEADFAST
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, BULK_UP, EARTHQUAKE, WORK_UP, DRILL_RUN, SANDSTORM, LOW_SWEEP, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, STONE_EDGE, GYRO_BALL
	; end
