Route10South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  6,  3, ROCK_TUNNEL_1F, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5,  5, SIGNPOST_JUMPTEXT, Route10SignText
	bg_event 16,  3, SIGNPOST_ITEM + MAX_ETHER, EVENT_ROUTE_10_HIDDEN_MAX_ETHER

	db 0 ; object events

Route10SignText:
	text "Route 10"

	para "Cerulean City -"
	line "Lavender Town"
	done
