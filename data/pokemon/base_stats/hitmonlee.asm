	db  50, 120,  53,  87,  35, 110 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 139 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/hitmonlee/front.dimensions"
	abilities_for HITMONLEE, LIMBER, RECKLESS, UNBURDEN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
