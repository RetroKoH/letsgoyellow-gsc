	db  85,  50,  95,  80, 120, 115 ; 545 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/togekiss/front.dimensions"
	abilities_for TOGEKISS, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	ev_yield   0,   0,   0,   0,   2,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, FLY, SEISMIC_TOSS, THUNDER_WAVE, TRI_ATTACK, DAZZLINGLEAM, CALM_MIND, FLAMETHROWER, PSYCHIC, SHADOW_BALL, PLAY_ROUGH, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, ROOST, WORK_UP, DREAM_EATER, DRAIN_PUNCH, SMART_STRIKE

	;tutors AERIAL_ACE, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
