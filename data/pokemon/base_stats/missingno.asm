	db  01,  01,  01,  01,  01,  01
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 1 ; catch rate
	db 1 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDERLESS, 15 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db STATIC ; ability 1
	db STATIC ; ability 2
	db STATIC ; hidden ability
	db MEDIUM_SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm
	; end
