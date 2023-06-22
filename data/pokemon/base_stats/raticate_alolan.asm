	db  75,  71,  70,  77,  40,  80 ; 413 BST
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	db NO_ITEM ; item 1
	db PECHA_BERRY ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/raticate_alolan/front.dimensions"
	abilities_for RATICATE_ALOLAN, GLUTTONY, HUSTLE, THICK_FAT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, U_TURN, IRON_TAIL, DARK_PULSE, BULK_UP, SHADOW_BALL, HYPER_BEAM, BLIZZARD, SLUDGE_BOMB, ICE_BEAM

	;tutors GRASS_KNOT, ZEN_HEADBUTT, KNOCK_OFF
	; end
