OaksLab_MapScriptHeader:
	def_scene_scripts				; KoH - Added RBY scripts
	scene_script OaksLabTrigger0	; Before first Oak encounter
	scene_script OaksLabTrigger1	; Enter Lab with Oak (Cutscene)
	scene_script OaksLabTrigger2	; Choosing a starter (activates first two coord_events)
	scene_script OaksLabTrigger3	; Oak gives Pokedex (Cutscene)
	scene_script OaksLabTrigger4	; After receiving the Dex (activates battle trigger coord_events)
	scene_script OaksLabTrigger5

	def_callbacks

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events				; KoH - Added RBY coordinate events
	coord_event 4, 6, 2, OaksLabTryToLeaveScript	; left side
	coord_event 5, 6, 2, OaksLabTryToLeaveScript		; right side
	coord_event 4, 6, 4, LabBattleBlueScript		; left side
	coord_event 5, 6, 4, LabBattleBlueScript2			; right side

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
	bg_event  4,  0, BGEVENT_JUMPTEXT, OaksLabSign1Text		; KoH - RBY bg event
	bg_event  5,  0, BGEVENT_JUMPTEXT, OaksLabSign2Text		; KoH - RBY bg event
	bg_event  9,  3, BGEVENT_JUMPTEXT, OaksLabTrashcanText	; KoH - RBY bg event
	bg_event  0,  1, BGEVENT_JUMPTEXT, OaksLabPCText		; KoH - RBY bg event

	def_object_events
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabBlueScript, EVENT_HIDE_OAKSLAB_BLUE
	object_event  6,  3, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PikachuPokeballScript, EVENT_HIDE_OAKSLAB_STARTER_1
	object_event  8,  3, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveePokeballScript, EVENT_HIDE_OAKSLAB_STARTER_2
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OaksLabOakScript, EVENT_HIDE_OAKSLAB_OAK
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
	object_event  3,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
	object_event  1,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabGirlText, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksLabAideText, -1

	object_const_def
	const OAKSLAB_BLUE
	const OAKSLAB_STARTER_1
	const OAKSLAB_STARTER_2
	const OAKSLAB_OAK
	const OAKSLAB_POKEDEX_1
	const OAKSLAB_POKEDEX_2
	const OAKSLAB_GIRL
	const OAKSLAB_AIDE

OaksLabTrigger1:
	sdefer OaksLab_AutowalkUpToOak
	end
OaksLabTrigger3:
	sdefer OaksLab_ReceivePokedex		; I'm cutting out the Parcel Quest
OaksLabTrigger0:
OaksLabTrigger2:
OaksLabTrigger4:
OaksLabTrigger5:
	end

; Scene 1
OaksLab_AutowalkUpToOak:
	applymovement PLAYER, Movement_WalkUpToProfOak
	turnobject OAKSLAB_BLUE, UP
	showtext GrampsImFedUpText
	pause 8
	showtext OakChooseMonText
	pause 8
	showtext HeyGrampsWhatAboutMeText
	pause 8
	showtext OakBePatientText
	setscene $2
	end

; Scene 3
OaksLab_ReceivePokedex:
	showtext OaksLabRequestFavor
	checkevent EVENT_PLAYER_CHOSE_PIKACHU
	iftruefwd .Pikachu
; Rival has PIKACHU
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromPikachu
	applymovement PLAYER, Movement_PlayerWalksFromEevee
	sjumpfwd .continueDexScene
.Pikachu:
; Rival has EEVEE
	readvar VAR_FACING
	ifequal RIGHT, .PlayerNoWalk
	applymovement PLAYER, Movement_PlayerWalksFromPikachu
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromEevee
	sjumpfwd .continueDexScene
.PlayerNoWalk:
	applymovement PLAYER, Movement_PlayerLooksUp
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromEevee
.continueDexScene:
	showtext OaksLabIntroducePokedexText
	closetext
	applymovement OAKSLAB_OAK, Movement_OakWalksToTable
	disappear OAKSLAB_POKEDEX_1
	disappear OAKSLAB_POKEDEX_2
	pause 15
	applymovement OAKSLAB_OAK, Movement_OakWalksBack
	opentext
	writetext OaksLabReceivedPokedexText
	playsound SFX_KEY_ITEM
	waitsfx
	promptbutton
	writetext OaksLabDreamText
	verbosegiveitem MASTER_BALL, 255
	faceobject OAKSLAB_BLUE, PLAYER
	writetext OaksLabLeaveItToMeText
	closetext
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_POKEDEX_FROM_OAK
;	clearevent EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
;	setmapscene VIRIDIAN_CITY, $1
;	setmapscene ROUTE_22, $1
	setscene $4
	end

