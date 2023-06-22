	db  25,  35,  70,  45,  95,  55 ; 325 BST
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 89 ; base exp
	db NO_ITEM ; item 1
	db METAL_COAT ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
	abilities_for MAGNEMITE, MAGNET_PULL, STURDY, ANALYTIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, THUNDERBOLT, THUNDER, EXPLOSION, FLASH_CANNON, VOLT_SWITCH

	;tutors SIGNAL_BEAM, GYRO_BALL, WILD_CHARGE
	; end
