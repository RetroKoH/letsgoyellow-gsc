	db  80,  85,  95,  25,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db GROUND, ROCK
	db 120 ; catch rate
	db 135 ; base exp
	db NO_ITEM ; item 1
	db PROTECTOR ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
if DEF(FAITHFUL)
	db LIGHTNING_ROD ; ability 1
	db ROCK_HEAD ; ability 2
else
	db ROCK_HEAD ; ability 1
	db SOLID_ROCK ; ability 2
endc
	db RECKLESS ; hidden ability
	db SLOW ; growth rate
	dn MONSTER, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   1,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
