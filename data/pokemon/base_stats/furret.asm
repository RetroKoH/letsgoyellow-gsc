	db  85,  76,  64,  90,  45,  55 ; 415 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	db ORAN_BERRY ; item 1
	db SITRUS_BERRY ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/furret/front.dimensions"
	abilities_for FURRET, RUN_AWAY, KEEN_EYE, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, U_TURN, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, THUNDER, SHADOW_BALL, SOLAR_BEAM, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP

	;tutors FOCUS_BLAST, GRASS_KNOT, KNOCK_OFF
	; end
