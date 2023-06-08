	db  55,  70,  65, 100,  75,  55 ; 420 BST +100 (20/15/25/10/25/5)
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 0 ; catch rate
	db 82 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F100, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pikachu_plain/front.dimensions"
	abilities_for PIKACHU, STATIC, STATIC, STATIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
