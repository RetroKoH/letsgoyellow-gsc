	db  90, 125,  90, 100,  85,  90 ; 580 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 3 ; catch rate
	db 216 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/zapdos_galarian/front.dimensions"
	abilities_for ZAPDOS_GALARIAN, DEFIANT, DEFIANT, DEFIANT
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
