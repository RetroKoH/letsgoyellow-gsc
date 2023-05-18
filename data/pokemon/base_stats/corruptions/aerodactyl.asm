	db  80, 115,  75, 140,  70,  85 ; 555 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	abilities_for AERODACTYL_CORRUPT, TOUGH_CLAWS, TOUGH_CLAWS, TOUGH_CLAWS
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
