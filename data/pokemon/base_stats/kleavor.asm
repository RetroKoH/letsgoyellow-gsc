	db  70, 135,  95,  85,  45,  70 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 15 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/kleavor/front.dimensions"
	abilities_for KLEAVOR, SWARM, TECHNICIAN, TOUGH_CLAWS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm CURSE, TOXIC, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, ROCK_SMASH, DOUBLE_TEAM, FLASH_CANNON, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FURY_CUTTER, X_SCISSOR, ACROBATICS, GIGA_IMPACT, U_TURN, SWORDS_DANCE, SLASH, FLY, STRENGTH, COUNTER, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, IRON_HEAD, KNOCK_OFF, SWAGGER, THUNDERPUNCH
	; end
