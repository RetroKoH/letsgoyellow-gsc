	db  60,  80,  50,  30,  40,  40 ; 300 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 63 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F75, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/snubbull/front.dimensions"
	abilities_for SNUBBULL, INTIMIDATE, RUN_AWAY, RATTLED
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, BRICK_BREAK, SEISMIC_TOSS, THUNDER_WAVE, THUNDERPUNCH, BULK_UP, FIRE_PUNCH, DAZZLINGLEAM, THUNDERBOLT, FLAMETHROWER, THUNDER, EARTHQUAKE, SHADOW_BALL, SOLAR_BEAM, FIRE_BLAST, WORK_UP, RAIN_DANCE, SUNNY_DAY, BULLDOZE

	;tutors WILD_CHARGE
	; end
