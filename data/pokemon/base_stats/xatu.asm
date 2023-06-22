	db  65,  75,  70,  95,  95,  70 ; 470 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FLYING ; type
	db 75 ; catch rate
	db 171 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/xatu/front.dimensions"
	abilities_for XATU, SYNCHRONIZE, EARLY_BIRD, MAGIC_BOUNCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   0,   0,   0,   1,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, THUNDER_WAVE, U_TURN, FOUL_PLAY, DAZZLINGLEAM, PSYCHIC, SHADOW_BALL, SOLAR_BEAM, HYPER_BEAM, ROOST, MEGA_DRAIN, DREAM_EATER, RAIN_DANCE, SUNNY_DAY, TRICK_ROOM

	;tutors AERIAL_ACE, SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
