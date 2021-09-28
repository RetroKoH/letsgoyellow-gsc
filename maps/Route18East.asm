Route18East_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4,  6, ROUTE_18_GATE, 3
	warp_event  4,  7, ROUTE_18_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 11,  5, SIGNPOST_JUMPTEXT, Route18SignText

	db 0 ; object events

Route18SignText:
	text "Route 18"

	para "Celadon City -"
	line "Fuchsia City"
	done
