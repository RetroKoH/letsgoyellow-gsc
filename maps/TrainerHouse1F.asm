TrainerHouse1F_MapScriptHeader:
	def_scene_scripts
	scene_script TrainerHouseTrigger0
	scene_script TrainerHouseTrigger1
	scene_script TrainerHouseTrigger2

	def_callbacks

	def_warp_events
	warp_event  4, 11, VIRIDIAN_CITY, 3
	warp_event  5, 11, VIRIDIAN_CITY, 3
;	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	def_coord_events
	coord_event  0,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  1,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  3,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  4,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  5,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  6,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  7,  5, 1, TrainerHouseTryToLeaveScript
	coord_event  9,  5, 1, TrainerHouseTryToLeaveScript

	def_bg_events

	def_object_events
	object_event  6,  1, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouseBlueScript, EVENT_HIDE_STARTHOUSE_BLUE
	object_event  5,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouseTraceScript, EVENT_HIDE_STARTHOUSE_TRACE
	object_event  4,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PikaBallScript, EVENT_HIDE_STARTHOUSE_STARTER_PIKA
	object_event  5,  1, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeBallScript, EVENT_HIDE_STARTHOUSE_STARTER_EEVEE

	object_const_def
	const STARTHOUSE_BLUE
	const STARTHOUSE_TRACE
	const STARTHOUSE_STARTER_PIKA
	const STARTHOUSE_STARTER_EEVEE

TrainerHouseTrigger0:
	sdefer .StartGameEvent
	end

.StartGameEvent
	showemote EMOTE_SHOCK, STARTHOUSE_BLUE, 15
	turnobject PLAYER, UP
	opentext
	writetext Text_BlueScoldsPlayer
	waitbutton
	closetext
	turnobject STARTHOUSE_TRACE, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_TraceExcited
	waitbutton
	closetext
	showemote EMOTE_SHOCK, STARTHOUSE_BLUE, 15
	turnobject STARTHOUSE_TRACE, UP
	turnobject PLAYER, UP
	opentext
	writetext Text_BlueChoosePokemon
	waitbutton
	closetext
	turnobject STARTHOUSE_TRACE, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_TraceYouPickFirst
	waitbutton
	closetext
	setscene $1
TrainerHouseTrigger1:
	end

TrainerHouseBlueScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext TrainerHouseYourPokemonCanBattleText
	jumpthisopenedtext
	text "Blue: Now, <PLAYER>,"
	line "which #mon do"
	cont "you want?"
	done

TrainerHouseYourPokemonCanBattleText:
	text "Blue: Your new"
	line "partner will"
	cont "help ward off"
	cont "wild #mon!"
	done

TrainerHouseTraceScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext MineLooksStrongerText
	jumpthisopenedtext
; Speaking to Rival when choosing a mon
	text "<RIVAL>: Go ahead"
	line "and choose first,"
	cont "<PLAYER>!"
	done

MineLooksStrongerText:
	text "<RIVAL>: My"
	line "#mon looks a"
	cont "bit stronger."
	done

TrainerHouseTryToLeaveScript:
	turnobject STARTHOUSE_BLUE, DOWN
	showtext BlueDontGoAwayText
	applyonemovement PLAYER, step_up
	end

BlueDontGoAwayText:
	text "Blue: Hey! Don't go"
	line "away just yet!"
	done

PikaBallScript:
	turnobject STARTHOUSE_BLUE, LEFT
	refreshscreen
	pokepic PIKACHU
	cry PIKACHU
	waitbutton
	closepokepic
	opentext
	getmonname PIKACHU, STRING_BUFFER_3
	writetext TrainerHouseStarterText
	yesorno
	iffalse_jumpopenedtext BlueDidntChooseStarterText
	disappear STARTHOUSE_STARTER_PIKA
	setevent EVENT_PLAYER_CHOSE_PIKACHU
	setevent EVENT_GOT_STARTER
	writetext TrainerHouseBlueConfirm
	promptbutton
	waitsfx
	givepoke PIKACHU, PARTNER, 5
	closetext
	applymovement STARTHOUSE_TRACE, Movement_TracePicksEevee
	opentext
	writetext TrainerHouseTraceTakesStarterText
	pause 15
	disappear STARTHOUSE_STARTER_EEVEE
	opentext
	getmonname EEVEE, STRING_BUFFER_3
	writetext TrainerHouseTraceStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	setscene $2
	end

EeveeBallScript:
	turnobject STARTHOUSE_BLUE, LEFT
	refreshscreen
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	opentext
	getmonname EEVEE, STRING_BUFFER_3
	writetext TrainerHouseStarterText
	yesorno
	iffalse_jumpopenedtext BlueDidntChooseStarterText
	disappear STARTHOUSE_STARTER_EEVEE
	setevent EVENT_PLAYER_CHOSE_EEVEE
	setevent EVENT_GOT_STARTER
	writetext TrainerHouseBlueConfirm
	promptbutton
	waitsfx
	givepoke EEVEE, PARTNER, 5
	closetext
	applymovement STARTHOUSE_TRACE, Movement_TracePicksPikachu
	opentext
	writetext TrainerHouseTraceTakesStarterText
	pause 15
	disappear STARTHOUSE_STARTER_PIKA
	opentext
	getmonname PIKACHU, STRING_BUFFER_3
	writetext TrainerHouseTraceStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	setscene $2
	end

