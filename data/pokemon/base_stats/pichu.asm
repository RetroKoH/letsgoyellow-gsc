	db  20,  40,  15,  60,  35,  35 ; 205 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	db ORAN_BERRY ; item 1
	db LIGHT_BALL ; item 2
	dn GENDER_F50, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pichu_plain/front.dimensions"
	abilities_for PICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
