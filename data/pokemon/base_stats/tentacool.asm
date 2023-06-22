	db  40,  40,  35,  70,  50, 100 ; 335 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp
	db NO_ITEM ; item 1
	db POISON_BARB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/tentacool/front.dimensions"
	abilities_for TENTACOOL, CLEAR_BODY, LIQUID_OOZE, RAIN_DISH
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, WATERFALL, POISON_JAB, SCALD, DAZZLINGLEAM, SURF, BLIZZARD, SLUDGE_BOMB, MEGA_DRAIN, ICE_BEAM, RAIN_DANCE, HAIL

	;tutors HEX, KNOCK_OFF
	; end
