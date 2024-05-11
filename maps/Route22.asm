Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	def_coord_events
	coord_event 21, 7, 1, Route22_TraceBeckonsYouScene ; Scene 1 (After obtaining the Dex)
	; Scene 2 (Idle Scene, w/ Snorlax)
	; Scene 3 (Corrupted Snorlax boss battle)
	; Scene 4 (Idle Scene, After Snorlax)
	; Scene 5 (Post-game, Final Trace battle)
	; Scene 6 (End, nothing special)

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText

	def_object_events
	object_event  20,  5, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouseTraceScript, EVENT_HIDE_ROUTE_22_TRACE
	object_event  18,  4, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Snorlax, EVENT_ROUTE_22_SNORLAX

	object_const_def
	const ROUTE22_TRACE
	const ROUTE22_SNORLAX

Route22_TraceBeckonsYouScene:
	showemote EMOTE_SHOCK, ROUTE22_TRACE, 15
	turnobject ROUTE22_TRACE, DOWN
	opentext
	writetext Route22Trace_GreetsPlayer
	waitbutton
	closetext
	turnobject ROUTE22_TRACE, LEFT
	applymovement PLAYER, Movement_PlayerGoesToSee
	opentext
	writetext Route22Trace_LookSnorlax
	promptbutton
	turnobject ROUTE22_TRACE, UP
	turnobject PLAYER, DOWN
	writetext Route22Trace_LookPlayer
	yesorno
	iffalse .NotScared
	writetext Route22Trace_Agree
	waitbutton
	closetext
	applymovement TRACE, Movement_BackingAway
	turnobject ROUTE22_TRACE, LEFT
	applymovement PLAYER, Movement_BackingAway
	turnobject PLAYER, DOWN
	turnobject ROUTE22_TRACE, UP
	opentext
	writetext Route22Trace_ThatWasClose
	promptbutton
	writetext Route22_TraceChallengePlayer1
	waitbutton
	closetext
	sjump .startBattle

.NotScared:
	writetext Route22Trace_Doubt
	waitbutton
	closetext
	applymovement ROUTE22_TRACE, Movement_BackingAway
	turnobject ROUTE22_TRACE, LEFT
	applymovement PLAYER, Movement_BackingAway
	turnobject PLAYER, DOWN
	turnobject ROUTE22_TRACE, UP
	opentext
	writetext Route22Trace_ThatWasClose
	promptbutton
	writetext Route22_TraceChallengePlayer2
	waitbutton
	closetext
	sjump .startBattle

.startBattle:
	winlosstext Route22TraceWinText, Route22TraceLossText
	setlasttalked ROUTE22_TRACE
	checkevent EVENT_PLAYER_CHOSE_EEVEE
	iftrue .Eevee
	loadtrainer TRACE0, 3
	sjump .continueBattle
.Eevee
	loadtrainer TRACE0, 4

.continueBattle
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
;	dontrestartmapmusic
	reloadmap
	iffalse .AfterYouWin
	sjump .AfterYouLose

.AfterYouWin:
	showtext Route22Text_PlayerWon
	sjump .FinishTrace

.AfterYouLose:
	showtext Route22Text_TraceWon
.FinishTrace
	showemote EMOTE_HAPPY, ROUTE22_TRACE, 20
	opentext
	writetext Route22Text_TraceSaysBye
	waitbutton
	closetext
	applymovement ROUTE22_TRACE, Movement_TraceExitsRoute22
	disappear ROUTE22_TRACE
	; Do I need to set the event to hide the rival?
	special HealPartyEvenForNuzlocke
	setscene $2
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

Movement_TraceExitsRoute22:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22Trace_GreetsPlayer:
	text "<RIVAL>: Hey,"
	line "<PLAYER>!"

	para "Come take a look"
	line "at this!"
	done

Route22Trace_LookSnorlax:
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

Route22Trace_LookPlayer:
	text "<RIVAL>: <PLAYER>?"
	line "What do you think?"
	cont "Doesn't it give"
	cont "you the creeps?"
	done

Route22Trace_Agree:
	text "Yea, same here!"
	line "Let's back up and"
	cont "give it a bit of"
	cont "space."
	done

Route22Trace_Doubt:
	text "Oh really?!?"
	
	para "Well then, why"
	line "don't you go wake"
	cont "it up if you're so"
	cont "big and brave!"
	
	para "I'm gonna go watch"
	line "from over here."
	done

Route22Trace_ThatWasClose:
	text "<RIVAL>: That sure"
	line "was close!"
	
	para "I heard about some"
	line "kind of shadowy"
	cont "figure and came to"
	cont "investigate."
	done

Route22_TraceChallengePlayer1:
	text "I think we should"
	line "leave it alone for"
	cont "now though."
	
	para "Say, why don't we"
	line "have a little 1v1"
	cont "before heading"
	cont "off to see Blue?"
	done

Route22_TraceChallengePlayer2:
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

Route22Text_TraceWon:
	text "<RIVAL>: That"
	line "was a fun battle."
	cont "You should train"
	cont "more though."
	done

Route22Text_TraceSaysBye:
	text "Anyway, We should"
	line "get going already."
	cont "Blue is waiting in"
	cont "Pewter City!"

	para "See ya, <PLAYER>!"
	done

Route22TraceWinText:
	text "<RIVAL>: What?!"
	line "Did I lose?"
	done

Route22TraceLossText:
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