; During initial Lab Entrance
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

; Rival walks to pick the remaining starter
Movement_BluePicksPikachu:
	step_down
	step_down
	step_right
	step_right
	step_up
	step_end

Movement_BluePicksEevee:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

; Repurposed this data for the Pokedex scene
Movement_BlueWalksFromEevee:
	step_left
Movement_PlayerWalksFromEevee:
	step_left
Movement_BlueWalksFromPikachu:
	step_left
Movement_PlayerWalksFromPikachu:
	step_left
	step_up
	step_end

; Approaching for battle after getting the Dex
Movement_BlueWalksToRightSide:
	step_right
Movement_BlueWalksToLeftSide:
	step_down
	step_down
	step_end

Movement_BlueLeavesBattle1:
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_BlueLeavesBattle2:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_BlueRunsIn:
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_BlueRunsOut:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_OakWalksToTable:
	step_left
	step_left
Movement_PlayerLooksUp:
	turn_head_up
	step_end

Movement_OakWalksBack:
	step_right
	step_right
	turn_head_down
	step_end

OaksLabTryToLeaveScript:
	turnobject OAKSLAB_OAK, DOWN
	showtext OakDontGoAwayText
	applyonemovement PLAYER, step_up
	end

; Left side battle trigger
LabBattleBlueScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject OAKSLAB_BLUE, DOWN
	turnobject PLAYER, UP
	pause 8
	showtext OaksLabRivalChallengeText
	winlosstext OaksLabBlueWinText, OaksLabBlueLossText
	setlasttalked OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, Movement_BlueWalksToLeftSide

	checkevent EVENT_PLAYER_CHOSE_PIKACHU
	iftruefwd .Pikachu
	loadtrainer RIVAL0, RIVAL0_1	; Rival has PIKACHU
	sjumpfwd .continueBattle
.Pikachu
	loadtrainer RIVAL0, RIVAL0_2	; Rival has EEVEE
.continueBattle:
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_RIVAL_AFTER
	showtext OaksLabRivalToughenUpText
	applymovement OAKSLAB_BLUE, Movement_BlueLeavesBattle1
	disappear OAKSLAB_BLUE
	special HealParty
	setevent EVENT_BATTLED_OAKSLAB_RIVAL
	setscene $5
	playmapmusic
	end

; Right side battle trigger
LabBattleBlueScript2:
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject OAKSLAB_BLUE, DOWN
	turnobject PLAYER, UP
	pause 8
	showtext OaksLabRivalChallengeText
	winlosstext OaksLabBlueWinText, OaksLabBlueLossText
	setlasttalked OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, Movement_BlueWalksToRightSide

	checkevent EVENT_PLAYER_CHOSE_PIKACHU
	iftruefwd .Pikachu
	loadtrainer RIVAL0, RIVAL0_1	; Rival has PIKACHU
	sjumpfwd .continueBattle
.Pikachu
	loadtrainer RIVAL0, RIVAL0_2	; Rival has EEVEE
.continueBattle:
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_RIVAL_AFTER
	showtext OaksLabRivalToughenUpText
	applymovement OAKSLAB_BLUE, Movement_BlueLeavesBattle2
	disappear OAKSLAB_BLUE
	special HealParty
	setevent EVENT_BATTLED_OAKSLAB_RIVAL
	setscene $5
	playmapmusic
	end

PikachuPokeballScript:
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumptext OaksLabPokeballDescriptionText
	turnobject OAKSLAB_OAK, DOWN
	reanchormap
	pokepic PIKACHU
	cry PIKACHU
	waitbutton
	closepokepic
	opentext
	writetext OaksLabPikachuText
	yesorno
	iffalse_jumpopenedtext OaksLabDidntChooseStarterText
	disappear OAKSLAB_STARTER_1
	setevent EVENT_PLAYER_CHOSE_PIKACHU
	setevent EVENT_GOT_STARTER
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname PIKACHU, STRING_BUFFER_3
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PIKACHU, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	applymovement OAKSLAB_BLUE, Movement_BluePicksEevee
	opentext
	writetext OaksLabBlueChoosesStarterText
	pause 15
	disappear OAKSLAB_STARTER_2
	opentext
	getmonname EEVEE, STRING_BUFFER_3
	writetext OaksLabBlueReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	setscene $3
	end

