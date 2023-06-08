	db  55,  95,  55, 115,  35,  75 ; 430 BST
	;   hp  atk  def  spe  sat  sdf

	db POISON, FIGHTING ; type
	db 60 ; catch rate
	db 132 ; base exp
	db GRIP_CLAW ; item 1
	db RAZOR_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sneasel_hisuian/front.dimensions"
	abilities_for SNEASEL_HISUIAN, INNER_FOCUS, KEEN_EYE, PICKPOCKET
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
