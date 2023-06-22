	db  60,  50,  70, 150,  80,  80 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp
	db NO_ITEM ; item 1
	db CELL_BATTERY ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/electrode_plain/front.dimensions"
	abilities_for ELECTRODE, SOUNDPROOF, STATIC, AFTERMATH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, FOUL_PLAY, THUNDERBOLT, THUNDER, EXPLOSION, HYPER_BEAM, RAIN_DANCE, VOLT_SWITCH

	;tutors SIGNAL_BEAM, GYRO_BALL, WILD_CHARGE
	; end
