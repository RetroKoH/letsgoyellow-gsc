	db  55,  81,  60,  97,  50,  70 ; 413 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	db NO_ITEM ; item 1
	db LANSAT_BERRY ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/raticate_plain/front.dimensions"
	abilities_for RATICATE, RUN_AWAY, GUTS, HUSTLE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, THUNDER_WAVE, U_TURN, IRON_TAIL, THUNDERBOLT, THUNDER, SHADOW_BALL, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP

	;tutors GRASS_KNOT, WILD_CHARGE, ZEN_HEADBUTT
	; end
