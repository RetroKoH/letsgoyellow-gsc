Route18West_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_ROUTE18WEST_BICYCLE_CHECK

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route18WestAlwaysOnBike

	def_warp_events
	warp_event 17,  6, ROUTE_18_GATE, 1
	warp_event 17,  7, ROUTE_18_GATE, 2

	def_coord_events
	coord_event 12,  0, SCENE_ROUTE18WEST_BICYCLE_CHECK, Route18WestBikeCheckScript

	def_bg_events

	def_object_events

Route18WestAlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route18WestBikeCheckScript:
	readmem wPlayerState
	ifequalfwd PLAYER_BIKE, .done
	showtext Route18WestBikeWarningText
	applyonemovement PLAYER, step_down
.done
	end

; Add trainers here

Route18WestBikeWarningText:
	text "You have to be on"
	line "a Bicycle to go"
	cont "on Cycling Road!"
	done
