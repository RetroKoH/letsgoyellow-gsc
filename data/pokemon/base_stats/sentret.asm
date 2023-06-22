	db  35,  46,  34,  20,  35,  45 ; 215 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM ; item 1
	db ORAN_BERRY ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/sentret/front.dimensions"
	abilities_for SENTRET, RUN_AWAY, KEEN_EYE, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, U_TURN, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, FLAMETHROWER, SHADOW_BALL, SOLAR_BEAM, SURF, ICE_BEAM, WORK_UP

	;tutors GRASS_KNOT, KNOCK_OFF
	; end
