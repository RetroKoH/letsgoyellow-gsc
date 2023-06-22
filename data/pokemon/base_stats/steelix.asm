	db  75,  85, 200,  30,  55,  65 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp
	db NO_ITEM ; item 1
	db METAL_COAT ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/steelix/front.dimensions"
	abilities_for STEELIX, ROCK_HEAD, STURDY, SHEER_FORCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, DRAGON_TAIL, IRON_TAIL, DARK_PULSE, ROCK_SLIDE, DRAGON_PULSE, EARTHQUAKE, EXPLOSION, HYPER_BEAM, FLASH_CANNON, STEALTH_ROCK, DRILL_RUN, SANDSTORM, BULLDOZE

	;tutors EARTH_POWER, STONE_EDGE, GYRO_BALL, DRAGON_DANCE
	; end
