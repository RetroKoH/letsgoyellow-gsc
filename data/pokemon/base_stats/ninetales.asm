	db  73,  76,  75, 100,  81, 100
	;   hp  atk  def  spd  sat  sdf

if DEF(FAITHFUL)
	db FIRE, FIRE
else
	db FIRE, GHOST
endc
	db 75 ; catch rate
	db 178 ; base exp
	db ASPEAR_BERRY ; item 1
	db ASPEAR_BERRY ; item 2
	dn FEMALE_75, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db FLASH_FIRE ; ability 1
if DEF(FAITHFUL)
	db FLASH_FIRE ; ability 2
else
	db FOREWARN ; ability 2
endc
	db DROUGHT ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   1,   0,   1
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
