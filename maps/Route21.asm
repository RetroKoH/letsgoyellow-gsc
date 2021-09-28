Route21_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 2 ; bg events
	bg_event 12, 37, SIGNPOST_ITEM + STARDUST, EVENT_ROUTE_21_HIDDEN_STARDUST_1
	bg_event  5, 66, SIGNPOST_ITEM + STARDUST, EVENT_ROUTE_21_HIDDEN_STARDUST_2

	db 1 ; object events
	itemball_event 13, 26, STAR_PIECE, 1, EVENT_ROUTE_21_STAR_PIECE
