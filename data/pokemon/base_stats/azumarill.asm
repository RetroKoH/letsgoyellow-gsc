	db 100,  50,  80,  50,  60,  80 ; 420 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/azumarill/front.dimensions"
	abilities_for AZUMARILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	ev_yield   3,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, WATERFALL, ICE_PUNCH, PLAY_ROUGH, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL, BULLDOZE

	;tutors FOCUS_BLAST, LIQUIDATION, GRASS_KNOT, KNOCK_OFF, DISARM_VOICE
	; end
