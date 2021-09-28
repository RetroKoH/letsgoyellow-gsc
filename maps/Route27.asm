Route27_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 33,  7, ROUTE_27_REST_HOUSE, 1
	warp_event 26,  5, TOHJO_FALLS, 1
	warp_event 36,  5, TOHJO_FALLS, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 25,  7, SIGNPOST_JUMPTEXT, TohjoFallsSignText

	db 3 ; object events
	itemball_event 53, 12, RARE_CANDY, 1, EVENT_ROUTE_27_RARE_CANDY
	itemball_event 71,  4, DESTINY_KNOT, 1, EVENT_ROUTE_27_DESTINY_KNOT
	fruittree_event 60, 12, FRUITTREE_ROUTE_27, LUM_BERRY

TohjoFallsSignText:
	text "Tohjo Falls"

	para "The Link Between"
	line "Kanto and Johto"
	done
