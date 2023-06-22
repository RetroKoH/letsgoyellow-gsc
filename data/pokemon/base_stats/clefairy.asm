	db  70,  45,  48,  35,  60,  65 ; 323 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	db LEPPA_BERRY ; item 1
	db MOON_STONE ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/clefairy/front.dimensions"
	abilities_for CLEFAIRY, CUTE_CHARM, MAGIC_GUARD, CUTE_CHARM
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, PSYCHIC, SHADOW_BALL, PLAY_ROUGH, SOLAR_BEAM, FIRE_BLAST, BLIZZARD, ICE_BEAM, STEALTH_ROCK, WORK_UP, DREAM_EATER, RAIN_DANCE, DRAIN_PUNCH

	;tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, KNOCK_OFF, DISARM_VOICE
	; end
