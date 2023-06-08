	db 255,  10,  10,  55,  75, 135 ; 540 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM ; item 1
	db LUCKY_EGG ; item 2
	dn GENDER_F100, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/blissey/front.dimensions"
	abilities_for BLISSEY, NATURAL_CURE, SERENE_GRACE, NATURAL_CURE
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
