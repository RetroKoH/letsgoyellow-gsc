	db  61,  72,  57,  65,  55,  55 ; 365 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/nidorino/front.dimensions"
	abilities_for NIDORINO, POISON_POINT, RIVALRY, HUSTLE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, POISON_JAB, TOXIC, THUNDERBOLT, THUNDER, BLIZZARD, SLUDGE_BOMB, ICE_BEAM, DRILL_RUN, SMART_STRIKE

	;tutors EARTH_POWER
	; end
