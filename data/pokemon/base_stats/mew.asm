	db 100, 100, 100, 100, 100, 100 ; 600 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 45 ; catch rate
	db 64 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db LUM_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mew/front.dimensions"
	abilities_for MEW, SYNCHRONIZE, SYNCHRONIZE, SYNCHRONIZE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
