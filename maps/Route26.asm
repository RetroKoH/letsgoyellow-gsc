Route26_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  7,  5, POKEMON_LEAGUE_GATE, 3
	warp_event 15, 57, ROUTE_26_HEAL_SPEECH_HOUSE, 1
	warp_event  5, 71, ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  8,  6, SIGNPOST_JUMPTEXT, Route26SignText

	db 2 ; object events
	fruittree_event 14, 54, FRUITTREE_ROUTE_26, SITRUS_BERRY
	itemball_event  9, 15, MAX_ELIXIR, 1, EVENT_ROUTE_26_MAX_ELIXIR

Route26SignText:
	text "Route 26"

	para "#mon League"
	line "Reception Gate"
	done
