	db  40,  60,  30,  70,  31,  31
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM ; item 1
	db SHARP_BEAK ; item 2
	dn FEMALE_50, 1 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db KEEN_EYE ; ability 1
	db KEEN_EYE ; ability 2
	db SNIPER ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn AVIAN, AVIAN ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   1,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
