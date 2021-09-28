Route13West_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event 17, 13, SIGNPOST_JUMPTEXT, Route13DirectionsSignText

	db 0 ; object events

Route13DirectionsSignText:
	text "North to Lavender"
	line "Town"

	para "West to Fuchsia"
	line "City"
	done
