	db  65, 130,  60,  65,  95, 110 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 6 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/flareon/front.dimensions"
	abilities_for FLAREON, FLASH_FIRE, FLASH_FIRE, GUTS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, WILL_O_WISP, FACADE, IRON_TAIL, CALM_MIND, FLAMETHROWER, SHADOW_BALL, FIRE_BLAST, HYPER_BEAM, SUPERPOWER, WORK_UP, SUNNY_DAY

	;tutors WEATHER_BALL, FLAME_CHARGE
	; end
