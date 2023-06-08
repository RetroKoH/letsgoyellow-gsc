	db 110,  85,  95,  50,  80,  95 ; 515 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp
	db NO_ITEM ; item 1
	db LAGGING_TAIL ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/lickilicky/front.dimensions"
	abilities_for LICKILICKY, OWN_TEMPO, OBLIVIOUS, CLOUD_NINE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
