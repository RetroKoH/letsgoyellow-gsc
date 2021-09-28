Route16West_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 35,  1, PSYCHIC_INVERS_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 59,  2, SIGNPOST_JUMPTEXT, Route16WestSignpostText
	bg_event 24,  5, SIGNPOST_ITEM + RARE_CANDY, EVENT_ROUTE_16_WEST_HIDDEN_RARE_CANDY

	db 5 ; object events
	itemball_event 42, 14, METRONOME_I, 1, EVENT_ROUTE_16_WEST_METRONOME
	itemball_event 51,  2, PP_UP, 1, EVENT_ROUTE_16_WEST_PP_UP
	itemball_event 21,  2, MAX_REVIVE, 1, EVENT_ROUTE_16_WEST_MAX_REVIVE
	cuttree_event  3,  7, EVENT_ROUTE_16_WEST_CUT_TREE_1
	cuttree_event 57,  2, EVENT_ROUTE_16_WEST_CUT_TREE_2

Route16WestSignpostText:
	text "Route 16"
	done
