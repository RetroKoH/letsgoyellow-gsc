;	db  90,  75,  80,  70, 120, 115 ; 550 BST
	;   hp  atk  def  spd  sat  sdf
	db  90,  75,  85,  80, 120, 115 ; 565 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/politoed/front.dimensions"
	abilities_for POLITOED_CORRUPT, TORRENT, TORRENT, TORRENT ; LIQUID_VOICE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   0,   0,   0,   3
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
