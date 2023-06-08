	db 110, 130,  80,  80,  70,  60 ; 530 BST
	;   hp  atk  def  spd  sat  sdf

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 207 ; base exp
	db RAWST_BERRY ; item 1
	db NEVERMELTICE ; item 2
	dn GENDER_F50, 3 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/mamoswine/front.dimensions"
	abilities_for MAMOSWINE, OBLIVIOUS, SNOW_CLOAK, THICK_FAT
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield   0,   3,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm
	; end
