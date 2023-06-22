	db  60,  80,  50,  40,  50,  50 ; 330 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 124 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ORAN_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/teddiursa/front.dimensions"
	abilities_for TEDDIURSA, PICKUP, QUICK_FEET, PICKUP
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, THUNDERPUNCH, BULK_UP, FIRE_PUNCH, ICE_PUNCH, EARTHQUAKE, PLAY_ROUGH, WORK_UP, BULLDOZE

	;tutors AERIAL_ACE, GUNK_SHOT, AVALANCHE
	; end
