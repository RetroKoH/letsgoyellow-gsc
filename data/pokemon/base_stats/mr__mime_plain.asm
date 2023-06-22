	db  40,  45,  65,  90, 100, 120 ; 460 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp
	db PERSIM_BERRY ; item 1
	db PERSIM_BERRY ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mr__mime_plain/front.dimensions"
	abilities_for MR__MIME, SOUNDPROOF, FILTER, TECHNICIAN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, FOUL_PLAY, THUNDERPUNCH, FIRE_PUNCH, DAZZLINGLEAM, CALM_MIND, ICE_PUNCH, THUNDERBOLT, THUNDER, PSYCHIC, SHADOW_BALL, SOLAR_BEAM, HYPER_BEAM, DREAM_EATER, RAIN_DANCE, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL

	;tutors FOCUS_BLAST, AERIAL_ACE, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
