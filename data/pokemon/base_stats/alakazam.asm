	db  55,  50,  45, 120, 135,  95 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 50 ; catch rate
	db 186 ; base exp
	db NO_ITEM ; item 1
	db TWISTEDSPOON ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/alakazam/front.dimensions"
	abilities_for ALAKAZAM, SYNCHRONIZE, INNER_FOCUS, MAGIC_GUARD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, FOUL_PLAY, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, HYPER_BEAM, DREAM_EATER, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL

;	tutors FOCUS_BLAST, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, KNOCK_OFF
	; end
