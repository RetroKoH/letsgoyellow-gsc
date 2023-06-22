	db  60,  90,  55, 110,  90,  80 ; 485 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	db ORAN_BERRY ; item 1
	db LIGHT_BALL ; item 2
	dn GENDER_F50, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/raichu_plain/front.dimensions"
	abilities_for RAICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	ev_yield   0,   0,   0,   3,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, THUNDERPUNCH, CALM_MIND, THUNDERBOLT, THUNDER, PLAY_ROUGH, HYPER_BEAM, RAIN_DANCE, VOLT_SWITCH

	;tutors FOCUS_BLAST, SIGNAL_BEAM, GRASS_KNOT, WILD_CHARGE, KNOCK_OFF, DISARM_VOICE
	; end
