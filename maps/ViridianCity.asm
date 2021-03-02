ViridianCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlyPoint

	db 6 ; warp events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  5, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1
	warp_event 21,  9, VIRIDIAN_SCHOOL_HOUSE, 1

	db 2 ; coord events
	coord_event 19,  9, 0, ViridianCityLyingOldManTrigger
	coord_event 32,  8, 1, ViridianCityGymDoorLockTrigger

	db 5 ; bg events
	bg_event 17, 17, SIGNPOST_JUMPTEXT, ViridianCitySignText
	bg_event 27,  7, SIGNPOST_JUMPTEXT, ViridianGymSignText
	bg_event 19,  1, SIGNPOST_JUMPTEXT, ViridianCityTrainerTips1Text
	bg_event 21, 29, SIGNPOST_JUMPTEXT, ViridianCityTrainerTips2Text
	bg_event 21, 15, SIGNPOST_JUMPTEXT, TrainerHouseSignText

	db 9 ; object events
	object_event 13, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianCityText1, -1
	object_event 29,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ViridianCityGamblerScript, -1
	object_event 30, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ViridianCityCaterpillarNerdScript, -1
	object_event 17,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ViridianCityGirlScript, -1
	object_event 18,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptext, ViridianCityText_GrumpyOldMan, EVENT_GOT_POKEDEX
	object_event  6, 23, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ViridianCitySleepyGuyScript, -1
	object_event 17,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ViridianCityCatchTutorialScript, EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	cuttree_event 14,  4, EVENT_VIRIDIAN_CITY_CUT_TREE_1
	cuttree_event  8, 22, EVENT_VIRIDIAN_CITY_CUT_TREE_2

ViridianCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	return

ViridianCityLyingOldManTrigger:
	showtext ViridianCityText_GrumpyOldMan
	applyonemovement PLAYER, step_down
	end

ViridianCityGymDoorLockTrigger:
	checkcode VAR_BADGES
	ifgreater 6, .AllOtherBadges
	turnobject PLAYER, UP
	showtext ViridianCityText14
	applyonemovement PLAYER, jump_step_down
.AllOtherBadges
	end

ViridianCityCatchTutorialScript:
	faceplayer
	opentext
	writetext ViridianCityText_1920a
	yesorno
	iftrue_jumpopenedtext ViridianCityText_19214
	writetext ViridianCityText_1920f
	waitbutton
	closetext
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext ViridianCityText_19219
	waitbutton
	closetext
	end

ViridianCityGamblerScript:
	faceplayer
	opentext
	checkcode VAR_BADGES
	ifgreater 6, .GymLeaderHasReturned
	thisopenedtext
	text "This #MON Gym"
	line "is always closed."

	para "I wonder who the"
	line "Leader is?"
	done
.GymLeaderHasReturned
	jumpopenedtext ViridianCityText_LeaderHasReturned

ViridianCityGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue_jumpopenedtext ViridianCityText_ShoppingGirlText
	thisopenedtext
	text "Oh Grandpa! Don't"
	line "be so mean!"
	cont "He hasn't had his"
	cont "coffee yet."
	done

ViridianCitySleepyGuyScript:
	faceplayer
	thisopenedtext
	text "Oh…"
	line "So sleepy…"
	cont "Leave me alone."
	cont "…Zzzzz…."
	done

ViridianCityText_ShoppingGirlText:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCityText_GrumpyOldMan:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityText_1920a:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

ViridianCityText_1920f:
	text "I see you're using"
	line "a #dex."

	para "When you catch a"
	line "#mon, #dex"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#mon?"

	para "I'll show you"
	line "how to then."
	done

ViridianCityText_19214:
	text "Time is money…"
	line "Go along then."
	done

ViridianCityText_19219:
	text "First, you need"
	line "to weaken the"
	cont "target #mon."
	done

ViridianCityCaterpillarNerdScript:
	faceplayer
	opentext
	writetext ViridianCityText_BugNerd1
	yesorno
	iftrue_jumpopenedtext ViridianCityText_BugNerd2
	thisopenedtext
ViridianCityText_19152:
	text "Oh, OK then!"
	done

ViridianCityText1:
	text "Those # BALLS"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCitySignText:
	text "VIRIDIAN CITY"

	para "The Eternally"
	line "Green Paradise"
	done

ViridianGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "Leader: …"

	para "The rest of the"
	line "text is illegible…"
	done

ViridianCityTrainerTips1Text:
	text "Trainer Tips"

	para "Catch #mon"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCityTrainerTips2Text:
	text "Trainer Tips"

	para "The world is a"
	line "big place!"

	para "Don't just run or"
	line "Fly everywhere--"
	cont "look around you!"

	para "You'll find new and"
	line "exciting things!"
	done

TrainerHouseSignText:
	text "Trainer House"

	para "The Club for Top"
	line "Trainer Battles"
	done

ViridianCityText_LeaderHasReturned:
	text "Viridian Gym's"
	line "Leader returned!"
	done

ViridianCityText_BugNerd1:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#mon?"
	done

ViridianCityText_BugNerd2:
	text "Caterpie has no"
	line "poison, but"
	cont "Weedle does."

	para "Watch out for its"
	line "Poison Sting!"
	done

ViridianCityText14:
	text "The Gym's doors"
	line "are locked…"
	done