	db  20,  40,  15,  60,  35,  35 ; 205 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	db ORAN_BERRY ; item 1
	db LIGHT_BALL ; item 2
	dn GENDER_F50, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/pichu_plain/front.dimensions"
	abilities_for PICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, IRON_TAIL, THUNDERPUNCH, THUNDERBOLT, THUNDER, PLAY_ROUGH, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, GRASS_KNOT, WILD_CHARGE, DISARM_VOICE
	; end
