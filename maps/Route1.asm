Route1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10,  1, ROUTE_1_VIRIDIAN_GATE, 3

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_JUMPTEXT, Route1SignText

	def_object_events
	object_event 12, 2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterRonny, -1
	fruittree_event  5,  7, FRUITTREE_ROUTE_1, ORAN_BERRY, PAL_NPC_BLUE

GenericTrainerYoungsterRonny:
	generictrainer YOUNGSTER, RONNY, EVENT_BEAT_YOUNGSTER_RONNY, .SeenText, .BeatenText

	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done

.SeenText:
	text "Wow! You've got a"
	line "cool #mon!"
	
	para "I'll show you my"
	line "favorite #mon!"
	done

.BeatenText:
	text "You're way too"
	line "strong!"
	done

Route1SignText:
	text "Route 1"

	para "Pallet Town -"
	line "Viridian City"
	done
