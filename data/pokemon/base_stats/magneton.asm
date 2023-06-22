	db  50,  60,  95,  70, 120,  70 ; 465 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exp
	db NO_ITEM ; item 1
	db METAL_COAT ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magneton/front.dimensions"
	abilities_for MAGNETON, MAGNET_PULL, STURDY, ANALYTIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   0,   2,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, TRI_ATTACK, THUNDERBOLT, THUNDER, EXPLOSION, HYPER_BEAM, FLASH_CANNON, VOLT_SWITCH

	;tutors SIGNAL_BEAM, GYRO_BALL, WILD_CHARGE
	; end
