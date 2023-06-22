	db  65,  65,  65,  90,  50,  50 ; 385 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/poliwhirl/front.dimensions"
	abilities_for POLIWHIRL, WATER_ABSORB, DAMP, SWIFT_SWIM
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, WATERFALL, SCALD, ICE_PUNCH, PSYCHIC, EARTHQUAKE, SURF, BLIZZARD, ICE_BEAM, RAIN_DANCE, HAIL, BULLDOZE

	;tutors EARTH_POWER
	; end
