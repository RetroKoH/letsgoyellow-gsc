	db  25,  20,  15,  90, 105,  55 ; 310 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 200 ; catch rate
	db 73 ; base exp
	db NO_ITEM ; item 1
	db TWISTEDSPOON ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/abra/front.dimensions"
	abilities_for ABRA, SYNCHRONIZE, MAGIC_GUARD, TRACE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, FOUL_PLAY, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, DREAM_EATER, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL

;	tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, KNOCK_OFF
	; end
