	db  35,  60,  44,  55,  40,  54 ; 288 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ekans/front.dimensions"
	abilities_for EKANS, INTIMIDATE, SHED_SKIN, UNNERVE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, POISON_JAB, TOXIC, EARTHQUAKE, SLUDGE_BOMB, MEGA_DRAIN, BULLET_SEED, BULLDOZE

	;tutors GUNK_SHOT
	; end
