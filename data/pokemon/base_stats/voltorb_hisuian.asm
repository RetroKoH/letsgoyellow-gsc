	db  40,  30,  50, 100,  55,  55 ; 330 BST
	;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, GRASS ; type
	db 190 ; catch rate
	db 103 ; base exp
	db NO_ITEM ; item 1
	db CELL_BATTERY ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/voltorb_hisuian/front.dimensions"
	abilities_for VOLTORB_HISUIAN, SOUNDPROOF, STATIC, AFTERMATH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, FOUL_PLAY, THUNDERBOLT, THUNDER, EXPLOSION, MEGA_DRAIN, RAIN_DANCE, VOLT_SWITCH, BULLET_SEED, ENERGY_BALL

	;tutors SIGNAL_BEAM, GYRO_BALL, GRASS_KNOT, WILD_CHARGE
	; end
