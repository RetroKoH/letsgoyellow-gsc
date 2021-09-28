SafariZoneNorth_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 41, 32, SAFARI_ZONE_EAST, 3
	warp_event 41, 33, SAFARI_ZONE_EAST, 4
	warp_event 10, 37, SAFARI_ZONE_WEST, 3
	warp_event 11, 37, SAFARI_ZONE_WEST, 4
	warp_event 22, 37, SAFARI_ZONE_HUB, 7
	warp_event 23, 37, SAFARI_ZONE_HUB, 8
	warp_event 37,  5, SAFARI_ZONE_NORTH_REST_HOUSE, 1
	warp_event  4, 37, SAFARI_ZONE_WEST, 1
	warp_event  5, 37, SAFARI_ZONE_WEST, 2

	db 0 ; coord events

	db 6 ; bg events
	bg_event 15, 33, SIGNPOST_JUMPTEXT, SafariZoneNorthAreaSignText
	bg_event 38,  6, SIGNPOST_JUMPTEXT, SafariZoneNorthRestHouseSignText
	bg_event 28, 30, SIGNPOST_JUMPTEXT, SafariZoneNorthTrainerTips1SignText
	bg_event 20, 34, SIGNPOST_JUMPTEXT, SafariZoneNorthTrainerTips2SignText
	bg_event  5, 27, SIGNPOST_JUMPTEXT, SafariZoneNorthTrainerTips3SignText
	bg_event 31, 19, SIGNPOST_ITEM + LUCKY_PUNCH, EVENT_SAFARI_ZONE_NORTH_HIDDEN_LUCKY_PUNCH

	db 6 ; object events
	object_event 15, 14, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SafariZoneNorthCooltrainerFScript, -1
	itemball_event 24, 18, EVIOLITE, 1, EVENT_SAFARI_ZONE_NORTH_EVIOLITE
	itemball_event 21,  9, PROTEIN, 1, EVENT_SAFARI_ZONE_NORTH_PROTEIN

SafariZoneNorthCooltrainerFScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
	iftrue SafariZoneNorthTutorDoubleEdgeScript
	writetext SafariZoneNorthCooltrainerFText
	waitbutton
	setevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
SafariZoneNorthTutorDoubleEdgeScript:
	writetext Text_SafariZoneNorthTutorDoubleEdge
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_SafariZoneNorthTutorQuestion
	yesorno
	iffalse .TutorRefused
	writebyte DOUBLE_EDGE
	writetext Text_SafariZoneNorthTutorClear
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_SafariZoneNorthTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_SafariZoneNorthTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_SafariZoneNorthTutorTaught

SafariZoneNorthCooltrainerFText:
	text "I caught a"
	line "Chansey!"

	para "I'm so lucky!"
	line "I'm going to teach"

	para "it to do a really"
	line "powerful tackle."

	para "Let me share my"
	line "luck with you!"
	done

Text_SafariZoneNorthTutorDoubleEdge:
	text "I'll teach your"
	line "#mon how to"

	para "use Double-Edge"
	line "for a Silver Leaf."
	done

Text_SafariZoneNorthTutorNoSilverLeaf:
	text "You don't have any"
	line "Silver Leaves…"
	done

Text_SafariZoneNorthTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Double-Edge?"
	done

Text_SafariZoneNorthTutorRefused:
	text "Oh well."
	done

Text_SafariZoneNorthTutorClear:
	text ""
	done

Text_SafariZoneNorthTutorTaught:
	text "There!"
	line "Now your #mon"

	para "knows how to use"
	cont "Double-Edge!"
	done

SafariZoneNorthAreaSignText:
	text "Safari Zone"
	line "North Area"
	done

SafariZoneNorthRestHouseSignText:
	text "Rest House"
	done

SafariZoneNorthTrainerTips1SignText:
	text "Trainer Tips"

	para "Moves of the same"
	line "type can be"
	cont "physical, special,"
	cont "or status-based."
	done

SafariZoneNorthTrainerTips2SignText:
	text "Trainer Tips"

	para "#mon hide in"
	line "tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done

SafariZoneNorthTrainerTips3SignText:
	text "Trainer Tips"

	para "The rest of the"
	line "sign has been"
	cont "torn away…"
	done
