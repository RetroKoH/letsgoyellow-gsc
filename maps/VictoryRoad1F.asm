VictoryRoad1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11, 21, ROUTE_23_NORTH, 1
	warp_event  3,  3, VICTORY_ROAD_2F, 2

	def_coord_events

	def_bg_events
	bg_event  5, 19, BGEVENT_ITEM + FULL_HEAL, EVENT_VICTORY_ROAD_1F_HIDDEN_FULL_HEAL

	def_object_events
	itemball_event 14,  2, MAX_REVIVE, 1, EVENT_VICTORY_ROAD_1F_MAX_REVIVE
	itemball_event 17,  2, FULL_HEAL, 1, EVENT_VICTORY_ROAD_1F_FULL_HEAL