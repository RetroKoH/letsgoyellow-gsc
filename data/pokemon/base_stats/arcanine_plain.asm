	db  90, 110,  80,  95, 100,  80 ; 555 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 213 ; base exp
	db NO_ITEM ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/arcanine_plain/front.dimensions"
	abilities_for ARCANINE, INTIMIDATE, FLASH_FIRE, JUSTIFIED
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, WILL_O_WISP, FACADE, IRON_TAIL, DRAGON_PULSE, FLAMETHROWER, OUTRAGE, PLAY_ROUGH, SOLAR_BEAM, FIRE_BLAST, HYPER_BEAM, SUPERPOWER, SUNNY_DAY, BULLDOZE

;	tutors AERIAL_ACE, FLAME_CHARGE, WILD_CHARGE
	; end
