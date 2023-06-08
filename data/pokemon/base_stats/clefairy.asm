	db  70,  45,  48,  35,  60,  65 ; 323 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	db LEPPA_BERRY ; item 1
	db MOON_STONE ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	abilities_for CLEFAIRY, CUTE_CHARM, MAGIC_GUARD, CUTE_CHARM
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
