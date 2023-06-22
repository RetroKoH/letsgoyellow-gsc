	db  90,  70,  80,  70,  70,  95 ; 475 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp
	db RAWST_BERRY ; item 1
	db NEVERMELTICE ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dewgong/front.dimensions"
	abilities_for DEWGONG, THICK_FAT, HYDRATION, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   0,   2
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, IRON_TAIL, WATERFALL, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, DRILL_RUN, MEGAHORN, RAIN_DANCE, HAIL, SMART_STRIKE, AURORA_VEIL

	;tutors SIGNAL_BEAM, LIQUIDATION, AVALANCHE
	; end
