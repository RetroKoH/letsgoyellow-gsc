MountMoon1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 15, 33, ROUTE_4, 2
	warp_event 27, 13, MOUNT_MOON_B1F, 1
	warp_event 19,  9, MOUNT_MOON_B1F, 2
	warp_event  4,  4, MOUNT_MOON_B1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 23, SIGNPOST_ITEM + RARE_CANDY, EVENT_MOUNT_MOON_1F_HIDDEN_RARE_CANDY
	bg_event  4, 14, SIGNPOST_ITEM + FULL_RESTORE, EVENT_MOUNT_MOON_1F_HIDDEN_FULL_RESTORE

	db 10 ; object events
	object_event  5,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerHikerMarcos, -1
	object_event 12, 14, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterJosh, -1
	object_event 32,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerLassMiriam, -1
	object_event 26, 29, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerSuperNerdJovan, -1
	object_event 16, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerLassIris, -1
	object_event 7, 22, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherKent, -1
	object_event 32, 25, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherRob, -1
	itemball_event  3,  2, REVIVE, 1, EVENT_MOUNT_MOON_1F_REVIVE
	itemball_event  2, 26, X_ACCURACY, 1, EVENT_MOUNT_MOON_1F_X_ACCURACY
	itemball_event 13, 14, CALCIUM, 1, EVENT_MOUNT_MOON_1F_CALCIUM

GenericTrainerHikerMarcos:
	generictrainer HIKER, MARCOS, EVENT_BEAT_HIKER_MARCOS, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerYoungsterJosh:
	generictrainer YOUNGSTER, JOSH, EVENT_BEAT_YOUNGSTER_JOSH, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerLassMiriam:
	generictrainer LASS, MIRIAM, EVENT_BEAT_LASS_MIRIAM, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerSuperNerdJovan:
	generictrainer SUPER_NERD, JOVAN, EVENT_BEAT_SUPER_NERD_JOVAN, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerLassIris:
	generictrainer LASS, IRIS, EVENT_BEAT_LASS_IRIS, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerBugCatcherKent:
	generictrainer BUG_CATCHER, KENT, EVENT_BEAT_BUG_CATCHER_KENT, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done

GenericTrainerBugCatcherRob:
	generictrainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, .seen, .beaten

	text "Oh no."
	done

.seen:
	text "Hi!"
	done

.beaten:
	text "Lost! Lost! Lost!"
	done
