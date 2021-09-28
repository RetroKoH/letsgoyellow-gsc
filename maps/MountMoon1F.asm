MountMoon1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 11, 23, ROUTE_3, 1
	warp_event 22, 12, MOUNT_MOON_B1F, 1
	warp_event 11,  9, MOUNT_MOON_B1F, 2
	warp_event  4,  4, MOUNT_MOON_B1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 17, SIGNPOST_ITEM + RARE_CANDY, EVENT_MOUNT_MOON_1F_HIDDEN_RARE_CANDY
	bg_event 12, 16, SIGNPOST_ITEM + FULL_RESTORE, EVENT_MOUNT_MOON_1F_HIDDEN_FULL_RESTORE

	db 3 ; object events
	itemball_event  3,  2, REVIVE, 1, EVENT_MOUNT_MOON_1F_REVIVE
	itemball_event  2, 20, X_ACCURACY, 1, EVENT_MOUNT_MOON_1F_X_ACCURACY
	itemball_event 16, 22, CALCIUM, 1, EVENT_MOUNT_MOON_1F_CALCIUM



MountMoon1FSilverMovementBefore:
	step_down
	step_down
	step_down
	step_down
	turn_head_right
	step_end

MountMoon1FPlayerMovement:
	slow_step_up
	turn_head_down
	step_end

MountMoon1FSilverMovementAfter:
	step_right
	turn_head_down
	step_end

MountMoonSilverTextBefore:
	text "…… …… ……"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#mon…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

MountMoonSilverTextWin:
	text "…… …… ……"

	para "I thought I raised"
	line "my #mon to be"

	para "the best they"
	line "could be…"

	para "…But it still"
	line "wasn't enough…"
	done

MountMoonSilverTextAfter:
	text "…… …… ……"

	para "…You won, fair"
	line "and square."

	para "I admit it. But"
	line "this isn't the"
	cont "end."

	para "After some more"
	line "training in"
	cont "Dragon's Den…"

	para "I'm going to be"
	line "the greatest #-"
	cont "mon trainer ever."

	para "Because these guys"
	line "are behind me."

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "how good I am by"
	line "beating you."
	done

MountMoonSilverTextLoss:
	text "…… …… ……"

	para "I've repaid my"
	line "debt to you."

	para "With my #mon,"
	line "I'm going to beat"

	para "the Champion and"
	line "become the world's"
	cont "greatest trainer."
	done

BugManiacKentaSeenText:
	text "I saw a red-haired"
	line "boy training here."

	para "Have you battled"
	line "him?"
	done

BugManiacKentaBeatenText:
	text "You got me!"
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

