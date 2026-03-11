Route16West_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37,  1, PSYCHIC_INVERS_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	itemball_event 42, 16, METRONOME_I, 1, EVENT_ROUTE_16_WEST_METRONOME
	itemball_event 50,  3, PP_UP, 1, EVENT_ROUTE_16_WEST_PP_UP
	itemball_event 21,  4, MAX_REVIVE, 1, EVENT_ROUTE_16_WEST_MAX_REVIVE
	cuttree_event 57,  4, EVENT_ROUTE_16_WEST_CUT_TREE
	cuttree_event 67,  3, EVENT_ROUTE_16_NORTH_CUT_TREE
