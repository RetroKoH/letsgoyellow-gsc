	db  90, 130,  75,  55,  75,  75 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 189 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db SITRUS_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ursaring/front.dimensions"
	abilities_for URSARING, GUTS, QUICK_FEET, UNNERVE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, THUNDERPUNCH, BULK_UP, FIRE_PUNCH, ICE_PUNCH, EARTHQUAKE, PLAY_ROUGH, HYPER_BEAM, WORK_UP, BULLDOZE

	;tutors FOCUS_BLAST, AERIAL_ACE, GUNK_SHOT, STONE_EDGE, AVALANCHE
	; end
