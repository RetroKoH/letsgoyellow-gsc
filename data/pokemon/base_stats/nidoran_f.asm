	db  55,  47,  52,  41,  40,  40 ; 275 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/nidoran_f/front.dimensions"
	abilities_for NIDORAN_F, POISON_POINT, RIVALRY, HUSTLE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, POISON_JAB, TOXIC, THUNDERBOLT, THUNDER, BLIZZARD, SLUDGE_BOMB, ICE_BEAM

	;tutors AERIAL_ACE, EARTH_POWER
	; end
