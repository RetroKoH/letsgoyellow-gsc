	db  60,  65,  60, 110, 130,  75 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp
	db NO_ITEM ; item 1
	db SPELL_TAG ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/gengar/front.dimensions"
	abilities_for GENGAR, CURSED_BODY, CURSED_BODY, CURSED_BODY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield   0,   0,   0,   0,   3,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, TAUNT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, WILL_O_WISP, FACADE, BRICK_BREAK, SEISMIC_TOSS, DARK_PULSE, FOUL_PLAY, THUNDERPUNCH, POISON_JAB, TOXIC, FIRE_PUNCH, DAZZLINGLEAM, ICE_PUNCH, THUNDERBOLT, THUNDER, PSYCHIC, EXPLOSION, SHADOW_BALL, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, DREAM_EATER, SUNNY_DAY, TRICK_ROOM, DRAIN_PUNCH, ENERGY_BALL

	;tutors FOCUS_BLAST, GUNK_SHOT, HEX, KNOCK_OFF
	; end
