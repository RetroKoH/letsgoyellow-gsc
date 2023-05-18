	db  75,  80, 110,  50, 110, 115 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/bellossom/front.dimensions"
	abilities_for BELLOSSOM_CORRUPT, MAGIC_GUARD, MAGIC_GUARD, MAGIC_GUARD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
