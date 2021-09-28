Route14_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  7,  7, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, PERSONTYPE_COMMAND, trade, TRADE_WITH_KIM_FOR_CHANSEY, -1
	cuttree_event  5, 10, EVENT_ROUTE_14_CUT_TREE_1
	cuttree_event 11, 16, EVENT_ROUTE_14_CUT_TREE_2
	cuttree_event  3, 26, EVENT_ROUTE_14_CUT_TREE_3
