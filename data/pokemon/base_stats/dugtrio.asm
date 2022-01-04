if DEF(FAITHFUL)
	db  35, 100,  50, 120,  50,  70
	;   hp  atk  def  spd  sat  sdf
else
	db  35, 100,  60, 110,  50,  70
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db GROUND, GROUND
else
	db GROUND, STEEL
endc
	db 50 ; catch rate
	db 153 ; base exp
	db NO_ITEM ; item 1
	db SOFT_SAND ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db SAND_VEIL ; ability 1
if DEF(FAITHFUL)
	db ARENA_TRAP ; ability 2
else
	db TANGLING_HAIR ; ability 2
endc
	db SAND_FORCE ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   2,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
