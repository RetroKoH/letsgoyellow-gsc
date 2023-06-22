	db  55, 130, 115,  75,  50,  50 ; 475 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kingler/front.dimensions"
	abilities_for KINGLER, HYPER_CUTTER, SHELL_ARMOR, SHEER_FORCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, ROCK_SLIDE, X_SCISSOR, SCALD, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, RAIN_DANCE, HAIL, FALSE_SWIPE

	;tutors LIQUIDATION, KNOCK_OFF
	; end
