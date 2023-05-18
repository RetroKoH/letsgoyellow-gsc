	db 130,  85, 100,  50, 100, 110 ; 585 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 45 ; catch rate
	db 219 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/lapras/front.dimensions"
	abilities_for LAPRAS_CORRUPT, MEGA_LAUNCHER, MEGA_LAUNCHER, MEGA_LAUNCHER ; or REFRIGERATE?
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
