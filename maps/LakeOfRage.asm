LakeOfRage_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	itemball_event 13,  2, POKE_BALL, 1, -1

	const_def 1 ; object constants
