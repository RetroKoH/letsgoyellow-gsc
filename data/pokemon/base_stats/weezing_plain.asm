	db  65,  90, 120,  60,  85,  70 ; 490 BST
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp
	db NO_ITEM ; item 1
	db SMOKE_BALL ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/weezing_plain/front.dimensions"
	abilities_for WEEZING, LEVITATE, NEUTRALIZING_GAS, STENCH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, WILL_O_WISP, FACADE, DARK_PULSE, TOXIC, THUNDERBOLT, FLAMETHROWER, THUNDER, EXPLOSION, SHADOW_BALL, FIRE_BLAST, HYPER_BEAM, SLUDGE_BOMB

	;tutors GYRO_BALL
	; end
