VictoryRoad3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  5, VICTORY_ROAD_2F, 3
	warp_event 15, 11, VICTORY_ROAD_2F, 4
	warp_event 19, 13, VICTORY_ROAD_2F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	itemball_event 16, 13, RAZOR_FANG, 1, EVENT_VICTORY_ROAD_3F_RAZOR_FANG
