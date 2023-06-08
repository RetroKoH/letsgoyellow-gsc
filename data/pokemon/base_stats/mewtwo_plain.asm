	db 106, 110,  90, 130, 154,  90 ; 680 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 3 ; catch rate
	db 220 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db PETAYA_BERRY ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mewtwo_plain/front.dimensions"
	abilities_for MEWTWO, PRESSURE, PRESSURE, UNNERVE
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
