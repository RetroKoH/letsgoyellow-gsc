	db  75,  90, 140,  40,  60,  60 ; 465 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 118 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/forretress/front.dimensions"
	abilities_for FORRETRESS, STURDY, STURDY, OVERCOAT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, DIG, FACADE, THUNDER_WAVE, ROCK_SLIDE, POISON_JAB, EARTHQUAKE, EXPLOSION, SOLAR_BEAM, HYPER_BEAM, MEGA_DRAIN, FLASH_CANNON, STEALTH_ROCK, DRILL_RUN, SANDSTORM, VOLT_SWITCH, BULLET_SEED, BULLDOZE, SMART_STRIKE

	;tutors EARTH_POWER, STONE_EDGE, SIGNAL_BEAM, GYRO_BALL
	; end
