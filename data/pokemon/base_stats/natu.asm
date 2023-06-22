	db  40,  50,  45,  70,  70,  45 ; 320 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/natu/front.dimensions"
	abilities_for NATU, SYNCHRONIZE, EARLY_BIRD, MAGIC_BOUNCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, U_TURN, DAZZLINGLEAM, PSYCHIC, SHADOW_BALL, SOLAR_BEAM, ROOST, MEGA_DRAIN, DREAM_EATER, RAIN_DANCE, SUNNY_DAY, TRICK_ROOM

	;tutors AERIAL_ACE, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
