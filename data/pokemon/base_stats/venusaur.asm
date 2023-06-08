	db  80,  82,  83,  80, 100, 100 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/venusaur/front.dimensions"
	abilities_for VENUSAUR, OVERGROW, OVERGROW, CHLOROPHYLL
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   2,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
