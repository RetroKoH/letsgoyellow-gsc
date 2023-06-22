	db  90,  65,  65,  15,  40,  40 ; 315 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC ; type
	db 190 ; catch rate
	db 99 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/slowpoke_plain/front.dimensions"
	abilities_for SLOWPOKE, OBLIVIOUS, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, THUNDER_WAVE, IRON_TAIL, FOUL_PLAY, TRI_ATTACK, SCALD, CALM_MIND, FLAMETHROWER, PSYCHIC, EARTHQUAKE, SHADOW_BALL, FIRE_BLAST, SURF, BLIZZARD, ICE_BEAM, DREAM_EATER, RAIN_DANCE, SUNNY_DAY, SANDSTORM, HAIL, TRICK_ROOM, BULLDOZE

	;tutors WEATHER_BALL, SIGNAL_BEAM, LIQUIDATION, GRASS_KNOT, ZEN_HEADBUTT
	; end
