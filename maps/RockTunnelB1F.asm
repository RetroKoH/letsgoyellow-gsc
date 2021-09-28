RockTunnelB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  3,  3, ROCK_TUNNEL_1F, 3
	warp_event 17,  9, ROCK_TUNNEL_1F, 4
	warp_event 23,  3, ROCK_TUNNEL_1F, 5
	warp_event 27, 19, ROCK_TUNNEL_1F, 6
	warp_event  3, 13, ROCK_TUNNEL_1F, 7

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3, 18, SIGNPOST_ITEM + MAX_POTION, EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION

	db 4 ; object events
	itemball_event  7, 17, IRON, 1, EVENT_ROCK_TUNNEL_B1F_IRON
	itemball_event  8,  4, PP_UP, 1, EVENT_ROCK_TUNNEL_B1F_PP_UP
	itemball_event 15,  2, REVIVE, 1, EVENT_ROCK_TUNNEL_B1F_REVIVE
	strengthboulder_event 10, 25
