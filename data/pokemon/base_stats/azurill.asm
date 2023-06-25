	db  50,  20,  40,  20,  20,  40 ; 190 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY ; type
	db 150 ; catch rate
	db 33 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	dn GENDER_F75, 1 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/azurill/front.dimensions"
	abilities_for AZURILL, THICK_FAT, HUGE_POWER, SAP_SIPPER
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield   1,   0,   0,   0,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/move tutor learnset
	tms HEADBUTT, HELPING_HAND, REST, LIGHT_SCREEN, PROTECT, SUBSTITUTE, DIG, FACADE, IRON_TAIL, WATERFALL, SURF, ICE_BEAM, WORK_UP

	;tutors KNOCK_OFF
	; end
