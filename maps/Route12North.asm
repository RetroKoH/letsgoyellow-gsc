Route12North_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE, 1
	warp_event 11, 15, ROUTE_12_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_JUMPTEXT, FishingSpotSignText

	def_object_events

FishingSpotSignText:
	text "Fishing Spot"
	done
