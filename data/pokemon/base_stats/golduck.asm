	db  80,  82,  78,  85,  95,  80 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/golduck/front.dimensions"
	abilities_for GOLDUCK, DAMP, CLOUD_NINE, SWIFT_SWIM
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, WATERFALL, TRI_ATTACK, SCALD, CALM_MIND, ICE_PUNCH, PSYCHIC, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, RAIN_DANCE, HAIL, LOW_SWEEP

	;tutors FOCUS_BLAST, AERIAL_ACE, SIGNAL_BEAM, LIQUIDATION, GRASS_KNOT, ZEN_HEADBUTT
	; end
