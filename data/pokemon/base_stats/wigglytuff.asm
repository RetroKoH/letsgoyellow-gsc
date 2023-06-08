	db 140,  70,  45,  45,  85,  50 ; 435 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 50 ; catch rate
	db 109 ; base exp
	db ORAN_BERRY ; item 1
	db ORAN_BERRY ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/wigglytuff/front.dimensions"
	abilities_for WIGGLYTUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
