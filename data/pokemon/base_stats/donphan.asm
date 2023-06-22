	db  90, 120, 120,  50,  60,  60 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp
	db NO_ITEM ; item 1
	db KEE_BERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/donphan/front.dimensions"
	abilities_for DONPHAN, STURDY, STURDY, SAND_VEIL
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   1,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, ROCK_SLIDE, POISON_JAB, EARTHQUAKE, PLAY_ROUGH, HYPER_BEAM, STEALTH_ROCK, SANDSTORM, BULLDOZE, SMART_STRIKE

	;tutors GUNK_SHOT, EARTH_POWER, STONE_EDGE, GYRO_BALL, KNOCK_OFF
	; end
