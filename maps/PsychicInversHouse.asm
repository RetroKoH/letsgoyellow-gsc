PsychicInversHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, ROUTE_16_WEST, 1
	warp_event  3,  7, ROUTE_16_WEST, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  7,  1, SIGNPOST_JUMPSTD, difficultbookshelf

	db 0 ; object events
