Route11_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 45,  8, ROUTE_11_GATE, 1
	warp_event 45,  9, ROUTE_11_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5,  7, BGEVENT_JUMPTEXT, Route11SignText
	bg_event 44,  5, BGEVENT_ITEM + REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

	def_object_events
	object_event 32, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterOwen, -1
	object_event 30,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterJason, -1
	object_event 21,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterAlfie, -1
	object_event 38,  1, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerEngineerBernie, -1
	object_event 38, 14, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerEngineerCamden, -1
	object_event  9,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGuitaristmRoger, -1
	object_event 10, 16, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitaristfRitsuko, -1
	fruittree_event 44,  2, FRUITTREE_ROUTE_11, GANLON_BERRY, PAL_NPC_PURPLE
	tmhmball_event 44, 13, TM_SLUDGE_BOMB, EVENT_ROUTE_11_TM_VENOSHOCK

GenericTrainerYoungsterOwen:
	generictrainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText

	text "I fought fair and"
	line "square with honor."

	para "I don't regret"
	line "this at all."
	done

YoungsterOwenSeenText:
	text "There's no cheat-"
	line "ing in #mon."

	para "Let's keep it fair"
	line "and square!"
	done

YoungsterOwenBeatenText:
	text "Huh? How did this"
	line "happen?"
	done

GenericTrainerYoungsterJason:
	generictrainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText

	text "I'm going to catch"
	line "more #mon in"
	cont "the grass."
	done

YoungsterJasonSeenText:
	text "It itches and"
	line "tickles a bit when"

	para "I wear shorts in"
	line "the grass."
	done

YoungsterJasonBeatenText:
	text "Aiyaaah!"
	line "I got stomped!"
	done

GenericTrainerYoungsterAlfie:
	generictrainer YOUNGSTER, ALFIE, EVENT_BEAT_YOUNGSTER_ALFIE, .SeenText, .BeatenText

	text "Everything's more"
	line "fun when it's a"
	cont "competition."
	done

.SeenText:
	text "Three, two, one,"
	line "GO!"
	done

.BeatenText:
	text "Game, set, match."
	done

GenericTrainerEngineerBernie:
	generictrainer ENGINEER, BERNIE, EVENT_BEAT_ENGINEER_BERNIE, .SeenText, .BeatenText

	text "Spread the word"
	line "to save energy!"
	done

.SeenText:
	text "Careful!"
	line "I'm laying down"
	cont "some cables!"
	done

.BeatenText:
	text "That was"
	line "electric!"
	done

GenericTrainerEngineerCamden:
	generictrainer ENGINEER, CAMDEN, EVENT_BEAT_ENGINEER_CAMDEN, .SeenText, .BeatenText

	text "Building a bridge"
	line "and building a"
	cont "team of #mon"

	para "both require know-"
	line "ledge and skill."
	done

.SeenText:
	text "I learned engin-"
	line "eering at Celadon"
	cont "University!"
	done

.BeatenText:
	text "Shut down!"
	done

GenericTrainerGuitaristmRoger:
	generictrainer GUITARISTM, ROGER, EVENT_BEAT_GUITARISTM_ROGER, .SeenText, .BeatenText

	text "Don't give in"
	line "without a fight!"
	done

.SeenText:
	text "Strangers passing"
	line "in the street,"

	para "by chance two"
	line "separate glances"
	cont "meet!"
	done

.BeatenText:
	text "Shine on, you"
	line "crazy diamond!"
	done

GenericTrainerGuitaristfRitsuko:
	generictrainer GUITARISTF, RITSUKO, EVENT_BEAT_GUITARISTF_RITSUKO, .SeenText, .BeatenText

	text "♪ Rock'n, rock'n'"
	line "roll radio… ♪"
	done

.SeenText:
	text "Hey ho, let's go!"
	done

.BeatenText:
	text "There's no success"
	line "for me…"
	done

Route11SignText:
	text "Route 11"
	done
