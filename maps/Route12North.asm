Route12North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 10, 15, ROUTE_12_GATE, 1
	warp_event 11, 15, ROUTE_12_GATE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13, 13, SIGNPOST_JUMPTEXT, FishingSpotSignText

	db 0 ; object events

FishingSpotSignText:
	text "Fishing Spot"
	done
