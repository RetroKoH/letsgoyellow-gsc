	db  65, 100,  70, 105,  80,  80 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp
	db NO_ITEM ; item 1
	db MARANGABERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rapidash_plain/front.dimensions"
	abilities_for RAPIDASH, RUN_AWAY, FLASH_FIRE, FLAME_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, WILL_O_WISP, FACADE, IRON_TAIL, POISON_JAB, FLAMETHROWER, PLAY_ROUGH, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, DRILL_RUN, MEGAHORN, SUNNY_DAY, SMART_STRIKE

	;tutors FLAME_CHARGE, WILD_CHARGE
	; end
