SeafoamIslandsB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 25, 15, SEAFOAM_ISLANDS_B1F, 3
	warp_event 15,  7, SEAFOAM_ISLANDS_B1F, 4
	warp_event 13, 13, SEAFOAM_ISLANDS_B1F, 5
	warp_event  7, 15, SEAFOAM_ISLANDS_B1F, 6
	warp_event 35,  7, SEAFOAM_ISLANDS_B3F, 1
	warp_event 28,  9, SEAFOAM_ISLANDS_B3F, 2
	warp_event 35, 15, SEAFOAM_ISLANDS_B3F, 3
	warp_event  4, 13, SEAFOAM_ISLANDS_B3F, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  7,  9, SIGNPOST_ITEM + PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_1
	bg_event 35, 13, SIGNPOST_ITEM + PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_2

	db 1 ; object events
	itemball_event 15, 16, WATER_STONE, 1, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE
