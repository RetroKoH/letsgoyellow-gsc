	db  80,  85,  75,  70, 110, 100 ; 520 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 207 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mr__rime/front.dimensions"
	abilities_for MR__RIME, TANGLED_FEET, TANGLED_FEET, TANGLED_FEET ;SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms

;	tutors
	; end
