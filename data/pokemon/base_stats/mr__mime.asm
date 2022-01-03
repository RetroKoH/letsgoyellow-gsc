if DEF(FAITHFUL)
	db  40,  45,  65,  90, 100, 120
	;   hp  atk  def  spd  sat  sdf
else
	db  50,  45,  65, 100, 100, 125
	;   hp  atk  def  spd  sat  sdf
endc

	db PSYCHIC, FAIRY
	db 45 ; catch rate
	db 136 ; base exp
	db NO_ITEM ; item 1
	db LEPPA_BERRY ; item 2
	dn FEMALE_50, 4 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db SOUNDPROOF ; ability 1
	db FILTER ; ability 2
	db TECHNICIAN ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn HUMANSHAPE, HUMANSHAPE ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   0,   2
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
