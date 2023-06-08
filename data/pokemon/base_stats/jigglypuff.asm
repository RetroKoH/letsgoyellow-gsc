	db 115,  45,  20,  20,  45,  25 ; 270 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp
	db ORAN_BERRY ; item 1
	db ORAN_BERRY ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	abilities_for JIGGLYPUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
