	db  90, 135,  85,  95,  50, 100 ; 555 BST
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, POISON ; type
	db 45 ; catch rate
	db 193 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/machamp/front.dimensions"
	abilities_for MACHAMP_CORRUPT, PARENTAL_BOND, PARENTAL_BOND, PARENTAL_BOND ; Replace with punch variant of this ability
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
