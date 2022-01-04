if DEF(FAITHFUL)
	db  75, 123,  67,  95,  95,  85
	;   hp  atk  def  spd  sat  sdf
else
	db  75, 123,  67, 105,  95,  85
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db ELECTRIC, ELECTRIC
else
	db ELECTRIC, FIGHTING
endc
	db 30 ; catch rate
	db 199 ; base exp
	db SITRUS_BERRY ; item 1
	db SITRUS_BERRY ; item 2
	dn FEMALE_25, 4 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db MOTOR_DRIVE ; ability 1
	db MOTOR_DRIVE ; ability 2
	db VITAL_SPIRIT ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn HUMANSHAPE, HUMANSHAPE ; egg groups

	; ev_yield
	ev_yield   0,   3,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm TOXIC
	; end
