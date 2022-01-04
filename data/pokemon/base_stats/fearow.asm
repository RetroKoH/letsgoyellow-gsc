	db  65,  90,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM ; item 1
	db SHARP_BEAK ; item 2
	dn FEMALE_50, 1 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db KEEN_EYE ; ability 1
	db KEEN_EYE ; ability 2
	db SNIPER ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn AVIAN, AVIAN ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   2,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
