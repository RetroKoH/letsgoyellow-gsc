	db  50,  65,  65, 100,  90,  90 ; 460 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 136 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mr__mime_galarian/front.dimensions"
	abilities_for MR__MIME_GALARIAN, VITAL_SPIRIT, SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms

;	tutors
	; end
