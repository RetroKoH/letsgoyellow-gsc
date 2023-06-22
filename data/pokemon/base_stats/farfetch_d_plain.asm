	db  52,  90,  55,  60,  58,  62 ; 377 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp
	db NO_ITEM ; item 1
	db STICK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/farfetch_d_plain/front.dimensions"
	abilities_for FARFETCH_D, KEEN_EYE, INNER_FOCUS, DEFIANT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, U_TURN, IRON_TAIL, POISON_JAB, ROOST, WORK_UP, SUNNY_DAY, FALSE_SWIPE, ACROBATICS

	;tutors AERIAL_ACE, KNOCK_OFF
	; end
