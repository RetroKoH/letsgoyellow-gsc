	db  65,  75,  70,  80,  65,  70 ; 425 BST +100 (10/20/20/25/20/5)
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 0 ; catch rate
	db 92 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/eevee/front.dimensions"
	abilities_for EEVEE, ADAPTABILITY, ADAPTABILITY, ADAPTABILITY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, CALM_MIND, SHADOW_BALL, WORK_UP

	;tutors WEATHER_BALL
	; end
