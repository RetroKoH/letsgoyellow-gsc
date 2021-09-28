Route3_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route3FlyPoint

	db 2 ; warp events
	warp_event 68,  1, MOUNT_MOON_1F, 1
	warp_event 61,  3, ROUTE_3_POKECENTER_1F, 1

	db 0 ; coord events

	db 8 ; bg events
	bg_event 63, 15, SIGNPOST_JUMPTEXT, UnknownText_0x1ae163
	bg_event 11, 17, SIGNPOST_ITEM + MOON_STONE, EVENT_ROUTE_3_HIDDEN_MOON_STONE
	bg_event  8, 15, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event  8, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event  9, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 14, 15, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 15, 16, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 15, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText

	db 1 ; object events
	itemball_event 36, 14, BIG_ROOT, 1, EVENT_ROUTE_3_BIG_ROOT

Route3FlyPoint:
	setflag ENGINE_FLYPOINT_MT_MOON
	return

Route3MeteoriteText:
	text "Never seen a stone"
	line "like this before!"

	para "Could it be…"
	line "a meteorite from"
	cont "space?"
	done

UnknownText_0x1ae163:
	text "Mt.Moon Tunnel"
	done
