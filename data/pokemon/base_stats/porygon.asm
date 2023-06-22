	db  65,  60,  70,  40,  85,  75 ; 395 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp
	db NO_ITEM ; item 1
	db UP_GRADE ; item 2
	dn GENDER_UNKNOWN, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	abilities_for PORYGON, TRACE, DOWNLOAD, ANALYTIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield   0,   0,   0,   0,   1,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, IRON_TAIL, FOUL_PLAY, TRI_ATTACK, THUNDERBOLT, THUNDER, PSYCHIC, SHADOW_BALL, SOLAR_BEAM, HYPER_BEAM, BLIZZARD, ICE_BEAM, DREAM_EATER, TRICK_ROOM

	;tutors AERIAL_ACE, SIGNAL_BEAM, ZEN_HEADBUTT
	; end
