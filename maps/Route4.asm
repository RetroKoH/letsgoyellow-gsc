Route4_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4,  7, MOUNT_MOON_B1F, 8
	warp_event 19,  5, MOUNT_MOON_SQUARE, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  7,  9, SIGNPOST_JUMPTEXT, MtMoonSignText
	bg_event 17,  9, SIGNPOST_JUMPTEXT, CableCarSignText
	bg_event 15,  4, SIGNPOST_ITEM + ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

	db 1 ; object events
	itemball_event 42,  5, HP_UP, 1, EVENT_ROUTE_4_HP_UP

MtMoonSignText:
	text "Mt.Moon Tunnel"
	done

CableCarSignText:
	text "Cable Car to"
	line "Mt.Moon Square"
	done
