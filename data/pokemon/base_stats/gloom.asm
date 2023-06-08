	db  60,  65,  70,  40,  85,  75 ; 395 BST
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp
	db SILVER_LEAF ; item 1
	db SILVER_LEAF ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gloom/front.dimensions"
	abilities_for GLOOM, CHLOROPHYLL, CHLOROPHYLL, STENCH
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
