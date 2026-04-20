MountMortar1FInside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	strengthboulder_event 21, 43
	itemball_event 35, 38, SMOOTH_ROCK, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_SMOOTH_ROCK
	itemball_event 16, 10, MAX_REVIVE, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	itemball_event 10, 27, HYPER_POTION, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	itemball_event 22, 20, MAX_POTION, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	itemball_event 35, 19, NUGGET, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	itemball_event  8, 16, IRON, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	itemball_event 17, 17, ULTRA_BALL, 1, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
