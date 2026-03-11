Route10South_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  3, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  5, BGEVENT_JUMPTEXT, Route10SignText

	def_object_events

Route10SignText:
	text "Route 10"

	para "Cerulean City -"
	line "Lavender Town"
	done
