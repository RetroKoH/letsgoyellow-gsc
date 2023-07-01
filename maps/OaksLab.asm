OaksLab_MapScriptHeader:
	def_scene_scripts
	scene_script OaksLabTrigger0
	scene_script OaksLabTrigger1
	scene_script OaksLabTrigger2
	scene_script OaksLabTrigger3
	scene_script OaksLabTrigger4

	def_callbacks

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  0,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  1,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  2,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  3,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  6,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  4,  0, BGEVENT_JUMPTEXT, OaksLabSign1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OaksLabSign2Text
	bg_event  9,  3, BGEVENT_JUMPTEXT, OaksLabTrashcanText
	bg_event  0,  1, BGEVENT_JUMPTEXT, OaksLabPCText

	def_object_events
	object_event  4,  3, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabBlueScript, EVENT_HIDE_OAKSLAB_TRACE
	object_event  7,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SpecialPokeballScript, -1
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabOakScript, EVENT_HIDE_OAKSLAB_OAK
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX_FROM_OAK
	object_event  3,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX_FROM_OAK
	object_event  1,  9, SPRITE_AROMA_LADY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabGirlText, -1
	object_event  8,  10, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabAideText, -1

	object_const_def
	const OAKSLAB_TRACE
	const OAKSLAB_POKEBALL
	const OAKSLAB_OAK
	const OAKSLAB_POKEDEX_1
	const OAKSLAB_POKEDEX_2
	const OAKSLAB_GIRL
	const OAKSLAB_AIDE

OaksLabTrigger0:
OaksLabTrigger2:
OaksLabTrigger3:
OaksLabTrigger4:
	end
OaksLabTrigger1:
	sdefer OaksLab_AutowalkUpToOak

OaksLab_AutowalkUpToOak:
	applymovement PLAYER, Movement_WalkUpToProfOak
	opentext
	writetext OaksLabArrivalText
	pause 15
	writetext OaksLabTraceArrivesText
	promptbutton
	closetext
	moveobject OAKSLAB_TRACE, 4, 7
	appear OAKSLAB_TRACE
	applymovement OAKSLAB_TRACE, Movement_TraceRunsIn
	opentext
	writetext OaksLabTraceSorryText
	promptbutton
	writetext OaksLabIntroducePokedexText
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .OakWalk2
	applymovement OAKSLAB_OAK, Movement_OakWalksToTable
	disappear OAKSLAB_POKEDEX_1
	disappear OAKSLAB_POKEDEX_2
	pause 15
	applymovement OAKSLAB_OAK, Movement_OakWalksBack
	sjump .continue
.OakWalk2
	applymovement OAKSLAB_OAK, Movement_OakWalksToTable2
	disappear OAKSLAB_POKEDEX_1
	disappear OAKSLAB_POKEDEX_2
	pause 15
	applymovement OAKSLAB_OAK, Movement_OakWalksBack2
	faceplayer
.continue
	opentext
	writetext OaksLabReceivedPokedexText
	playsound SFX_KEY_ITEM
	waitsfx
	promptbutton
	writetext OaksLabRequestText
	verbosegiveitem POKE_BALL, 10
	verbosegiveitem SNAG_BALL, 10
	faceobject OAKSLAB_TRACE, PLAYER
	writetext OaksLabLeaveItToUsText
	promptbutton
	writetext OaksLabReceivedGearText
	playsound SFX_KEY_ITEM
	waitsfx
	promptbutton
	closetext
	applymovement OAKSLAB_TRACE, Movement_TraceRunsOut
	disappear OAKSLAB_TRACE
	setflag ENGINE_POKEDEX
	setflag ENGINE_POKEGEAR
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_TRACE
	addcellnum PHONE_OAK
	setevent EVENT_GOT_POKEDEX_FROM_OAK
	clearevent EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	setmapscene VIRIDIAN_CITY, $1
	setmapscene ROUTE_22, $1
	special RestartMapMusic
	setscene $2
	end

Movement_WalkUpToProfOak:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_TraceRunsIn:
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_TraceRunsOut:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_OakWalksToTable:
	step_left
	step_left
	turn_head_up
	step_end

Movement_OakWalksBack:
	step_right
	step_right
	turn_head_down
	step_end

Movement_OakWalksToTable2:
	step_up
	step_left
	step_end

Movement_OakWalksBack2:
	step_right
	step_down
	step_end

SpecialPokeballScript:
	opentext
	jumpthisopenedtext
	text "It looks like a"
	line "special # Ball."
	done

OaksLabOakScript:
	faceplayer
	opentext
;	checkevent EVENT_CAN_VISIT_BATTLE_TOWER
;	iftrue_jumpopenedtext OaksLabTalkAboutBattleTowerText
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .EnableBattleTower
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .RatePokedex
	checkevent EVENT_BATTLED_OAKSLAB_RIVAL
	iftrue_jumpopenedtext OaksLabMakeItFightText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext OaksLabYourPokemonCanBattleText
	jumpthisopenedtext
