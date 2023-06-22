	db  65,  83,  57, 105,  95,  85 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp
	db PERSIM_BERRY ; item 1
	db ELECTIRIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	abilities_for ELECTABUZZ, STATIC, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, PSYCHIC, HYPER_BEAM, RAIN_DANCE, VOLT_SWITCH, LOW_SWEEP

	;tutors FOCUS_BLAST, SIGNAL_BEAM, WILD_CHARGE
	; end
