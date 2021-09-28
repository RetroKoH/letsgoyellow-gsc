SafariZoneEast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  2, 24, SAFARI_ZONE_HUB, 3
	warp_event  2, 25, SAFARI_ZONE_HUB, 4
	warp_event  2,  6, SAFARI_ZONE_NORTH, 1
	warp_event  2,  7, SAFARI_ZONE_NORTH, 2
	warp_event 27, 11, SAFARI_ZONE_EAST_REST_HOUSE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  6, 24, SIGNPOST_JUMPTEXT, SafariZoneEastAreaSignText
	bg_event 28, 12, SIGNPOST_JUMPTEXT, SafariZoneEastRestHouseSignText
	bg_event  8,  6, SIGNPOST_JUMPTEXT, SafariZoneEastTrainerTipsSignText

	db 3 ; object events
	itemball_event 22, 15, CARBOS, 1, EVENT_SAFARI_ZONE_EAST_CARBOS
	itemball_event  7, 13, SILVERPOWDER, 1, EVENT_SAFARI_ZONE_EAST_SILVERPOWDER
	itemball_event  5,  3, FULL_RESTORE, 1, EVENT_SAFARI_ZONE_EAST_FULL_RESTORE

SafariZoneEastAreaSignText:
	text "Safari Zone"
	line "East Area"
	done

SafariZoneEastRestHouseSignText:
	text "Rest House"
	done

SafariZoneEastTrainerTipsSignText:
	text "Trainer Tips"

	para "Search for rare"
	line "#mon at night"
	cont "or in the morning!"
	done
