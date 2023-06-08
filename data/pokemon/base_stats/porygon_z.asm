	db  85,  80,  70,  90, 135,  75 ; 535 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 185 ; base exp
	db NO_ITEM ; item 1
	db DUBIOUS_DISC ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/porygon_z/front.dimensions"
	abilities_for PORYGON_Z, ADAPTABILITY, DOWNLOAD, ANALYTIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
