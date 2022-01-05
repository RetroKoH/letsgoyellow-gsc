	db  65,  90,  40,  75,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON
	db 45 ; catch rate
	db 159 ; base exp
	db POISON_BARB ; item 1
	db SHED_SHELL ; item 2
	dn FEMALE_50, 2 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db SWARM ; ability 1
	db SNIPER ; ability 2
	db ADAPTABILITY ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn INSECT, INSECT ; egg groups

	; ev_yield
	ev_yield   0,   2,   0,   0,   0,   1
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
