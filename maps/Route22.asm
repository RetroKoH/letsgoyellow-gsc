Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText

	def_object_events
	object_event 20,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route22CooltrainerfText, -1

	object_const_def

Route22CooltrainerfText:
	text "The name “Kanto”"
	line "means “east of the"
	cont "barrier.”"

	para "I suppose the"
	line "barrier must be"
	cont "Mt.Silver."
	done

VictoryRoadEntranceSignText:
	text "Route 22"

	para "#mon League"
	line "Reception Gate"
	done
