	db  50,  65,  65,  40,  40,  40 ; 290 BST
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/meowth_galarian/front.dimensions"
	abilities_for MEOWTH_GALARIAN, BATTLE_ARMOR, TOUGH_CLAWS, STEELY_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   1,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, BRICK_BREAK, U_TURN, IRON_TAIL, DARK_PULSE, FOUL_PLAY, X_SCISSOR, THUNDERBOLT, THUNDER, SHADOW_BALL, PLAY_ROUGH, FLASH_CANNON, STEALTH_ROCK, WORK_UP, FALSE_SWIPE

	;tutors AERIAL_ACE, GUNK_SHOT, GYRO_BALL, KNOCK_OFF
	; end
