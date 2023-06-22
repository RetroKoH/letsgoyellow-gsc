	db  80,  92,  65,  68,  65,  80 ; 450 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio
	INCBIN "gfx/pokemon/seaking/front.dimensions"
	abilities_for SEAKING, SWIFT_SWIM, WATER_VEIL, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, WATERFALL, POISON_JAB, SCALD, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, DRILL_RUN, MEGAHORN, RAIN_DANCE, HAIL, SMART_STRIKE

	;tutors SIGNAL_BEAM, KNOCK_OFF
	; end
