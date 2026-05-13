Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	def_coord_events
	coord_event 18, 4, 0, Route22_BlueBeckonsYouScene ; Scene 0 (Blue Battle)
	coord_event 18, 5, 0, Route22_BlueBeckonsYouScene ; Scene 0 (Blue Battle)
	; Scene 1 (Idle Scene, w/ Snorlax)
	; Scene 2 (Shadow Snorlax boss battle)
	; Scene 3 (Idle Scene, After Snorlax)
	; Scene 4 (End, nothing special)

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText
	bg_event  5,  9, BGEVENT_JUMPTEXT, Route22AdvancedTipsSignText

	def_object_events
	object_event  16,  4, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Snorlax, EVENT_HIDE_ROUTE_22_BLUE
	object_event  14,  4, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route22Snorlax, EVENT_BEAT_ROUTE_22_SNORLAX

	object_const_def
	const ROUTE22_BLUE
	const ROUTE22_SNORLAX

Route22_BlueBeckonsYouScene:
	showemote EMOTE_SHOCK, ROUTE22_BLUE, 15
	turnobject ROUTE22_BLUE, DOWN
	opentext
	writetext Route22Blue_GreetsPlayer
	waitbutton
	closetext
	turnobject ROUTE22_BLUE, LEFT
	applymovement PLAYER, Movement_PlayerGoesToSee
	opentext
	writetext Route22Blue_LookSnorlax
	promptbutton
	turnobject ROUTE22_BLUE, UP
	turnobject PLAYER, DOWN
	writetext Route22Blue_LookPlayer
	yesorno
	iffalse .NotScared
	writetext Route22Blue_Agree
	waitbutton
	closetext
	applymovement TRACE, Movement_BackingAway
	turnobject ROUTE22_BLUE, LEFT
	applymovement PLAYER, Movement_BackingAway
	turnobject PLAYER, DOWN
	turnobject ROUTE22_BLUE, UP
	opentext
	writetext Route22Blue_ThatWasClose
	promptbutton
	writetext Route22_BlueChallengePlayer1
	waitbutton
	closetext
	sjump .startBattle

.NotScared:
	writetext Route22Blue_Doubt
	waitbutton
	closetext
	applymovement ROUTE22_BLUE, Movement_BackingAway
	turnobject ROUTE22_BLUE, LEFT
	applymovement PLAYER, Movement_BackingAway
	turnobject PLAYER, DOWN
	turnobject ROUTE22_BLUE, UP
	opentext
	writetext Route22Blue_ThatWasClose
	promptbutton
	writetext Route22_BlueChallengePlayer2
	waitbutton
	closetext
	sjump .startBattle

.startBattle:
	winlosstext Route22BlueWinText, Route22BlueLossText
	setlasttalked ROUTE22_BLUE
	checkevent EVENT_PLAYER_CHOSE_PIKACHU
	iftruefwd .Pikachu
	loadtrainer RIVAL0, RIVAL0_3	; Rival has PIKACHU
	sjump .continueBattle
.Pikachu
	loadtrainer RIVAL0, RIVAL0_4	; Rival has EEVEE
.continueBattle
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iffalse .AfterYouWin
	sjump .AfterYouLose

.AfterYouWin:
	showtext Route22Text_PlayerWon
	sjump .FinishBlue

.AfterYouLose:
	showtext Route22Text_BlueWon
.FinishBlue
	playmusic MUSIC_RIVAL_AFTER
	showemote EMOTE_HAPPY, ROUTE22_BLUE, 20
	opentext
	writetext Route22Text_BlueSaysBye
	waitbutton
	closetext
	applymovement ROUTE22_BLUE, Movement_BlueExitsRoute22
	disappear ROUTE22_BLUE
	special HealParty
	setscene $2
	playmapmusic
	end

Movement_PlayerGoesToSee:
	step_up
	step_up
	step_up
	step_left
	step_end

Movement_BackingAway:
	step_right
	step_right
	step_end

Movement_BlueExitsRoute22:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22Blue_GreetsPlayer:
	text "<RIVAL>: Hey,"
	line "<PLAYER>!"

	para "Come take a look"
	line "at this!"
	done

Route22Blue_LookSnorlax:
	text "<RIVAL>: Look at"
	line "this big #mon!"
	
	para "This #dex said"
	line "it's a Snorlax!"
	cont "Apparently it just"
	cont "eats and sleeps!"
	
	para "But this one looks"
	line "different. Look at"
	cont "its demeanor and"
	cont "aura."
	done

Route22Blue_LookPlayer:
	text "<RIVAL>: <PLAYER>?"
	line "What do you think?"
	cont "Doesn't it give"
	cont "you the creeps?"
	done

Route22Blue_Agree:
	text "Yea, same here!"
	line "Let's back up and"
	cont "give it a bit of"
	cont "space."
	done

Route22Blue_Doubt:
	text "Oh really?!?"
	
	para "Well then, why"
	line "don't you go wake"
	cont "it up if you're so"
	cont "big and brave!"
	
	para "I'm gonna go watch"
	line "from over here."
	done

Route22Blue_ThatWasClose:
	text "<RIVAL>: That sure"
	line "was close!"
	
	para "I heard about some"
	line "kind of shadowy"
	cont "figure and came to"
	cont "investigate."
	done

Route22_BlueChallengePlayer1:
	text "I think we should"
	line "leave it alone for"
	cont "now though."
	
	para "Say, why don't we"
	line "have a little 1v1"
	cont "before heading"
	cont "off to see Blue?"
	done

Route22_BlueChallengePlayer2:
	text "You sure sounded"
	line "tough, thinking it"
	cont "wasn't that scary."
	
	para "Why don't we see"
	line "how tough you are"
	cont "in a quick battle"
	cont "before we go?"
	done

Route22Text_PlayerWon:
	text "<RIVAL>: Wow!"
	line "I bet you could"
	cont "take on that odd"
	cont "Snorlax!"
	done

Route22Text_BlueWon:
	text "<RIVAL>: That"
	line "was a fun battle."
	cont "You should train"
	cont "more though."
	done

Route22Text_BlueSaysBye:
	text "Anyway, We should"
	line "get going already."
	cont "Blue is waiting in"
	cont "Pewter City!"

	para "See ya, <PLAYER>!"
	done

Route22BlueWinText:
	text "<RIVAL>: What?!"
	line "Did I lose?"
	done

Route22BlueLossText:
	text "<RIVAL>: Yes!"
	line "I did it!"
	done

Route22Snorlax:
	opentext
	jumpopenedtext .AsleepText

.AsleepText:
	text "Snorlax is asleep."
	
	para "But something is"
	line "unusual about it."
	done

VictoryRoadEntranceSignText:
	text "Route 22"

	para "#mon League"
	line "Reception Gate"
	done

Route22AdvancedTipsSignText:
	text "Advanced Tips!"

	para "Starting a New"
	line "Game+ will keep"

	para "your previous"
	line "game's money,"
	cont "Battle Points, and"

	para "any #mon stored"
	line "in the PC!"
	done
