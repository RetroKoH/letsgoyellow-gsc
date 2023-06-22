	db 100,  50,  50,  70,  86,  96 ; 452 BST
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/noctowl/front.dimensions"
	abilities_for NOCTOWL, INSOMNIA, KEEN_EYE, TINTED_LENS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield   2,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, REST, PROTECT, SUBSTITUTE, REFLECT, FACADE, FLY, CALM_MIND, PSYCHIC, SHADOW_BALL, HYPER_BEAM, ROOST, WORK_UP, DREAM_EATER, SUNNY_DAY

	;tutors AERIAL_ACE, ZEN_HEADBUTT
	; end
