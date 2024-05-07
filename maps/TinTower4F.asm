TinTower4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, TIN_TOWER_5F, 2
	warp_event 14,  2, TIN_TOWER_3F, 2
	warp_event  0, 14, TIN_TOWER_5F, 3
	warp_event 15, 15, TIN_TOWER_5F, 4

	def_coord_events

	def_bg_events
	bg_event  9,  6, BGEVENT_ITEM + MAX_POTION, EVENT_TIN_TOWER_4F_HIDDEN_MAX_POTION

	def_object_events
