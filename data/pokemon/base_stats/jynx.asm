	db  65,  50,  35,  95, 115,  95 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 137 ; base exp
	db RAWST_BERRY ; item 1
	db RAWST_BERRY ; item 2
	dn GENDER_F100, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jynx/front.dimensions"
	abilities_for JYNX, OBLIVIOUS, FOREWARN, DRY_SKIN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
