Route16South_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, UnknownScript_0x1ad318

	db 2 ; warp events
	warp_event  9, 10, ROUTE_16_17_GATE, 1
	warp_event  9, 11, ROUTE_16_17_GATE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5,  9, SIGNPOST_JUMPTEXT, CyclingRoadSignText

	db 0 ; object events

UnknownScript_0x1ad318:
	setflag ENGINE_ALWAYS_ON_BIKE
	return

CyclingRoadSignText:
	text "Cycling Road"

	para "Downhill coasting"
	line "all the way!"
	done
