	db 170, 135,  80,  20,  60, 125 ; 590 BST
	;   hp  atk  def  spd  sat  sdf
	;  +10  +25  +15  -10   -5  +15

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	abilities_for SNORLAX_CORRUPT, THICK_FAT, THICK_FAT, THICK_FAT
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
