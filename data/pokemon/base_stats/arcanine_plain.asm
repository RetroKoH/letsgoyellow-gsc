	db  90, 110,  80,  95, 100,  80 ; 555 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp
	db NO_ITEM ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/arcanine_plain/front.dimensions"
	abilities_for ARCANINE, INTIMIDATE, FLASH_FIRE, JUSTIFIED
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
