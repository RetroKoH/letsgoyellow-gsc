	db  40,  35,  30, 105, 120,  70 ; 400 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 100 ; catch rate
	db 145 ; base exp
	db NO_ITEM ; item 1
	db TWISTEDSPOON ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kadabra/front.dimensions"
	abilities_for KADABRA, SYNCHRONIZE, MAGIC_GUARD, TRACE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, FOUL_PLAY, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, DREAM_EATER, SUNNY_DAY, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL

	;tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, KNOCK_OFF
	; end
