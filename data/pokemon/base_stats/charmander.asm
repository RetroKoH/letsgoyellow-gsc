	db  39,  52,  43,  65,  60,  50 ; 309 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/charmander/front.dimensions"
	abilities_for CHARMANDER, BLAZE, BLAZE, SOLAR_POWER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, WILL_O_WISP, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, DRAGON_PULSE, FLAMETHROWER, OUTRAGE, FIRE_BLAST, WORK_UP, SUNNY_DAY

;	tutors WEATHER_BALL, AERIAL_ACE, DRAGON_DANCE
	; end
