	db  90, 120,  75,  45,  60,  60 ; 450 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F75, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	abilities_for GRANBULL, INTIMIDATE, QUICK_FEET, RATTLED
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
