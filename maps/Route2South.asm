Route2South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 15,  3, ROUTE_2_GATE, 3
	warp_event  5,  7, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 29, SIGNPOST_JUMPTEXT, Route2SignText

	db 4 ; object events
;	itemball_event 14, 17, MOON_STONE, 1, EVENT_ROUTE_2_MOON_STONE
;	itemball_event 13,  8, HP_UP, 1, EVENT_ROUTE_2_HP_UP
	cuttree_event 11, 16, EVENT_ROUTE_2_CUT_TREE_3
	cuttree_event 12, 24, EVENT_ROUTE_2_CUT_TREE_4
	cuttree_event 12, 30, EVENT_ROUTE_2_CUT_TREE_5
	object_event 23, 23, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_CUTTABLE_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_16_WEST_CUT_TREE_1

Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done
