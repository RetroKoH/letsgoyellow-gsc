	db  80,  80,  50,  25,  40,  50 ; 325 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	db BLACK_SLUDGE ; item 1
	db NUGGET ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/grimer_plain/front.dimensions"
	abilities_for GRIMER, STENCH, STICKY_HOLD, POISON_TOUCH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
