ViridianForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	def_coord_events
	coord_event 18, 46, 0, ViridianForest_MeetJessieJames
	coord_event 19, 46, 0, ViridianForest_MeetJessieJames
	coord_event 3, 7, 1, ViridianForest_BattleJessieJames

	def_bg_events
	bg_event  4,  7, BGEVENT_JUMPTEXT, ViridianForestSignText1
	bg_event  6, 26, BGEVENT_JUMPTEXT, ViridianForestSignText2
	bg_event 28, 19, BGEVENT_JUMPTEXT, ViridianForestSignText3
	bg_event 18, 34, BGEVENT_JUMPTEXT, ViridianForestSignText4
	bg_event 26, 42, BGEVENT_JUMPTEXT, ViridianForestSignText5
	bg_event 20, 44, BGEVENT_JUMPTEXT, ViridianForestSignText6
	bg_event 18, 43, BGEVENT_ITEM + ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE
	bg_event  3, 20, BGEVENT_ITEM + POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION

	def_object_events
	object_event 18, 44, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJessieText, EVENT_MET_JESSIE_JAMES
	object_event 19, 44, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJamesText, EVENT_MET_JESSIE_JAMES
	object_event 12, 4, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJamesText, EVENT_HIDE_VIRIDIAN_FOREST_JESSIE
	object_event 19, 4, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJessieText, EVENT_HIDE_VIRIDIAN_FOREST_JAMES
	object_event  4, 43, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestJoanaScript, -1
	object_event 29, 42, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestBugBoyText, -1
	object_event 32, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherDoug, -1
	object_event 32, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerBugCatcherRick, -1
	object_event 31,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherBrian, -1
	object_event 15, 19, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassJocelyn, -1
	object_event  4, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherSammy, -1
	itemball_event 20, 34, ANTIDOTE, 1, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	itemball_event 3, 33, POKE_BALL, 2, EVENT_VIRIDIAN_FOREST_POKE_BALL
	itemball_event 27, 12, POTION, 1, EVENT_VIRIDIAN_FOREST_POTION_1
	itemball_event 14, 31, POTION, 1, EVENT_VIRIDIAN_FOREST_POTION_2

	object_const_def
	const VFOREST_JAMES
	const VFOREST_JESSIE
	const VFOREST_JAMES_2
	const VFOREST_JESSIE_2

; New Rockets intro
ViridianForest_MeetJessieJames:
	showtext Text_JessieJames1
	showemote EMOTE_SHOCK, VFOREST_JESSIE, 15 ; The new emote's color palette is off...
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JessieJames2
	showemote EMOTE_SHOCK, VFOREST_JESSIE, 15
	turnobject VFOREST_JESSIE, DOWN
	showtext Text_JessieSeesPlayer
	turnobject VFOREST_JAMES, DOWN
	showemote EMOTE_SHOCK, VFOREST_JAMES, 15
	showtext Text_JessieSeesPlayer2
	turnobject VFOREST_JAMES, RIGHT
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JamesAsksForMeowth
	showemote EMOTE_SHOCK, VFOREST_JESSIE, 15
	applymovement VFOREST_JESSIE, Movement_JessieJamesApproach
	applymovement VFOREST_JAMES, Movement_JessieJamesApproach
	showtext Text_JessieDemandsPlayer
	showtext Text_JamesBoasts
	turnobject VFOREST_JAMES, RIGHT
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JessieJamesLaugh
	applymovement VFOREST_JESSIE, Movement_JessieLeaves
	disappear VFOREST_JESSIE
	turnobject VFOREST_JAMES, DOWN
	showtext Text_JamesWarnsPlayer
	applymovement VFOREST_JAMES, Movement_JamesLeaves
	disappear VFOREST_JAMES
	appear VFOREST_JESSIE_2
	appear VFOREST_JAMES_2
	setscene $1
	end

Text_JessieJames1:
	text "???: Looks like"
	line "there's nothing"
	cont "in here."
	done

Text_JessieJames2:
	text "???: Then let's"
	line "just search a bit"
	cont "farther in."
	done

Text_JessieSeesPlayer:
	text "???: Hey! What are"
	line "you doing there?"
	done

Text_JessieSeesPlayer2:
	text "???: You were"
	line "eavesdropping,"
	cont "weren't you?"
	done

Text_JamesAsksForMeowth:
	text "???: Why didn't we"
	line "have Meowth here"
	cont "keeping watch"
	cont "for us?"
	done

Text_JessieDemandsPlayer:
	text "???: We know there"
	line "are rare Bulbasaur"
	cont "hiding within"
	cont "Viridian Forest!"

	para "If you've found"
	line "any, you better"
	cont "hand 'em over"
	cont "to us, twerp!"
	done

Text_JamesBoasts:
	text "???: That's right!"
	line "If anyone's going"
	cont "to have the most"
	cont "powerful #mon,"
	cont "it's us!"
	done

Text_JessieJamesLaugh:
	text "???: Wahahaha!"
	done

Text_JamesWarnsPlayer:
	text "???: And don't"
	line "even think about"
	cont "following us!"
	done

Movement_JessieJamesApproach:
	step_down
	step_end

Movement_JamesLeaves:
	step_right
Movement_JessieLeaves:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

