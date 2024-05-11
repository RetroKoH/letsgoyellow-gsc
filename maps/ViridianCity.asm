ViridianCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlyPoint

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  5, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 31, 15, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1
	warp_event 21,  9, VIRIDIAN_SCHOOL_HOUSE, 1

	def_coord_events
	coord_event 19,  9, 0, ViridianCityLyingOldManTrigger
	coord_event 32,  8, 1, ViridianCityGymDoorLockTrigger

	def_bg_events
	bg_event 17, 17, BGEVENT_JUMPTEXT, ViridianCitySignText
	bg_event 27,  7, BGEVENT_JUMPTEXT, ViridianGymSignText
	bg_event 19,  1, BGEVENT_JUMPTEXT, ViridianCityTrainerTips1Text
	bg_event 21, 29, BGEVENT_JUMPTEXT, ViridianCityTrainerTips2Text
	bg_event 21, 15, BGEVENT_JUMPTEXT, TrainerHouseSignText

	def_object_events
	object_event 18,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptext, ViridianCityText_GrumpyOldMan, EVENT_GOT_POKEDEX_FROM_OAK
	object_event 17,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ViridianCityCatchTutorialScript, EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	object_event 17,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityGirlScript, -1
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, EVENT_VIRIDIAN_GYM_BLUE
	object_event 17, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianCityYoungsterText, -1
	object_event 31, 23, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianCityYoungster2Text, -1
	cuttree_event 14,  4, EVENT_VIRIDIAN_CITY_CUT_TREE_1
	cuttree_event  8, 22, EVENT_VIRIDIAN_CITY_CUT_TREE_2

ViridianCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCityLyingOldManTrigger:
	showtext ViridianCityText_GrumpyOldMan
	applyonemovement PLAYER, step_down
	end

ViridianCityGymDoorLockTrigger:
	readvar VAR_BADGES
	ifgreater 6, .AllOtherBadges
	turnobject PLAYER, UP
	showtext ViridianCityText14
	applyonemovement PLAYER, jump_step_down
.AllOtherBadges
	end

ViridianCityCatchTutorialScript:
	faceplayer
	opentext
	checkevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	iftrue_jumpopenedtext ViridianCityText_NoTutorial
	writetext ViridianCityText_OldManFeelsGreat
	yesorno
	iffalse .StartTutorial
	writetext ViridianCityText_TimeIsMoney
	waitbutton
	closetext
	end

.StartTutorial
	readvar VAR_DEXCAUGHT
	ifgreater 1, .skipTutorial
	writetext ViridianCityText_GoToTutorial
	waitbutton
	closetext
	readvar VAR_TUTORIALMON
	ifequal TUTORIAL_CATERPIE, .catchCaterpie
	ifequal TUTORIAL_WEEDLE, .catchWeedle
	ifequal TUTORIAL_PIDGEY, .catchPidgey

	loadwildmon RATTATA, 5
	catchtutorial BATTLETYPE_TUTORIAL
	special RestoreMusic
	opentext
	writetext ViridianCityText_PostTutorial
	promptbutton
	waitsfx
	givepoke RATTATA, 5
	closetext
	setevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	end

.catchCaterpie
	loadwildmon CATERPIE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	special RestoreMusic
	opentext
	writetext ViridianCityText_PostTutorial
	promptbutton
	waitsfx
	givepoke CATERPIE, 5
	closetext
	setevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	end

.catchWeedle
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	special RestoreMusic
	opentext
	writetext ViridianCityText_PostTutorial
	promptbutton
	waitsfx
	givepoke WEEDLE, 5
	closetext
	setevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	end

.catchPidgey
	loadwildmon PIDGEY, 5
	catchtutorial BATTLETYPE_TUTORIAL
	special RestoreMusic
	opentext
	writetext ViridianCityText_PostTutorial
	promptbutton
	waitsfx
	givepoke PIDGEY, 5
	closetext
	setevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	end

.skipTutorial
	setevent EVENT_VIRIDIAN_OLD_MAN_CATCH
	jumpthisopenedtext

	text "I see you're using"
	line "a #dex."

	para "When you catch a"
	line "#mon, #dex"
	cont "is automatically"
	cont "updated."

	para "It looks like you"
	line "already know how"
	cont "to catch your"
	cont "own #mon."

	para "Best of luck to"
	line "you, kiddo!"
	done


ViridianCityGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue_jumpopenedtext ViridianCityText_ShoppingGirlText
	jumpthisopenedtext
	text "Oh Grandpa! Don't"
	line "be so mean!"
	cont "He hasn't had his"
	cont "coffee yet."
	done

ViridianCityGrampsNearGym:
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue_jumptextfaceplayer ViridianCityGrampsNearGymBlueReturnedText
	jumptextfaceplayer ViridianCityGrampsNearGymText

ViridianCityText_ShoppingGirlText:
	text "When I go shop in"
	line "Pewter City, I"
	cont "have to take the"
	cont "winding trail in"
	cont "Viridian Forest."
	done

ViridianCityText_GrumpyOldMan:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityText_OldManFeelsGreat:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

ViridianCityText_GoToTutorial:
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

ViridianCityText_NoTutorial:
	text "Run along, kiddo."
	line "Life's too short"
	cont "to loiter around!"
	done

ViridianCityText_TimeIsMoney:
	text "Time is money…"
	line "Go along then."
	done

ViridianCityText_PostTutorial:
	text "Keep in mind that"
	line "you should weaken"
	cont "the wild #mon"
	cont "first."

	para "Thank you for"
	line "listening to me."
	cont "How can I repay"
	cont "you for your time?"

	para "How about I give"
	line "you the #mon I"
	cont "just caught. No"
	cont "strings attached!"
	done

ViridianCityGrampsNearGymText:
	text "This Gym didn't"
	line "have a Leader"
	cont "until recently."

	para "A young man from"
	line "Pallet became the"

	para "Leader, but he's"
	line "often away."
	done

ViridianCityGrampsNearGymBlueReturnedText:
	text "Are you going to"
	line "battle the Leader?"

	para "Good luck to you."
	line "You'll need it."
	done

ViridianCityYoungsterText:
	text "I heard that there"
	line "are many items on"

	para "the ground in"
	line "Viridian Forest."
	done

ViridianCityYoungster2Text:
	text "The leader of Team"
	line "Rocket was the Gym"

	para "Leader here for a"
	line "time, but one day"

	para "three years ago"
	line "he vanished."

	para "He wasn't usually"
	line "at the Gym anyway…"
	done

ViridianCitySignText:
	text "Viridian City"

	para "The Eternally"
	line "Green Paradise"
	done

ViridianGymSignText:
	text "Viridian City"
	line "#mon Gym"
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

ViridianCityText14:
	text "The Gym's doors"
	line "are locked…"
	done

TrainerHouseSignText:
	text "Trainer House"

	para "The Club for Top"
	line "Trainer Battles"
	done
