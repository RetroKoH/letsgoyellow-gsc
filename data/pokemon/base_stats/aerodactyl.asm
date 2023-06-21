	db  80, 105,  65, 130,  60,  75 ; 515 BST
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/aerodactyl/front.dimensions"
	abilities_for AERODACTYL, ROCK_HEAD, PRESSURE, UNNERVE
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, IRON_TAIL, ROCK_SLIDE, DRAGON_PULSE, FLAMETHROWER, EARTHQUAKE, FIRE_BLAST, HYPER_BEAM, ROOST, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, BULLDOZE

;	tutors AERIAL_ACE, EARTH_POWER, STONE_EDGE, DRAGON_DANCE
	; end
