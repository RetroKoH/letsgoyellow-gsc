Route15_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  4, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  5, ROUTE_15_FUCHSIA_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 19,  9, SIGNPOST_JUMPTEXT, Route15SignText

	db 2 ; object events
	itemball_event 12,  5, PP_UP, 1, EVENT_ROUTE_15_PP_UP
	object_event 43,  6, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_CUTTABLE_TREE, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_14_CUT_TREE_3

Route15SignText:
	text "Route 15"

	para "Fuchsia City -"
	line "Lavender Town"
	done
