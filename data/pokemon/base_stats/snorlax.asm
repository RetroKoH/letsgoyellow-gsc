	db 160, 110,  65,  30,  65, 110 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LEFTOVERS ; item 2
	dn GENDER_F12_5, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	abilities_for SNORLAX, IMMUNITY, THICK_FAT, GLUTTONY
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
