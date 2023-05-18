	db  60, 120,  79, 100,  55,  84 ; 498 BST
	;   hp  atk  def  spd  sat  sdf
	;       +25  +10  +20  -10   +5      

	db POISON, DARK ; type
	db 90 ; catch rate
	db 147 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/arbok_johto/front.dimensions"
	abilities_for ARBOK_CORRUPT, INTIMIDATE, INTIMIDATE, INTIMIDATE ; CORROSION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
