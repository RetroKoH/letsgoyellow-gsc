	db  45,  75,  37,  83,  70,  55 ; 365 BST
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp
	db ASPEAR_BERRY ; item 1
	db MAGMARIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/magby/front.dimensions"
	abilities_for MAGBY, FLAME_BODY, FLAME_BODY, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   0,   0,   0,   1,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, PROTECT, SUBSTITUTE, WILL_O_WISP, FACADE, BRICK_BREAK, SEISMIC_TOSS, IRON_TAIL, THUNDERPUNCH, FIRE_PUNCH, FLAMETHROWER, PSYCHIC, FIRE_BLAST, SUNNY_DAY

	;tutors FLAME_CHARGE
	; end
