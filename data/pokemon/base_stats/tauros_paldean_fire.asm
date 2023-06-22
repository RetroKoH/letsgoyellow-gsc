	db  75, 110, 105, 100,  30,  70 ; 490 BST
	;   hp  atk  def  spe  sat  sdf

	db FIGHTING, FIRE ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F0, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/tauros_paldean_fire/front.dimensions"
	abilities_for TAUROS_PALDEAN_FIRE, INTIMIDATE, ANGER_POINT, SHEER_FORCE;CUD_CHEW
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, WILL_O_WISP, FACADE, IRON_TAIL, ROCK_SLIDE, BULK_UP, FLAMETHROWER, OUTRAGE, EARTHQUAKE, FIRE_BLAST, HYPER_BEAM, WORK_UP, DRILL_RUN, SUNNY_DAY, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors STONE_EDGE, FLAME_CHARGE, WILD_CHARGE, ZEN_HEADBUTT
	; end
