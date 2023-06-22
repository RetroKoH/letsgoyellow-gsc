	db  50,  95, 180,  70,  85,  45 ; 525 BST
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	db PEARL ; item 1
	db BIG_PEARL ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/cloyster/front.dimensions"
	abilities_for CLOYSTER, SHELL_ARMOR, SKILL_LINK, OVERCOAT
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	ev_yield   0,   0,   2,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, TELEPORT, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, POISON_JAB, TRI_ATTACK, EXPLOSION, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM, DRILL_RUN, RAIN_DANCE, HAIL, SMART_STRIKE

	;tutors WEATHER_BALL, SIGNAL_BEAM, LIQUIDATION, AVALANCHE
	; end
