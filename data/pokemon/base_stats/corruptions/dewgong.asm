;	db  90,  70,  80,  90,  90, 105 ; 525 BST
	;   hp  atk  def  spd  sat  sdf
	db  90,  70,  80,  90, 100, 105 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 75 ; catch rate
	db 176 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dewgong/front.dimensions"
	abilities_for DEWGONG_CORRUPT, INTIMIDATE, INTIMIDATE, INTIMIDATE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
