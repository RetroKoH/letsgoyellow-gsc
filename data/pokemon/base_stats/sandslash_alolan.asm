	db  75, 100, 120,  65,  25,  65 ; 450 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 90 ; catch rate
	db 163 ; base exp
	db NO_ITEM ; item 1
	db GRIP_CLAW ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sandslash_alolan/front.dimensions"
	abilities_for SANDSLASH_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SLUSH_RUSH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
