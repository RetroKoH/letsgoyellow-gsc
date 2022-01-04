if DEF(FAITHFUL)
	db 115, 140, 130,  40,  55,  55
	;   hp  atk  def  spd  sat  sdf
else
	db 120, 145, 135,  40,  58,  58
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db GROUND, ROCK
else
	db STEEL, ROCK
endc
	db 30 ; catch rate
	db 217 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db LIGHTNING_ROD ; ability 1
	db SOLID_ROCK ; ability 2
	db RECKLESS ; hidden ability
	db SLOW ; growth rate
	dn MONSTER, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   3,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
