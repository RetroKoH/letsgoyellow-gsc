BattleTower2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  0,  1, BATTLE_TOWER_1F, 4

	db 0 ; coord events

	db 4 ; bg events
	bg_event  4,  3, SIGNPOST_UP, BattleTower2FTVScript
	bg_event  5,  3, SIGNPOST_UP, BattleTower2FTVScript
	bg_event 16,  3, SIGNPOST_UP, BattleTower2FTVScript
	bg_event 17,  3, SIGNPOST_UP, BattleTower2FTVScript

	db 11 ; object events
	object_event  9,  4, SPRITE_CHUCK, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BattleTower2FBuckScript, EVENT_BATTLE_TOWER_BUCK
	object_event 17,  8, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BattleTower2FMarleyScript, EVENT_BATTLE_TOWER_MARLEY
	object_event 12,  7, SPRITE_JASMINE, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BattleTower2FMiraScript, EVENT_BATTLE_TOWER_MIRA
	object_event 15,  6, SPRITE_CLAIR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BattleTower2FAnabelScript, EVENT_BATTLE_TOWER_ANABEL
	object_event  4,  6, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FCooltrainermText, EVENT_MURKY_SWAMP_CHERYL
	object_event  7,  7, SPRITE_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FLadyText, EVENT_DIM_CAVE_RILEY
	object_event  9,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FTwinText, EVENT_CINNABAR_VOLCANO_BUCK
	object_event 17,  8, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FSuperNerdText, EVENT_QUIET_CAVE_MARLEY
	object_event 18,  8, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_POKEMON, PIKACHU, BattleTower2FPikachuText, EVENT_QUIET_CAVE_MARLEY
	object_event 12,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FYoungsterText, EVENT_SCARY_CAVE_MIRA
	object_event 15,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, BattleTower2FBlackbeltText, EVENT_NOISY_FOREST_ANABEL

	const_def 1 ; object constants
	const BATTLETOWER2F_BUCK
	const BATTLETOWER2F_MARLEY
	const BATTLETOWER2F_MIRA
	const BATTLETOWER2F_ANABEL

BattleTower2FTVScript:
	thistext

	text "There's an intense"
	line "battle on the TV."
	done

BattleTower2FBuckScript:
	checkflag ENGINE_BUCK_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_BUCK_DONE_TODAY
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_BUCK
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftrue .Team2
	loadtrainer CHUCK, 1
	jump .StartBattle
.Team2
	loadtrainer CHUCK, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	thistext

.AfterText:
	text "Fweh! Too much!"

	para "I guess I'll keep"
	line "improving my team."
	done

.GreetingText:
	text "Ehehehe! You're"
	line "here at last!"

	para "So we are going"
	line "to battle?"
	done

.SeenText:
	text "I can feel my"
	line "#mon shivering"

	para "inside their #"
	line "Balls with antici-"
	cont "pation!"
	done

.BeatenText:
	text "Heeheehee!"
	line "So hot, you!"
	done

.RefuseText:
	text "Huh, what? That"
	line "takes the wind out"
	cont "of my sails."
	done

BattleTower2FMarleyScript:
	checkflag ENGINE_MARLEY_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_MARLEY_DONE_TODAY
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_MARLEY
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftrue .Team3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Team2
	loadtrainer BUGSY, 1
	jump .StartBattle
.Team2
	loadtrainer BUGSY, 2
	jump .StartBattle
.Team3
	loadtrainer BUGSY, 3
.StartBattle
	startbattle
	reloadmapafterbattle
	thistext

.AfterText:
	text "…I might like"
	line "battling with you."

	para "…Just a little."
	line "Only a tiny bit."
	done

.GreetingText:
	text "…Oh? A battle?"
	line "With me?"
	done

.SeenText:
	text "…OK. I… won't"
	line "lose…!"
	done

.BeatenText:
	text "…Awww."
	done

.RefuseText:
	text "…Oh, you. I'm get-"
	line "ting to dislike"
	cont "you a little."
	done

BattleTower2FMiraScript:
	checkflag ENGINE_MIRA_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_MIRA_DONE_TODAY
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_MIRA
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftrue .Team2
	loadtrainer JASMINE, 1
	jump .StartBattle
.Team2
	loadtrainer JASMINE, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	thistext

.AfterText:
	text "<PLAYER>, you are"
	line "always with your"
	cont "#mon."

	para "That's how you got"
	line "to be so strong."

	para "Mira is beginning"
	line "to understand!"
	done

.GreetingText:
	text "<PLAYER>! Mira is"
	line "stronger now!"

	para "Please! Battle"
	line "with Mira!"
	done

.SeenText:
	text "Mira will show you"
	line "that Mira doesn't"

	para "get lost anymore,"
	line "<PLAYER>!"
	done

.BeatenText:
	text "Mira wonders if"
	line "she can get very"

	para "far in the Battle"
	line "Tower."
	done

.RefuseText:
	text "Mira is a little"
	line "sad…"
	done

BattleTower2FAnabelScript:
	checkflag ENGINE_ANABEL_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_ANABEL_DONE_TODAY
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_ANABEL
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftrue .Team2
	loadtrainer CLAIR, 1
	jump .StartBattle
.Team2
	loadtrainer CLAIR, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	thistext

.AfterText:
	text "That was fun…"

	para "I have never had"
	line "a #mon battle"

	para "so enjoyable"
	line "before…"
	done

.GreetingText:
	text "You really did"
	line "come to see me…"

	para "I won't have to"
	line "hold back against"
	cont "you…"

	para "Are you ready?"
	done

.SeenText:
	text "Let's begin,"
	line "shall we?"
	done

.BeatenText:
	text "Thank you…"
	done

.RefuseText:
	text "It's very dis-"
	line "appointing…"
	done

BattleTower2FCooltrainermText:
	text "I need to go, but"
	line "I just can't stop"

	para "watching this"
	line "battle!"
	done

BattleTower2FLadyText:
	text "What makes me most"
	line "happy being a"
	cont "trainer?"

	para "The fact that"
	line "#mon will bring"

	para "me lots of"
	line "friends!"
	done

BattleTower2FTwinText:
	text "Some people are"
	line "surprised to see"

	para "a small girl like"
	line "me at the Battle"
	cont "Tower."

	para "It's not like I"
	line "have to battle"
	cont "myself, you know?"
	done

BattleTower2FSuperNerdText:
	text "Hehe! All the"
	line "trainers around us"
	cont "look so pathetic!"

	para "…Actually, that"
	line "mindset makes you"
	cont "lose with one hit!"

	para "Don't let your"
	line "guard down,"
	cont "Pikachu!"
	done

BattleTower2FPikachuText:
	text "Pikachu: Pichuu!"
	done

BattleTower2FYoungsterText:
	text "To be strong is to"
	line "be weak."

	para "To be weak is to"
	line "be strong."

	para "Somebody told me"
	line "that before."

	para "I don't understand"
	line "it, but it sounds"
	cont "deep."
	done

BattleTower2FBlackbeltText:
	text "The karate gi is"
	line "the uniform of"
	cont "fighters!"

	para "There is nothing"
	line "better suited for"

	para "the Battle Tower"
	line "than this!"
	done
