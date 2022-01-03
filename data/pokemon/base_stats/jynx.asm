if DEF(FAITHFUL)
	db  65,  50,  35,  95, 115,  95
	;   hp  atk  def  spd  sat  sdf
else
	db  70,  60,  40,  95, 120, 100
	;   hp  atk  def  spd  sat  sdf
endc

	db ICE, PSYCHIC
	db 45 ; catch rate
	db 137 ; base exp
	db RAWST_BERRY ; item 1
	db RAWST_BERRY ; item 2
	dn ALL_FEMALE, 4 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db OBLIVIOUS ; ability 1
if DEF(FAITHFUL)
	db FOREWARN ; ability 2
else
	db FILTER ; ability 2
endc
	db DRY_SKIN ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn HUMANSHAPE, HUMANSHAPE ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   2,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
