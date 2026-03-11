Route9_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 21,  7, BGEVENT_JUMPTEXT, Route9SignText
	bg_event 39,  3, BGEVENT_JUMPTEXT, Route9AdvancedTipsSignText

	def_object_events
	cuttree_event  4,  8, EVENT_ROUTE_9_CUT_TREE

Route9SignText:
	text "Route 9"

	para "Cerulean City -"
	line "Rock Tunnel"
	done

Route9AdvancedTipsSignText:
	text "Advanced Tips!"

	para "A #mon holding"
	line "a Toxic Orb will"
	cont "be poisoned, and"

	para "one holding a"
	line "Flame Orb will"
	cont "be burned."

	para "But the Ability"
	line "Guts makes this"

	para "an advantage by"
	line "boosting Attack!"
	done
