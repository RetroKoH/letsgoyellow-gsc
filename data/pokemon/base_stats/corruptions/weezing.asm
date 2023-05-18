	db  65, 105, 130,  60, 105,  75 ; 540 BST
	;   hp  atk  def  spd  sat  sdf
	;   hp  +15  +10  spd  +20   +5

	db POISON, STEEL ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/weezing_plain/front.dimensions"
	abilities_for WEEZING_CORRUPT, NEUTRALIZING_GAS, NEUTRALIZING_GAS, NEUTRALIZING_GAS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
