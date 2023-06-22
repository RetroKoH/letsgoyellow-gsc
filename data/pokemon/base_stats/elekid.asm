	db  45,  63,  37,  95,  65,  55 ; 360 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp
	db PERSIM_BERRY ; item 1
	db ELECTIRIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/elekid/front.dimensions"
	abilities_for ELEKID, STATIC, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, PSYCHIC, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, WILD_CHARGE
	; end
