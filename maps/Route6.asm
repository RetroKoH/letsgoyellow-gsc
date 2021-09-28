Route6_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 21,  9, ROUTE_6_UNDERGROUND_ENTRANCE, 1
	warp_event 10,  1, ROUTE_6_SAFFRON_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 23, 11, SIGNPOST_JUMPTEXT, Route6UndergroundPathSignText

	db 0 ; object events
;	object_event 21, 19, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 1, OfficerfJennyScript, -1

Route6UndergroundPathSignText:
	text "Underground Path"

	para "Cerulean City -"
	line "Vermilion City"
	done
