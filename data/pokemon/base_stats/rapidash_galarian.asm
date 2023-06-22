	db  65, 100,  70, 105,  80,  80 ; 500 BST
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC, FAIRY ; type
	db 60 ; catch rate
	db 192 ; base exp
	db NO_ITEM ; item 1
	db MARANGABERRY ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/rapidash_galarian/front.dimensions"
	abilities_for RAPIDASH_GALARIAN, RUN_AWAY, PASTEL_VEIL, ANTICIPATION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, PROTECT, SUBSTITUTE, FACADE, IRON_TAIL, DAZZLINGLEAM, CALM_MIND, PSYCHIC, PLAY_ROUGH, HYPER_BEAM, DRILL_RUN, DREAM_EATER, MEGAHORN, TRICK_ROOM, SMART_STRIKE

	;tutors WILD_CHARGE, ZEN_HEADBUTT
	; end
