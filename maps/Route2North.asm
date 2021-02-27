Route2North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 15, 19, ROUTE_2_NUGGET_SPEECH_HOUSE, 1
	warp_event 16, 35, ROUTE_2_GATE, 1
	warp_event 17, 35, ROUTE_2_GATE, 2
	warp_event 12,  9, DIGLETTS_CAVE, 3
	warp_event  1, 11, VIRIDIAN_FOREST_PEWTER_GATE, 3
	warp_event  2, 11, VIRIDIAN_FOREST_PEWTER_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 11, 11, SIGNPOST_JUMPTEXT, Route2Text4

	db 3 ; object events
	fruittree_event  7, 13, FRUITTREE_ROUTE_2, LUM_BERRY
	cuttree_event  5, 10, EVENT_ROUTE_2_CUT_TREE_1
	cuttree_event 15, 22, EVENT_ROUTE_2_CUT_TREE_2

Route2Text4:
	text "Diglett's Cave"
	done
