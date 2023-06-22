	db 135, 143, 143,  34,  80,  65 ; 600 BST
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 3 ; catch rate
	db 200 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_UNKNOWN, 15 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/melmetal/front.dimensions"
	abilities_for MELMETAL, IRON_FIST, IRON_FIST, IRON_FIST
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, FACADE, BRICK_BREAK, THUNDER_WAVE, ROCK_SLIDE, THUNDERPUNCH, ICE_PUNCH, THUNDERBOLT, THUNDER, EARTHQUAKE, EXPLOSION, SOLAR_BEAM, HYPER_BEAM, SUPERPOWER, FLASH_CANNON, ICE_BEAM

	;tutors GYRO_BALL
	; end
