	db  65,  80, 140,  70,  40,  70 ; 465 BST
	;   hp  atk  def  spe  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	db NO_ITEM ; item 1
	db SHARP_BEAK ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	abilities_for SKARMORY, KEEN_EYE, STURDY, WEAK_ARMOR
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, FLY, DARK_PULSE, ROCK_SLIDE, ROOST, FLASH_CANNON, STEALTH_ROCK, SUNNY_DAY, SANDSTORM

	;tutors AERIAL_ACE
	; end
