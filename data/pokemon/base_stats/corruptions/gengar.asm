	db  60,  80,  60, 110, 145,  95 ; 550 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DARK ; type
	db 45 ; catch rate
	db 190 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gengar/front.dimensions"
	abilities_for GENGAR_CORRUPT, CURSED_BODY, CURSED_BODY, CURSED_BODY ; Replace with WonderGuard
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
