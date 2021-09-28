Route22_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  6,  6, SIGNPOST_JUMPTEXT, VictoryRoadEntranceSignText

	db 0 ; object events

VictoryRoadEntranceSignText:
	text "Route 22"

	para "#mon League"
	line "Reception Gate"
	done
