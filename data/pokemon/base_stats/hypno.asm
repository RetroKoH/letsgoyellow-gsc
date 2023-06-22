	db  85,  73,  70,  67,  73, 115 ; 483 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/hypno/front.dimensions"
	abilities_for HYPNO, INSOMNIA, FOREWARN, INNER_FOCUS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, FOUL_PLAY, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, HYPER_BEAM, DREAM_EATER, SUNNY_DAY, TRICK_ROOM, DRAIN_PUNCH, LOW_SWEEP

	;tutors FOCUS_BLAST, SIGNAL_BEAM, HEX, GRASS_KNOT, ZEN_HEADBUTT
	; end
