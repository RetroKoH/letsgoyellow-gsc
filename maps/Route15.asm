Route15_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  4, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  4,  5, ROUTE_15_FUCHSIA_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 19,  9, BGEVENT_JUMPTEXT, Route15SignText

	def_object_events
	cuttree_event 43,  6, EVENT_ROUTE_14_CUT_TREE_3

Route15SignText:
	text "Route 15"

	para "Fuchsia City -"
	line "Lavender Town"
	done
