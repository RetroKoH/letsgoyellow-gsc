	db  35,  20,  65,  20,  40,  65 ; 245 BST
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 74 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F12_5, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/togepi/front.dimensions"
	abilities_for TOGEPI, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   0,   0,   1
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, TRI_ATTACK, DAZZLINGLEAM, CALM_MIND, FLAMETHROWER, PSYCHIC, SHADOW_BALL, PLAY_ROUGH, SOLAR_BEAM, FIRE_BLAST, WORK_UP, DREAM_EATER

	;tutors SIGNAL_BEAM, GRASS_KNOT, ZEN_HEADBUTT
	; end
