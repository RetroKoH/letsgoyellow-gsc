	db  60,  80, 110,  45,  50,  80 ; 425 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 124 ; base exp
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/marowak_alolan/front.dimensions"
	abilities_for MAROWAK_ALOLAN, CURSED_BODY, LIGHTNING_ROD, ROCK_HEAD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
