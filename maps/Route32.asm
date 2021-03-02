Route32_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 15, 77, ROUTE_32_POKECENTER_1F, 1
	warp_event  8,  6, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  8,  7, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event 10, 83, UNION_CAVE_1F, 4
	warp_event 17,  1, VIOLET_CITY, 12

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
