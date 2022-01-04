	db  45,  67,  60,  63,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 225 ; catch rate
	db 111 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db SWIFT_SWIM ; ability 1
	db WATER_VEIL ; ability 2
	db LIGHTNING_ROD ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FISH, FISH ; egg groups

	; ev_yield
	ev_yield   0,   1,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
