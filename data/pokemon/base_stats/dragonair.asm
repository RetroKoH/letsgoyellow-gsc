	db  61,  84,  65,  70,  70,  70 ; 420 BST
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM ; item 1
	db DRAGON_SCALE ; item 2
	dn GENDER_F50, 7 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/dragonair/front.dimensions"
	abilities_for DRAGONAIR, SHED_SKIN, SHED_SKIN, MARVEL_SCALE
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield   0,   2,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, REFLECT, FACADE, THUNDER_WAVE, DRAGON_TAIL, IRON_TAIL, WATERFALL, DRAGON_PULSE, THUNDERBOLT, FLAMETHROWER, THUNDER, OUTRAGE, FIRE_BLAST, SURF, HYPER_BEAM, BLIZZARD, ICE_BEAM

	;tutors DRAGON_DANCE
	; end
