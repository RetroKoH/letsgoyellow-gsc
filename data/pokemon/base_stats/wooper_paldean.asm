	db  55,  45,  45,  15,  25,  25 ; 210 BST
	;   hp  atk  def  spe  sat  sdf

	db POISON, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp
	db NO_ITEM ; item 1
	db CHESTO_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/wooper_paldean/front.dimensions"
	abilities_for WOOPER_PALDEAN, POISON_POINT, WATER_ABSORB, UNAWARE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms

;	tutors
	; end
