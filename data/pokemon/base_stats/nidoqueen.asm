	db  90,  92,  87,  76,  75,  85 ; 505 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/nidoqueen/front.dimensions"
	abilities_for NIDOQUEEN, POISON_POINT, RIVALRY, SHEER_FORCE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
