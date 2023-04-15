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
	coord_event 1, 6, 1, TrainerHouseTryToLeaveScript
	coord_event 2, 6, 1, TrainerHouseTryToLeaveScript
	coord_event 6, 6, 1, TrainerHouseTryToLeaveScript
	coord_event 7, 6, 1, TrainerHouseTryToLeaveScript

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouseBlueScript, EVENT_HIDE_OAKSLAB_TRACE ;EVENT_HIDE_OAKSLAB_OAK
	object_event  6,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouseTraceScript, EVENT_HIDE_OAKSLAB_TRACE
	object_event  3,  4, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PikaBallScript, EVENT_HIDE_OAKSLAB_STARTER_PIKA
	object_event  5,  4, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeBallScript, EVENT_HIDE_OAKSLAB_STARTER_EEVEE

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
TrainerHouseTrigger2:
	end

TrainerHouseBlueScript:
	faceplayer
	opentext
	jumpthisopenedtext
	text "Blue: Now, <PLAYER>,"
	line "which #mon do"
	cont "you want?"
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
;	turnobject STARTHOUSE_BLUE, UP
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
	givepoke PIKACHU, 5
	closetext
	turnobject STARTHOUSE_TRACE, LEFT
	;applymovement STARTHOUSE_TRACE, Movement_TracePicksEevee
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
;	turnobject STARTHOUSE_BLUE, UP
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
	givepoke EEVEE, 5
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
	step_up
	step_up
	step_left
	step_left
	step_left
	step_down
	step_end

;Movement_TracePicksEevee:
;	step_left
;	step_end

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
	cont "by Elaine."

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
