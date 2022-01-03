	db  50,  25,  28,  15,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY
	db 150 ; catch rate
	db 37 ; base exp
	db LEPPA_BERRY ; item 1
	db MOON_STONE ; item 2
	dn FEMALE_75, 1 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db CUTE_CHARM ; ability 1
	db MAGIC_GUARD ; ability 2
	db CUTE_CHARM ; hidden ability
	db FAST ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   0,   1
	;         hp, atk, def, spd, sat, sdf

	; tm/hm learnset
	tmhm TOXIC
	; end
