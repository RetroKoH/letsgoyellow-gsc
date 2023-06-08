	db  80, 105,  65,  70, 100,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db BIG_ROOT ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/victreebel/front.dimensions"
	abilities_for VICTREEBEL, CHLOROPHYLL, CHLOROPHYLL, GLUTTONY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
