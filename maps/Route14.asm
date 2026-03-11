Route14_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_KIM, -1
	cuttree_event  5, 10, EVENT_ROUTE_14_CUT_TREE_1
	cuttree_event 11, 18, EVENT_ROUTE_14_CUT_TREE_2
	cuttree_event  3, 26, EVENT_ROUTE_14_CUT_TREE_3
	fruittree_event  5, 22, FRUITTREE_ROUTE_14, CUSTAP_BERRY, PAL_NPC_RED
