DimCave4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 16, DIM_CAVE_5F, 2
	warp_event 27, 29, DIM_CAVE_5F, 3
	warp_event 27, 24, DIM_CAVE_5F, 4 ; hole
	warp_event  5,  5, DIM_CAVE_3F, 1
	warp_event 28, 22, DIM_CAVE_3F, 2
	warp_event 14,  7, DIM_CAVE_3F, 3

	def_coord_events

	def_bg_events

	def_object_events
	strengthboulder_event 14, 15, EVENT_BOULDER_IN_DIM_CAVE_4F