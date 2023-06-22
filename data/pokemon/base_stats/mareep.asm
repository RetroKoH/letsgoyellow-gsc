	db  55,  40,  40,  35,  65,  45 ; 280 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mareep/front.dimensions"
	abilities_for MAREEP, STATIC, STATIC, STATIC
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, THUNDER_WAVE, IRON_TAIL, DAZZLINGLEAM, THUNDERBOLT, THUNDER, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, WILD_CHARGE
	; end
