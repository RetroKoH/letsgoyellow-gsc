	db  45,  30,  15,  65,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC
	db 45 ; catch rate
	db 87 ; base exp
	db RAWST_BERRY ; item 1
	db RAWST_BERRY ; item 2
	dn ALL_FEMALE, 4 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db OBLIVIOUS ; ability 1
	db FOREWARN ; ability 2
	db DRY_SKIN ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   1,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
