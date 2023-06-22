	db  65,  50,  35,  95, 115,  95 ; 455 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 137 ; base exp
	db RAWST_BERRY ; item 1
	db RAWST_BERRY ; item 2
	dn GENDER_F100, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/jynx/front.dimensions"
	abilities_for JYNX, OBLIVIOUS, FOREWARN, DRY_SKIN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, HYPER_BEAM, BLIZZARD, ICE_BEAM, DREAM_EATER, RAIN_DANCE, HAIL, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL, AURORA_VEIL

	;tutors FOCUS_BLAST, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, AVALANCHE
	; end
