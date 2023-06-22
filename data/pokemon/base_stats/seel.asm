	db  65,  45,  55,  45,  45,  70 ; 325 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp
	db NO_ITEM ; item 1
	db RAWST_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/seel/front.dimensions"
	abilities_for SEEL, THICK_FAT, HYDRATION, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, IRON_TAIL, WATERFALL, SURF, BLIZZARD, ICE_BEAM, DRILL_RUN, MEGAHORN, RAIN_DANCE, HAIL, SMART_STRIKE, AURORA_VEIL

	;tutors SIGNAL_BEAM, LIQUIDATION
	; end
