	db  45,  67,  60,  63,  35,  50 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio
	INCBIN "gfx/pokemon/goldeen/front.dimensions"
	abilities_for GOLDEEN, SWIFT_SWIM, WATER_VEIL, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, WATERFALL, POISON_JAB, SCALD, SURF, BLIZZARD, ICE_BEAM, DRILL_RUN, MEGAHORN, RAIN_DANCE, HAIL, SMART_STRIKE

	;tutors SIGNAL_BEAM, KNOCK_OFF
	; end
