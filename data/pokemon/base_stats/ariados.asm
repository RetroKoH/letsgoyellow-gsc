	db  70,  90,  70,  40,  60,  70 ; 400 BST
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F50, 2 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/ariados/front.dimensions"
	abilities_for ARIADOS, SWARM, INSOMNIA, SNIPER
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HELPING_HAND, REST, PROTECT, SUBSTITUTE, DIG, FACADE, FOUL_PLAY, X_SCISSOR, POISON_JAB, CALM_MIND, SOLAR_BEAM, HYPER_BEAM, SLUDGE_BOMB, MEGA_DRAIN, SMART_STRIKE

	;tutors SIGNAL_BEAM
	; end
