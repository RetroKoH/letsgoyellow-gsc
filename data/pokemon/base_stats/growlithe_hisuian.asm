	db  60,  75,  45,  55,  65,  50 ; 350 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, ROCK ; type
	db 190 ; catch rate
	db 91 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn GENDER_F25, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/growlithe_hisuian/front.dimensions"
	abilities_for GROWLITHE_HISUIAN, INTIMIDATE, FLASH_FIRE, ROCK_HEAD
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, WILL_O_WISP, FACADE, IRON_TAIL, ROCK_SLIDE, FLAMETHROWER, OUTRAGE, PLAY_ROUGH, FIRE_BLAST, STEALTH_ROCK, SUNNY_DAY, SANDSTORM, SMART_STRIKE

	;tutors STONE_EDGE, FLAME_CHARGE, WILD_CHARGE
	; end
