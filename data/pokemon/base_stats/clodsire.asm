	db 130,  75,  60,  20,  45, 100 ; 430 BST
	;   hp  atk  def  spe  sat  sdf

	db POISON, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp
	db NO_ITEM ; item 1
	db CHESTO_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/clodsire/front.dimensions"
	abilities_for CLODSIRE, POISON_POINT, WATER_ABSORB, UNAWARE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
