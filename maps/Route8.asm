Route8_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 10, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4, 11, ROUTE_8_SAFFRON_GATE, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event 11,  9, SIGNPOST_JUMPTEXT, Route8UndergroundPathSignText
	bg_event 10,  7, SIGNPOST_JUMPTEXT, Route8LockedDoorText

	db 3 ; object events
	cuttree_event 21, 14, EVENT_ROUTE_8_CUT_TREE_1
	cuttree_event 32, 12, EVENT_ROUTE_8_CUT_TREE_2
	fruittree_event 45,  7, FRUITTREE_ROUTE_8, SALAC_BERRY

Route8LockedDoorText:
	text "It's locked…"
	done

Route8UndergroundPathSignText:
	text "The flyer's torn."

	para "It's impossible to"
	line "read…"
	done
