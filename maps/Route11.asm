Route11_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 47,  8, ROUTE_11_GATE, 1
	warp_event 47,  9, ROUTE_11_GATE, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5,  7, SIGNPOST_JUMPTEXT, Route11SignText
	bg_event 44,  5, SIGNPOST_ITEM + REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

	db 1 ; object events
	fruittree_event 44,  2, FRUITTREE_ROUTE_11, GANLON_BERRY

Route11SignText:
	text "Route 11"
	done
