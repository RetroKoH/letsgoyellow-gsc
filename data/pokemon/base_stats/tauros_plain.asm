	db  75, 100,  95, 110,  40,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/tauros_plain/front.dimensions"
	abilities_for TAUROS, INTIMIDATE, ANGER_POINT, SHEER_FORCE
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, ROCK_SLIDE, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, EARTHQUAKE, SHADOW_BALL, SOLAR_BEAM, FIRE_BLAST, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, WORK_UP, MEGAHORN, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors STONE_EDGE, WILD_CHARGE, ZEN_HEADBUTT
	; end
