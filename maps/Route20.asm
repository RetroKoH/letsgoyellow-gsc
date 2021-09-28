Route20_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 70,  9, SEAFOAM_ISLANDS_1F, 1
	warp_event 62,  5, SEAFOAM_ISLANDS_1F, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event 69, 11, SIGNPOST_JUMPTEXT, CinnabarGymSignText
	bg_event 65,  7, SIGNPOST_JUMPTEXT, SeafoamIslandsSignText
	bg_event 23, 10, SIGNPOST_ITEM + STARDUST, EVENT_ROUTE_20_HIDDEN_STARDUST

	db 1 ; object events
	itemball_event 72,  3, BIG_PEARL, 1, EVENT_ROUTE_20_BIG_PEARL

CinnabarGymSignText:
	text "Seafoam Islands"

	para "…What does this"
	line "notice say?"

	para "Cinnabar Gym"
	line "Leader: Blaine"
	done

SeafoamIslandsSignText:
	text "Seafoam Islands"
	done
