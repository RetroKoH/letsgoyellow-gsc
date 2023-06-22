	db  90,  95,  95,  70,  70,  90 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/poliwrath/front.dimensions"
	abilities_for POLIWRATH, WATER_ABSORB, DAMP, SWIFT_SWIM
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   3,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, ROCK_SLIDE, WATERFALL, POISON_JAB, SCALD, BULK_UP, ICE_PUNCH, PSYCHIC, EARTHQUAKE, SURF, HYPER_BEAM, SUPERPOWER, BLIZZARD, ICE_BEAM, WORK_UP, RAIN_DANCE, HAIL, DRAIN_PUNCH, LOW_SWEEP, BULLDOZE

	;tutors FOCUS_BLAST, EARTH_POWER, LIQUIDATION
	; end
