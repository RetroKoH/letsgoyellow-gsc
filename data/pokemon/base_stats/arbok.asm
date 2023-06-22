	db  60,  95,  69,  80,  65,  79 ; 448 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp
	db NO_ITEM ; item 1
	db POISON_BARB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/arbok_johto/front.dimensions"
	abilities_for ARBOK, INTIMIDATE, SHED_SKIN, UNNERVE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, DRAGON_TAIL, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, POISON_JAB, TOXIC, EARTHQUAKE, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, BULLET_SEED, BULLDOZE

	;tutors GUNK_SHOT
	; end