Movement_TracePicksPikachu:
	step_left
	step_up
	step_up
	step_end

Movement_TracePicksEevee:
	step_up
	step_up
	step_end

BlueDidntChooseStarterText:
	text "Blue: Think it"
	line "over carefully."

	para "Your partner is"
	line "important."
	done

TrainerHouseStarterText:
	text "Blue: So, you want"
	line "@"
	text_ram wStringBuffer3
	text "?"
	done

TrainerHouseBlueConfirm:
	text "This #mon will"
	line "make for a great"
	cont "partner!"
	done

TrainerHouseTraceTakesStarterText:
	text "<RIVAL>: That means"
	line "this one's mine!"
	done

TrainerHouseTraceStarterText:
	text "<RIVAL> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

TrainerHouseTrigger2:
	applymovement STARTHOUSE_BLUE, Movement_BlueWalksDown
	turnobject STARTHOUSE_BLUE, LEFT
	turnobject STARTHOUSE_TRACE, RIGHT
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_BlueSendsOff
	waitbutton
	closetext
	turnobject STARTHOUSE_TRACE, DOWN
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_AFTER
	applymovement STARTHOUSE_BLUE, Movement_BlueLeaves
	disappear STARTHOUSE_BLUE
	special RestartMapMusic
	faceobject STARTHOUSE_TRACE, PLAYER
	faceobject PLAYER, STARTHOUSE_TRACE
	opentext
	writetext Text_TraceChallengesYou
	waitbutton
	closetext

	winlosstext TrainerHouseTraceWinText, TrainerHouseTraceLossText
	setlasttalked STARTHOUSE_TRACE
	checkevent EVENT_PLAYER_CHOSE_EEVEE
	iftrue .Eevee
	loadtrainer TRACE0, 1
	sjump .continueBattle
.Eevee
	loadtrainer TRACE0, 2

.continueBattle
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	dontrestartmapmusic
	reloadmap
	opentext
	writetext Text_TraceSaysBye
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement STARTHOUSE_TRACE, Movement_BlueLeaves
	disappear STARTHOUSE_TRACE
	setscene $3
	end

Movement_BlueWalksDown:
	step_down
	step_end

Movement_BlueLeaves:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Text_BlueSendsOff:
	text "Blue: OK, now"
	line "that that's taken"
	cont "care of..."

	para "I need your help."
	line "Please head south"
	cont "to Pallet Town to"
	cont "see Prof. Oak."

	para "He's my grandpa."
	line "He has something"
	cont "he needs to give"
	cont "you both."

	para "Don't keep him"
	line "waiting, you two!"

	para "Smell ya later!"
	done

Text_TraceChallengesYou:
	text "<RIVAL>: Well, you"
	line "heard the man."
	cont "Let's get a move"
	cont "on already!"

	para "Before we do, why"
	line "don't we have a"
	cont "quick battle?"

	para "It'll be nice to"
	line "see what our new"
	cont "#mon can do!"

	para "Ready? Let's go!"
	done

Text_TraceSaysBye:
	text "<RIVAL>: Whoa!"
	line "What a battle!"
	cont "Your #mon sure"
	cont "is strong!"

	para "You'd better"
	line "start training,"
	cont "I want a rematch"
	cont "later on."

	para "Anyway, You go to"
	line "the lab first. I"
	cont "have something to"
	cont "do before I go."

	para "See ya, <PLAYER>!"
	done

Text_BlueScoldsPlayer:
	text "Blue: <PLAYER>!"
	line "Are you even"
	cont "listening to me?"
	done

Text_TraceExcited:
	text "<RIVAL>: Oh man,"
	line "I bet you're"
	cont "thinking about"

	para "meeting Prof. Oak"
	line "and getting your"
	cont "#dex, right?"
	done

Text_BlueChoosePokemon:
	text "Blue: Will you two"
	line "wait a second? You"
	cont "aren't going out"
	cont "without #mon!"

	para "It's dangerous to"
	line "wander out empty-"
	cont "handed, y'know."

	para "It just so happens"
	line "that I've got two"
	cont "#mon left, one"
	cont "for each of you."

	para "There was a third"
	line "one, but that one"
	cont "was already taken"
	cont "by <BACKUP>."

	para "Anyway, you can"
	line "both have one. Go"
	cont "ahead!"
	done

Text_TraceYouPickFirst:
	text "<RIVAL>: Do you"
	line "hear that? We can"
	cont "take a #mon!"

	para "Go ahead and pick"
	line "first. You seem"
	cont "like you can't"
	cont "wait anymore!"
	done

TrainerHouseTraceWinText:
	text "<RIVAL>: What?!"
	line "Did I lose?"
	done

TrainerHouseTraceLossText:
	text "<RIVAL>: Yes!"
	line "I did it!"
	done
