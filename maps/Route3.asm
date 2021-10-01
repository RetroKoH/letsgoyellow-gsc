Route3_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 8 ; bg events
	bg_event 59,  9, SIGNPOST_JUMPTEXT, Route3SignText
	bg_event 11, 17, SIGNPOST_ITEM + MOON_STONE, EVENT_ROUTE_3_HIDDEN_MOON_STONE
	bg_event  8, 15, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event  8, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 15, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 16, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 17, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText
	bg_event 18, 17, SIGNPOST_JUMPTEXT, Route3MeteoriteText

	db 10 ; object events
	object_event 57, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route3Text1, -1
	object_event  8,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherColton, -1
	object_event 12,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterBen, -1
	object_event 14,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerLassJanice, -1
	object_event 17,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherGreg, -1
	object_event 21,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerLassSally, -1
	object_event 20,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterCalvin, -1
	object_event 22,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherJames, -1
	object_event 33, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerLassRobin, -1
	itemball_event 36, 14, BIG_ROOT, 1, EVENT_ROUTE_3_BIG_ROOT

GenericTrainerBugCatcherColton:
	generictrainer BUG_CATCHER, COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, .seen, .beaten

	text "I should look for"
	line "#mon outside"
	cont "of forests."
	done

.seen:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

.beaten:
	text "Whew! Even that"
	line "battle was short!"
	done

GenericTrainerYoungsterBen:
	generictrainer YOUNGSTER, BEN, EVENT_BEAT_YOUNGSTER_BEN, .seen, .beaten

	text "Until recently, I"
	line "never ran into any"
	cont "Zigzagoons around"
	cont "Kanto…"
	done

.seen:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

.beaten:
	text "Whew! Even that"
	line "battle was short!"
	done

GenericTrainerLassJanice:
	generictrainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, .seen, .beaten

	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

.seen:
	text "You looked at me,"
	line "didn't you?"
	done

.beaten:
	text "You're mean!"
	done

GenericTrainerBugCatcherGreg:
	generictrainer BUG_CATCHER, GREG, EVENT_BEAT_BUG_CATCHER_GREG, .seen, .beaten

	text "If a #mon Box"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another Box!"
	done

.seen:
	text "Are you a trainer?"
	line "Let's fight!"
	done

.beaten:
	text "If I had new"
	line "#mon, I would"
	cont "have won!"
	done

GenericTrainerLassSally:
	generictrainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, .seen, .beaten

	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

.seen:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

.beaten:
	text "Be nice!"
	done

GenericTrainerYoungsterCalvin:
	generictrainer YOUNGSTER, CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, .seen, .beaten

	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

.seen:
	text "Hey! You're not"
	line "wearing shorts!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerBugCatcherJames:
	generictrainer BUG_CATCHER, JAMES, EVENT_BEAT_BUG_CATCHER_JAMES, .seen, .beaten

	text "Trained #mon"
	line "are stronger than"
	cont "the wild ones!"
	done

.seen:
	text "You can fight my"
	line "new #mon!"
	done

.beaten:
	text "Done like dinner!"
	done

GenericTrainerLassRobin:
	generictrainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, .seen, .beaten

	text "Route 4 is at the"
	line "foot of Mt. Moon."
	done

.seen:
	text "Eek! Did you"
	line "touch me?"
	done

.beaten:
	text "That's it?"
	done

Route3MeteoriteText:
	text "Never seen a stone"
	line "like this before!"

	para "Could it be…"
	line "a meteorite from"
	cont "space?"
	done

Route3Text1:
	text "Whew… I better"
	line "take a rest…"
	cont "Groan…"

	para "That tunnel from"
	line "CERULEAN takes a"
	cont "lot out of you!"
	done

Route3SignText:
	text "Route 3"
	line "Pewter City -"
	cont "Mt. Moon"
	done