EeveePokeballScript:
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumptext OaksLabPokeballDescriptionText
	turnobject OAKSLAB_OAK, DOWN
	reanchormap
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	opentext
	writetext OaksLabEeveeText
	yesorno
	iffalse_jumpopenedtext OaksLabDidntChooseStarterText
	disappear OAKSLAB_STARTER_2
	setevent EVENT_PLAYER_CHOSE_EEVEE
	setevent EVENT_GOT_STARTER
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname EEVEE, STRING_BUFFER_3
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke EEVEE, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	applymovement OAKSLAB_BLUE, Movement_BluePicksPikachu
	opentext
	writetext OaksLabBlueChoosesStarterText
	pause 15
	disappear OAKSLAB_STARTER_1
	opentext
	getmonname PIKACHU, STRING_BUFFER_3
	writetext OaksLabBlueReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	setscene $3
	end

OaksLabOakScript:
	faceplayer
	opentext
;	checkevent EVENT_CAN_VISIT_BATTLE_TOWER
;	iftrue_jumpopenedtext OaksLabTalkAboutBattleTowerText
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftruefwd .EnableBattleTower
	checkevent EVENT_GOT_POKEDEX
	iftruefwd .RatePokedex
	checkevent EVENT_BATTLED_OAKSLAB_RIVAL
	iftrue_jumpopenedtext OaksLabMakeItFightText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext OaksLabYourPokemonCanBattleText
	jumpthisopenedtext
;OaksLabWhichPokemonDoYouWantText
	text "OAK: Now, <PLAYER>,"
	line "which #mon do"
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
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumpopenedtext GrampsIsntAroundText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext MyPokemonLooksStrongerText
	jumpthisopenedtext
;GoAheadAndChooseText:
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

GrampsIsntAroundText:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"

	para "I ran here 'cos"
	line "he said he had a"
	cont "#mon for me."
	done

MyPokemonLooksStrongerText:
	text "<RIVAL>: My"
	line "#mon looks a"
	cont "lot stronger."
	done

GrampsImFedUpText:
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OakChooseMonText:
	text "Oak: <RIVAL>?"
	line "Let me think…"

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 2"
	line "#mon here!"

	para "Haha!"

	para "They are inside"
	line "the # Balls."

	para "When I was young,"
	line "I was a serious"
	cont "#mon trainer!"

	para "In my old age, I"
	line "have only 2 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

HeyGrampsWhatAboutMeText:
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OakBePatientText:
	text "Oak: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OakDontGoAwayText:
	text "Oak: Hey! Don't go"
	line "away yet!"
	done

OaksLabPokeballDescriptionText:
	text "It contains a"
	line "#mon caught by"
	cont "Prof. Oak!"
	done

OaksLabDidntChooseStarterText:
	text "Oak: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

OaksLabPikachuText:
	text "So, You would like"
	line "PIKACHU?"
	done

OaksLabEeveeText:
	text "So, You would like"
	line "EEVEE?"
	done

OaksLabMonEnergeticText:
	text "This #mon is"
	line "really energetic!"
	done

OaksLabReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OaksLabBlueChoosesStarterText:
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLabBlueReceivedStarterText:
	text "<RIVAL> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
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

OaksLabMeetAgain:
	text "Oak: Oh, <PLAYER>!"

	para "How is my old"
	line "#mon?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#mon trainer!"
; Transition to the first Dex rating
	done

OaksLabRequestFavor:
	text "Oak: By the way,"
	line "I have a request"
	cont "of you two."
	
	para "Come on over!"
	prompt

OaksLabIntroducePokedexText:
	text "On the desk there"
	line "is my invention,"
	cont "#dex!"

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
	line "#dex from Oak!"
	done

OaksLabDreamText:
	text "To make a complete"
	line "guide on all the"
	cont "#mon in the"
	cont "world…"

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#mon history!"

	para "But you can't get"
	line "detailed data on"
	cont "#mon by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#mon."
	prompt

OaksLabLeaveItToMeText:
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I'll find and catch"
	line "every #mon"
	cont "before you do!"

	para "I'll even win the"
	line "#mon League"
	cont "Championship!"
	prompt

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
	cont "#mon!"

	para "Many #mon"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLabAideText:
	text "I study #mon as"
	line "Prof. Oak's Aide."
	done
