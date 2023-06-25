	db  70,  20,  50,  40,  20,  50 ; 250 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, FAIRY ; type
	db 190 ; catch rate
	db 58 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/marill/front.dimensions"
	abilities_for MARILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, WATERFALL, ICE_PUNCH, PLAY_ROUGH, SURF, SUPERPOWER, BLIZZARD, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL, BULLDOZE

	;tutors LIQUIDATION, GRASS_KNOT, KNOCK_OFF, DISARM_VOICE
	; end
