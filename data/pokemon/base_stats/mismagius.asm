	db  60,  60,  60, 105, 105, 105 ; 495 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 187 ; base exp
	db NO_ITEM ; item 1
	db SPELL_TAG ; item 2
	dn GENDER_F50, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mismagius/front.dimensions"
	abilities_for MISMAGIUS, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   0,   0,   1,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, WILL_O_WISP, FACADE, THUNDER_WAVE, DARK_PULSE, FOUL_PLAY, DAZZLINGLEAM, CALM_MIND, THUNDERBOLT, THUNDER, PSYCHIC, SHADOW_BALL, HYPER_BEAM, DREAM_EATER, RAIN_DANCE, SUNNY_DAY, TRICK_ROOM

	;tutors AERIAL_ACE, HEX, GRASS_KNOT
	; end