ViridianForest_BattleJessieJames:
	playmusic MUSIC_JESSIE_JAMES_ENCOUNTER
	pause 15
	opentext
	writetext JessieJamesHoldItText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	disappear VFOREST_JAMES_2
	disappear VFOREST_JESSIE_2
	moveobject VFOREST_JAMES_2, 3, 12
	moveobject VFOREST_JESSIE_2, 4, 12
	appear VFOREST_JAMES_2
	appear VFOREST_JESSIE_2
	turnobject PLAYER, DOWN
	applymovement VFOREST_JAMES_2, Movement_RocketsRunIn
	applymovement VFOREST_JESSIE_2, Movement_RocketsRunIn
	turnobject VFOREST_JAMES_2, RIGHT
	showtext JamesRocketText
	turnobject VFOREST_JESSIE_2, LEFT
	showtext JessieRocketText
	turnobject VFOREST_JAMES_2, UP
	turnobject VFOREST_JESSIE_2, UP
	showtext JessieJamesRocketText
	winlosstext JessieJamesWinLossText, 0
	loadtrainer JESSIE_JAMES, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	showtext JessieJamesAfterDefeat
	disappear VFOREST_JAMES_2
	disappear VFOREST_JESSIE_2
	setscene $2
	playmapmusic
	end

Movement_RocketsRunIn:
	step_up
	step_up
	step_up
	step_up
	step_end

JessieJamesHoldItText:
	text "???: HOLD IT RIGHT"
	line "THERE, TWERP!"
	done

JamesRocketText:
	text "???: Ready,"
	line "Jessie?"
	done

JessieRocketText:
	text "Jessie: Ready,"
	line "James!"
	done

JessieJamesRocketText:
	text "Jessie: Prepare"
	line "for trouble!"

	para "James: And make"
	line "it double!"

	para "Jessie: We found"
	line "Bulbasaur with a"
	cont "trusty Lure!"

	para "James: And now we"
	line "will use it to"
	cont "win for sure!"
	done

JessieJamesWinLossText:
	text "Jessie: Yikes! Our"
	line "new power wasn't"
	cont "enough!"
	done

JessieJamesAfterDefeat:
	text "James: What do we"
	line "do now, Jessie?"

	para "Jessie: This"
	line "doesn't matter."
	cont "Let's get our new"
	cont "weapon back to"
	cont "the boss!"

	para "James: You'd best"
	line "stay out of our"
	cont "way, brat!"
	done

ViridianForestJessieText:
	text "Beat it, twerp!"
	line "We're hard at"
	cont "work over here!"
	done

ViridianForestJamesText:
	text "Prepare for"
	line "trouble! And make"
	cont "it double!"
	done

; NPC who can battle, AND then trade afterwards
ViridianForestJoanaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LASS_JOANA
	iftruefwd .CheckTrade
; If we haven't battled her yet, trigger a battle
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer LASS, JOANA
	startbattle
	reloadmapafterbattle
	opentext
	setevent EVENT_BEAT_LASS_JOANA
	jumpthisopenedtext

	text "I looked forever,"
	line "but I never found"
	cont "a Pikachu here!"
	
	para "If you find one,"
	line "please come back"
	cont "and show me!"
	done

; Ask for a trade (She will give you a L. 10 Butterfree
.CheckTrade:
	opentext
	callasm .GetTrade
	waitbutton
	closetext
	end

.SeenText:
	text "Hi! Do you have a"
	line "Pikachu?"
	done

.BeatenText:
	text "Oh no,"
	line "really?"
	done

.GetTrade:
	ld a, NPC_TRADE_JOANA
	ld e, a
	farcall NPCTrade
	ret

ViridianForestBugBoyText:
	text "I ran out of #"
	line "Balls to catch"
	cont "#mon with!"

	para "You should carry"
	line "extras!"
	done

GenericTrainerBugCatcherDoug:
	generictrainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, .SeenText, .BeatenText

	text "Ssh! You'll scare"
	line "the bugs away!"
	done

.SeenText:
	text "Hey! You have"
	line "#mon! Come on!"
	cont "Let's battle 'em!"
	done

.BeatenText:
	text "No!"
	line "Weedle can't"
	cont "cut it!"
	prompt

GenericTrainerBugCatcherRick:
	generictrainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, .SeenText, .BeatenText

	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

.SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

.BeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#mon!"
	prompt

GenericTrainerBugCatcherBrian:
	generictrainer BUG_CATCHER, BRIAN, EVENT_BEAT_BUG_CATCHER_BRIAN, .SeenText, .BeatenText

	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

.SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

.BeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#mon!"
	prompt

GenericTrainerLassJocelyn:
	generictrainer LASS, JOCELYN, EVENT_BEAT_LASS_JOCELYN, .SeenText, .BeatenText

	text "..."
	line "You win!"
	done

.SeenText:
	text "..."
	line "Let's Battle!"
	done

.BeatenText:
	text "Oh..."
	prompt

GenericTrainerBugCatcherSammy:
	generictrainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, .SeenText, .BeatenText

	text "..."
	line "You win!"
	done

.SeenText:
	text "..."
	line "Let's Battle!"
	done

.BeatenText:
	text "Oh..."
	prompt

ViridianForestSignText1:
	text "Leaving"
	line "Viridian Forest"
	cont "Pewter City Ahead"
	done

ViridianForestSignText2:
	text "Trainer Tips"

	para "Hold on to that"
	line "Big Mushroom!"

	para "Some maniacs will"
	line "pay lots of money"
	cont "for useless items!"
	done

ViridianForestSignText3:
	text "Trainer Tips"

	para "Grass-type #mon"
	line "are unaffected by"

	para "powder and spore"
	line "moves!"
	done

ViridianForestSignText4:
	text "For poison, use"
	line "Antidote! Get it"
	cont "at #mon Marts!"
	done

ViridianForestSignText5:
	text "Trainer Tips"

	para "Poison-type #-"
	line "mon can't be poi-"
	cont "soned themselves!"
	done

ViridianForestSignText6:
	text "Trainer Tips"

	para "Weaken #mon"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done
