	db 100, 100, 100, 100, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC
	db 45 ; catch rate
	db 64 ; base exp
	db LUM_BERRY ; item 1
	db LUM_BERRY ; item 2
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db SYNCHRONIZE ; ability 1
	db SYNCHRONIZE ; ability 2
if DEF(FAITHFUL)
	db SYNCHRONIZE ; hidden ability
else
	db MAGIC_GUARD ; hidden ability
endc
	db MEDIUM_SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; ev_yield
	ev_yield   3,   0,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
