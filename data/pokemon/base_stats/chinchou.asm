	db  75,  38,  38,  67,  56,  56 ; 330 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp
	db NO_ITEM ; item 1
	db BRIGHTPOWDER ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/chinchou/front.dimensions"
	abilities_for CHINCHOU, VOLT_ABSORB, ILLUMINATE, WATER_ABSORB
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, THUNDER_WAVE, WATERFALL, SCALD, DAZZLINGLEAM, THUNDERBOLT, THUNDER, SURF, BLIZZARD, ICE_BEAM, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, WILD_CHARGE
	; end
