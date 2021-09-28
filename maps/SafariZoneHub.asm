SafariZoneHub_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 16, 27, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 17, 27, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 31, 12, SAFARI_ZONE_EAST, 1
	warp_event 31, 13, SAFARI_ZONE_EAST, 2
	warp_event  2, 12, SAFARI_ZONE_WEST, 5
	warp_event  2, 13, SAFARI_ZONE_WEST, 6
	warp_event 16,  2, SAFARI_ZONE_NORTH, 5
	warp_event 17,  2, SAFARI_ZONE_NORTH, 6
	warp_event 19, 21, SAFARI_ZONE_HUB_REST_HOUSE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 24, SIGNPOST_JUMPTEXT, SafariZoneHubAreaSignText
	bg_event 20, 22, SIGNPOST_JUMPTEXT, SafariZoneHubRestHouseSignText

	db 2 ; object events
	itemball_event 15, 12, NUGGET, 1, EVENT_SAFARI_ZONE_HUB_NUGGET
	itemball_event  8, 21, ULTRA_BALL, 1, EVENT_SAFARI_ZONE_HUB_ULTRA_BALL

SafariZoneHubAreaSignText:
	text "Safari Zone"
	line "Center Area"
	done

SafariZoneHubRestHouseSignText:
	text "Rest House"
	done
