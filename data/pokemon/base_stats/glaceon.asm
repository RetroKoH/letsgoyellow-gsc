	db  65,  60, 110,  65, 130,  95 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 196 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/glaceon/front.dimensions"
	abilities_for GLACEON, SNOW_CLOAK, SNOW_CLOAK, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, IRON_TAIL, CALM_MIND, SHADOW_BALL, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP, HAIL, AURORA_VEIL

	;tutors WEATHER_BALL, SIGNAL_BEAM, AVALANCHE
	; end
