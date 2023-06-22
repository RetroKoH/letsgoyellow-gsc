	db  55,  70,  45,  60,  70,  50 ; 350 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 91 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/growlithe_plain/front.dimensions"
	abilities_for GROWLITHE, INTIMIDATE, FLASH_FIRE, JUSTIFIED
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, DIG, WILL_O_WISP, FACADE, IRON_TAIL, FLAMETHROWER, OUTRAGE, PLAY_ROUGH, FIRE_BLAST, SUNNY_DAY

	;tutors FLAME_CHARGE, WILD_CHARGE
	; end
