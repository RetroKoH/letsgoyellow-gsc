Route18West_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route18WestAlwaysOnBike

	db 2 ; warp events
	warp_event 19,  6, ROUTE_18_GATE, 1
	warp_event 19,  7, ROUTE_18_GATE, 2

	db 1 ; coord events
	coord_event 12,  0, 0, Route18WestBikeCheckScript

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

Route18WestAlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	return

Route18WestBikeCheckScript:
	copybytetovar wPlayerState
	ifequal PLAYER_BIKE, .done
	showtext Route18WestBikeWarningText
	applyonemovement PLAYER, step_down
.done
	end

Route18WestBikeWarningText:
	text "You have to be on"
	line "a Bicycle to go"
	cont "on Cycling Road!"
	done
