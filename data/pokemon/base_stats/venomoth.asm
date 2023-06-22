	db  70,  65,  60,  90,  90,  75 ; 450 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp
	db SHED_SHELL ; item 1
	db SILVERPOWDER ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/venomoth/front.dimensions"
	abilities_for VENOMOTH, SHIELD_DUST, TINTED_LENS, WONDER_SKIN
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   0,   0,   1,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, U_TURN, PSYCHIC, SOLAR_BEAM, HYPER_BEAM, ROOST, SLUDGE_BOMB, MEGA_DRAIN, DREAM_EATER, SUNNY_DAY, ENERGY_BALL, ACROBATICS

	;tutors AERIAL_ACE, SIGNAL_BEAM, ZEN_HEADBUTT
	; end
