Route12South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 11, 57, ROUTE_12_SUPER_ROD_HOUSE, 1
	warp_event  0, 42, ROUTE_11_GATE, 3
	warp_event  0, 43, ROUTE_11_GATE, 4
	warp_event 10,  1, ROUTE_12_GATE, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event 11, 43, SIGNPOST_JUMPTEXT, Route12SignText
	bg_event 14, 15, SIGNPOST_ITEM + ELIXIR, EVENT_ROUTE_12_HIDDEN_ELIXIR

	db 4 ; object events
	itemball_event  5, 68, CALCIUM, 1, EVENT_ROUTE_12_CALCIUM
	itemball_event  5, 82, NUGGET, 1, EVENT_ROUTE_12_NUGGET
	cuttree_event  6, 71, EVENT_ROUTE_12_CUT_TREE_1
	cuttree_event  9, 79, EVENT_ROUTE_12_CUT_TREE_2

Route12SignText:
	text "Route 12"

	para "North to Lavender"
	line "Town"
	done
