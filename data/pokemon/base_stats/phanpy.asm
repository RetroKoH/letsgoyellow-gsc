	db  90,  60,  60,  40,  40,  40 ; 330 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp
	db NO_ITEM ; item 1
	db KEE_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/phanpy/front.dimensions"
	abilities_for PHANPY, PICKUP, PICKUP, SAND_VEIL
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, ROCK_SLIDE, EARTHQUAKE, PLAY_ROUGH, STEALTH_ROCK, SANDSTORM, BULLDOZE

	;tutors GUNK_SHOT, EARTH_POWER, KNOCK_OFF
	; end
