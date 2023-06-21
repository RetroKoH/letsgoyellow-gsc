	db  95, 100,  95,  30, 100,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, PSYCHIC ; type
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/slowbro_galarian/front.dimensions"
	abilities_for SLOWBRO_GALARIAN, QUICK_DRAW, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms

;	tutors
	; end
