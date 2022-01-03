	db 115,  45,  20,  20,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY
	db 170 ; catch rate
	db 76 ; base exp
	db ORAN_BERRY ; item 1
	db ORAN_BERRY ; item 2
	dn FEMALE_75, 1 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db CUTE_CHARM ; ability 1
	db COMPETITIVE ; ability 2
if DEF(FAITHFUL)
	db FRISK ; hidden ability
else
	db SOUNDPROOF ; hidden ability
endc
	db FAST ; growth rate
	dn FAERY, FAERY ; egg groups

	; ev_yield
	ev_yield   2,   0,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
