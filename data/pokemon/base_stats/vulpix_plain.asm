	db  38,  41,  40,  65,  50,  65 ; 299 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F75, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/vulpix_plain/front.dimensions"
	abilities_for VULPIX, FLASH_FIRE, FLASH_FIRE, DROUGHT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, WILL_O_WISP, FACADE, IRON_TAIL, DARK_PULSE, FOUL_PLAY, FLAMETHROWER, SHADOW_BALL, FIRE_BLAST, SUNNY_DAY, ENERGY_BALL

	;tutors WEATHER_BALL, HEX, FLAME_CHARGE, ZEN_HEADBUTT
	; end
