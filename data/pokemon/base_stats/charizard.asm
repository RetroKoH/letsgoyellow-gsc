	db  78,  84,  78, 100, 109,  85 ; 534 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/charizard/front.dimensions"
	abilities_for CHARIZARD, BLAZE, BLAZE, SOLAR_POWER
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, WILL_O_WISP, FACADE, BRICK_BREAK, FLY, SEISMIC_TOSS, DRAGON_TAIL, IRON_TAIL, ROCK_SLIDE, THUNDERPUNCH, FIRE_PUNCH, DRAGON_PULSE, FLAMETHROWER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, SOLAR_BEAM, HYPER_BEAM, ROOST, WORK_UP, SUNNY_DAY, ACROBATICS, BULLDOZE

;	tutors WEATHER_BALL, FOCUS_BLAST, AERIAL_ACE, DRAGON_DANCE
	; end
