MountMoon1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11, 23, ROUTE_3, 1
	warp_event 22, 12, MOUNT_MOON_B1F, 1
	warp_event 11,  9, MOUNT_MOON_B1F, 2
	warp_event  4,  4, MOUNT_MOON_B1F, 3

	def_coord_events

	def_bg_events
	bg_event  2, 17, BGEVENT_ITEM + RARE_CANDY, EVENT_MOUNT_MOON_1F_HIDDEN_RARE_CANDY
	bg_event 12, 16, BGEVENT_ITEM + FULL_RESTORE, EVENT_MOUNT_MOON_1F_HIDDEN_FULL_RESTORE

	def_object_events
	object_event 11, 14, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerLassMiriam, -1
	object_event 20, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSuperNerdJovan, -1
	object_event 27, 14, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugManiacRobby, -1
	object_event 20,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassIris, -1
	object_event  5,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerMarcos, -1
	itemball_event  3,  2, REVIVE, 1, EVENT_MOUNT_MOON_1F_REVIVE
	itemball_event  2, 20, X_ACCURACY, 1, EVENT_MOUNT_MOON_1F_X_ACCURACY
	itemball_event 16, 22, CALCIUM, 1, EVENT_MOUNT_MOON_1F_CALCIUM

GenericTrainerLassMiriam:
	generictrainer LASS, MIRIAM, EVENT_BEAT_LASS_MIRIAM, LassMiriamSeenText, LassMiriamBeatenText

	text "Mt.Moon is big,"
	line "but you'll get"
	cont "used to it soon."
	done

GenericTrainerSuperNerdJovan:
	generictrainer SUPER_NERD, JOVAN, EVENT_BEAT_SUPER_NERD_JOVAN, SuperNerdJovanSeenText, SuperNerdJovanBeatenText

	text "I have yet to find"
	line "stronger #mon."

	para "Where might they"
	line "be?"
	done

GenericTrainerBugManiacRobby:
	generictrainer BUG_MANIAC, ROBBY, EVENT_BEAT_BUG_MANIAC_ROBBY, BugManiacRobbySeenText, BugManiacRobbyBeatenText

	text "I used to only"
	line "catch bug #mon"
	cont "as a hobby,"

	para "but now it's my"
	line "pride and joy."
	done

GenericTrainerLassIris:
	generictrainer LASS, IRIS, EVENT_BEAT_LASS_IRIS, LassIrisSeenText, LassIrisBeatenText

	text "I come here every"
	line "day just to catch"
	cont "a Clefairy, but"

	para "I haven't seen a"
	line "single one…"
	done

GenericTrainerHikerMarcos:
	generictrainer HIKER, MARCOS, EVENT_BEAT_HIKER_MARCOS, HikerMarcosSeenText, HikerMarcosBeatenText

	text "A long time ago,"
	line "I was beaten by a"
	cont "kid just like you."
	done

LassMiriamSeenText:
	text "When I was young-"
	line "er, I always used"

	para "to get lost in"
	line "this place."
	done

LassMiriamBeatenText:
	text "Oh! I lost it!"
	done

SuperNerdJovanSeenText:
	text "What! Don't sneak"
	line "up on me!"
	done

SuperNerdJovanBeatenText:
	text "My #mon"
	line "won't do!"
	done

BugManiacRobbySeenText:
	text "You need to go"
	line "through this cave"

	para "to get to Cerulean"
	line "City."
	done

BugManiacRobbyBeatenText:
	text "I lost…"
	done

LassIrisSeenText:
	text "Have you seen a"
	line "Clefairy?"

	para "They're so cute!"
	done

LassIrisBeatenText:
	text "That was so fast…"
	done

HikerMarcosSeenText:
	text "Kids like you"
	line "shouldn't be"

	para "wandering around"
	line "here in the dark."
	done

HikerMarcosBeatenText:
	text "Woah!"
	line "You're strong!"
	done

