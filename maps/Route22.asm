Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText

	def_object_events
	object_event  18,  4, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Snorlax, EVENT_ROUTE_22_SNORLAX

	object_const_def

Route22Snorlax:
	opentext
	jumpopenedtext .AsleepText

.AsleepText:
	text "Snorlax is asleep."
	
	para "But something is"
	line "unusual about it."
	done

VictoryRoadEntranceSignText:
	text "Route 22"

	para "#mon League"
	line "Reception Gate"
	done
