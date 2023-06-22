	db  45,  30,  15,  65,  85,  65 ; 305 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 87 ; base exp
	db ASPEAR_BERRY ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F100, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/smoochum/front.dimensions"
	abilities_for SMOOCHUM, OBLIVIOUS, FOREWARN, HYDRATION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, CALM_MIND, ICE_PUNCH, PSYCHIC, SHADOW_BALL, BLIZZARD, ICE_BEAM, DREAM_EATER, RAIN_DANCE, HAIL, TRICK_ROOM, AURORA_VEIL

	;tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT, AVALANCHE
	; end
