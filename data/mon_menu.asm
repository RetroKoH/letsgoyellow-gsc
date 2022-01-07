MonMenuFieldStrings:
	db "Chop@"
	db "Soar@"
	db "Swim@"
	db "Push@"
	db "Glow@"
	db "Warp@"
	db "Heal@"
	db "Lull@"

MonMenuOptionStrings: ; 24caf
	db "Stats@"
	db "Switch@"
	db "Item@"
	db "Cancel@"
	db "Moves@"
	db "Mail@"
	db "Error!@"
; 24cd9

MonMenuOptions: ; 24cd9
; Moves
	db MONMENU_FIELD_MOVE, MONMENU_CHOP,   1  ; CHOP DOWN
	db MONMENU_FIELD_MOVE, MONMENU_SOAR,   2  ; SKY DASH
	db MONMENU_FIELD_MOVE, MONMENU_SWIM,   3  ; SEA SKIM
	db MONMENU_FIELD_MOVE, MONMENU_PUSH,   4  ; BIG PUSH
	db MONMENU_FIELD_MOVE, MONMENU_GLOW,   5  ; GLOW
	db MONMENU_FIELD_MOVE, MONMENU_WARP,   6  ; WARP
	db MONMENU_FIELD_MOVE, MONMENU_HEAL,   7  ; HEAL
													 ; LULL
; Options
	db MONMENU_MENUOPTION, MONMENU_STATS,      1 ; STATS
	db MONMENU_MENUOPTION, MONMENU_SWITCH,     2 ; SWITCH
	db MONMENU_MENUOPTION, MONMENU_ITEM,       3 ; ITEM
	db MONMENU_MENUOPTION, MONMENU_CANCEL,     4 ; CANCEL
	db MONMENU_MENUOPTION, MONMENU_MOVE,       5 ; MOVE
	db MONMENU_MENUOPTION, MONMENU_MAIL,       6 ; MAIL
	db MONMENU_MENUOPTION, MONMENU_ERROR,      7 ; ERROR!
	db -1
; 24d19