;OaksLabWhichPokemonDoYouWantText
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

.RatePokedex
	writetext OaksLabDexCheckText
	special ProfOaksPCBoot
	jumpthisopenedtext
;OaksLabGoodbyeText
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

OaksLabBlueScript:
	faceplayer
	opentext
	jumpthisopenedtext
;HehIDontNeedToBeGreedyText
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

OaksLabYourPokemonCanBattleText:
	text "Oak: If a wild"
	line "#mon appears,"
	cont "your #mon can"
	cont "fight against it!"
	done

OaksLabMakeItFightText:
	text "Oak: <PLAYER>,"
	line "raise your young"
	cont "#mon by making"
	cont "it fight!"
	done

OaksLabRivalChallengeText:
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #mon!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabBlueWinText:
	text "<RIVAL>: WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #mon!"
	done

OaksLabBlueLossText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

OaksLabRivalToughenUpText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#mon fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLabArrivalText:
	text "Right! So, I must"
	line "ask you to do"
	cont "something for me."
	prompt

OaksLabTraceArrivesText:
	text "<RIVAL>: Hey!"
	done

OaksLabTraceSorryText:
	text "<RIVAL>: PHEW!"
	line "Sorry I'm late!"
	done

OaksLabIntroducePokedexText:
	text "Oak: Ah, yes! I"
	line "actually have a"
	cont "request for both"
	cont "of you."

	para "On the desk there"
	line "is my invention,"
	cont "the #dex!"

	para "It automatically"
	line "records data on"
	cont "#mon you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

OaksLabReceivedPokedexText:
	text "Oak: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "the #dex!"
	done

OaksLabReceivedGearText:
	text "<PLAYER> got"
	line "the # Gear!"
	done

OaksLabRequestText:
	text "To make a complete"
	line "guide on all the"
	cont "#mon in the"
	cont "world…"

	para "That was my dream!"
	line "But..."

	para "It's already been"
	line "done! My dream"
	cont "has come true!"

	para "<RIVAL>: So, what"
	line "exactly do we"
	cont "need to do?"

	para "Oak: I need you to"
	line "find the boy who"
	cont "completed it."

	para "His name is Red,"
	line "and he's been"
	cont "missing for quite"
	cont "some time now."

	para "Not long after he"
	line "became Champion,"
	cont "he vanished, and"
	cont "left this behind."

	para "I need you to go"
	line "out and find him."
	cont "Use these as your"
	cont "#mon guide."

	para "Oh, take these"
	line "# Balls too!"
	cont "Use them to catch"
	cont "wild #mon!"
	prompt

OaksLabLeaveItToUsText:
	text "<RIVAL>: I see."
	line "Ok then! Leave it"
	cont "all to us!"

	para "<PLAYER>, We can"
	line "use the #dex"
	cont "to find really"
	cont "strong #mon to"
	cont "help find Red!"

	para "Oh, and I got new"
	line "# Gears for us!"
	cont "They have a Town"
	cont "Map and a Phone."

	para "Take one, you're"
	line "gonna need it!"
	done

OaksLabDexCheckText:
	text "How is your #-"
	line "dex coming?"

	para "Let's see…"
	prompt

OaksLabIntroduceBattleTowerText: ;OaksLabIntroduceJohtoText:
	text "Oak: <PLAYER>!"
	line "Now that you have"
	cont "defeated the Elite"
	cont "Four, I've made"
	cont "arrangements for"
	cont "you to take on a"
	cont "new challenge."

	para "There is a new"
	line "Battle Tower, that"
	cont "just finished"
	cont "construction on an"
	cont "island just east"
	cont "of Route 19."

	para "You can take the"
	line "Seagallop Ferry in"
	cont "Vermilion City to"
	cont "get there."

	para "Good luck on this"
	line "new adventure,"
	cont "<PLAYER>!"
	prompt

OaksLabTalkAboutBattleTowerText: ;OaksLabTalkAboutJohtoText:
	text "The Battle Tower"
	line "lets you test your"
	cont "skills in a series"
	cont "of battles with"
	cont "other skilled"
	cont "trainers."

	para "It should be a"
	line "fun challenge!"
	done

OaksLabSign1Text:
	text "Push Start to"
	line "open the Menu!"
	done

OaksLabSign2Text:
	text "The Save option is"
	line "on the Start Menu!"
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabPCText:
	text "There's an e-mail"
	line "message here!"

	para "…"

	para "Calling all"
	line "#mon trainers!"

	para "The elite trainers"
	line "of #mon League"
	cont "are ready to take"
	cont "all comers!"

	para "Bring your best"
	line "#mon and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#mon League HQ"
	line "Indigo Plateau"

	para "PS: Prof.Oak,"
	line "please visit us!"
	cont "…"
	done

OaksLabPokedexDescriptionText:
	text "It's a small red"
	line "electronic device."
	done

OaksLabGirlText:
	text "Prof. Oak is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLabAideText:
	text "I study #mon as"
	line "Prof. Oak's Aide."
	done
