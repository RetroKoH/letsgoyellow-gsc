	db  60,  75,  85, 115, 100,  85 ; 520 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC ; type
	db 60 ; catch rate
	db 207 ; base exp
	db STARDUST ; item 1
	db STAR_PIECE ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	abilities_for STARMIE, ILLUMINATE, NATURAL_CURE, ANALYTIC
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, WATERFALL, TRI_ATTACK, SCALD, DAZZLINGLEAM, THUNDERBOLT, THUNDER, PSYCHIC, SURF, HYPER_BEAM, BLIZZARD, FLASH_CANNON, ICE_BEAM, DREAM_EATER, RAIN_DANCE, HAIL, TRICK_ROOM

	;tutors SIGNAL_BEAM, GYRO_BALL, GRASS_KNOT, AVALANCHE
	; end
