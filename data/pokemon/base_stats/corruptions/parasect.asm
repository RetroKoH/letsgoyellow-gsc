	db  60, 120, 100,  30,  60,  85 ; 455 BST
	;   hp  atk  def  spd  sat  sdf
	;       +25  +20             +5
	db BUG, ROCK ; type
	db 75 ; catch rate
	db 128 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/parasect/front.dimensions"
	abilities_for PARASECT_CORRUPT, SOLID_ROCK, SOLID_ROCK, SOLID_ROCK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	ev_yield   0,   2,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
