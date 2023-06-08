	db  65, 110, 130,  95,  60,  65 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/leafeon/front.dimensions"
	abilities_for LEAFEON, LEAF_GUARD, LEAF_GUARD, CHLOROPHYLL
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
