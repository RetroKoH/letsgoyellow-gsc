	db  80,  80,  50,  25,  40,  50
	;   hp  atk  def  spd  sat  sdf

if DEF(FAITHFUL)
	db POISON, POISON
else
	db POISON, DARK
endc
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM ; item 1
	db NUGGET ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db STENCH ; ability 1
	db STICKY_HOLD ; ability 2
	db POISON_TOUCH ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn AMORPHOUS, AMORPHOUS ; egg groups

	; ev_yield
	ev_yield   1,   0,   0,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, SUNNY_DAY, RAIN_DANCE, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ROCK_SLIDE, EXPLOSION, POISON_JAB, STONE_EDGE, STRENGTH, BODY_SLAM, FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, ZAP_CANNON
	; end
