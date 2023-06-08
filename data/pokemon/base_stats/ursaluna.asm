	db 130, 140, 105,  50,  45,  80 ; 550 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, NORMAL ; type
	db 30 ; catch rate
	db 229 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db SITRUS_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ursaluna/front.dimensions"
	abilities_for URSALUNA, GUTS, BULLETPROOF, UNNERVE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
