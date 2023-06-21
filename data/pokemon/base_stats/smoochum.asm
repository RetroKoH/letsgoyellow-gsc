	db  45,  30,  15,  65,  85,  65 ; 305 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 87 ; base exp
	db ASPEAR_BERRY ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F100, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/smoochum/front.dimensions"
	abilities_for SMOOCHUM, OBLIVIOUS, FOREWARN, HYDRATION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms

;	tutors
	; end
