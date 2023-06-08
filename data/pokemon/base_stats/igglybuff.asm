	db  90,  30,  15,  15,  40,  20 ; 210 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 150 ; catch rate
	db 39 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/igglybuff/front.dimensions"
	abilities_for IGGLYBUFF, CUTE_CHARM, COMPETITIVE, FRISK
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
