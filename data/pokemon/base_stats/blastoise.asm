	db  79,  83, 100,  78,  85, 105
	;   hp  atk  def  spd  sat  sdf

if DEF(FAITHFUL)
	db WATER, WATER
else
	db WATER, STEEL
endc
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn FEMALE_12_5, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db TORRENT ; ability 1
if DEF(FAITHFUL)
	db TORRENT ; ability 2
else
	db SHELL_ARMOR ; ability 2
endc
	db RAIN_DISH ; hidden ability
	db MEDIUM_SLOW ; growth rate
	dn MONSTER, AMPHIBIAN ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   0,   3
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
