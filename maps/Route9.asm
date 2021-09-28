Route9_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 3 ; bg events
	bg_event 21,  7, SIGNPOST_JUMPTEXT, Route9SignText
	bg_event 51, 15, SIGNPOST_ITEM + ETHER, EVENT_ROUTE_9_HIDDEN_ETHER
	bg_event 42, 12, SIGNPOST_ITEM + SOFT_SAND, EVENT_ROUTE_9_HIDDEN_SOFT_SAND

	db 3 ; object events
	itemball_event 26,  2, MAX_POTION, 1, EVENT_ROUTE_9_MAX_POTION
	tmhmball_event 45,  2, TM_FLASH_CANNON, EVENT_ROUTE_9_TM_FLASH_CANNON
	cuttree_event  4,  8, EVENT_ROUTE_9_CUT_TREE

Route9SignText:
	text "Route 9"

	para "Cerulean City -"
	line "Rock Tunnel"
	done
