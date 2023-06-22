	db  60,  48,  45,  42,  43,  90 ; 328 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 190 ; catch rate
	db 102 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/drowzee/front.dimensions"
	abilities_for DROWZEE, INSOMNIA, FOREWARN, INNER_FOCUS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, FOUL_PLAY, THUNDERPUNCH, TRI_ATTACK, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, DREAM_EATER, SUNNY_DAY, TRICK_ROOM, DRAIN_PUNCH, LOW_SWEEP

	;tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
