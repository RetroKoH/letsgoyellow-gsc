	db  95, 115,  80,  90,  95,  80 ; 555 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, ROCK ; type
	db 75 ; catch rate
	db 213 ; base exp
	db NO_ITEM ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/arcanine_hisuian/front.dimensions"
	abilities_for ARCANINE_HISUIAN, INTIMIDATE, FLASH_FIRE, ROCK_HEAD
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
