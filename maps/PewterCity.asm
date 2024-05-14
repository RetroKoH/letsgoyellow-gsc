PewterCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlyPoint

	def_warp_events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 2
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 14,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 1
	warp_event 19,  5, PEWTER_MUSEUM_OF_SCIENCE_1F, 3

	def_coord_events
	coord_event 18, 33, 0, PewterCity_BlueStopsYouScene
	coord_event 19, 33, 0, PewterCity_BlueStopsYouScene

	def_bg_events
	bg_event 25, 23, BGEVENT_JUMPTEXT, PewterCitySignText
	bg_event 11, 17, BGEVENT_JUMPTEXT, PewterGymSignText
	bg_event 15,  9, BGEVENT_JUMPTEXT, PewterMuseumOfScienceSignText
	bg_event 33, 19, BGEVENT_JUMPTEXT, PewterCityMtMoonGiftShopSignText
	bg_event 19, 29, BGEVENT_JUMPTEXT, PewterCityTrainerTipsText

	def_object_events
	object_event 	18, 30, SPRITE_BLUE,		SPRITEMOVEDATA_STANDING_UP,		0, 0, -1, -1,		0,				OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_PEWTERCITY_BLUE
	object_event 	19, 30, SPRITE_KRIS,		SPRITEMOVEDATA_STANDING_UP,		0, 0, -1, -1,		0,				OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_PEWTERCITY_BLUE
	object_event 	 8,  4, SPRITE_LADY,		SPRITEMOVEDATA_STANDING_LEFT,	2, 2, -1, -1,		PAL_NPC_RED,	OBJECTTYPE_SCRIPT, 0, PewterCitySlowpokeLadyScript, -1
	object_event 	 6,  4, SPRITE_MON_ICON,	SPRITEMOVEDATA_STILL,			0, SLOWPOKE, -1, -1, PAL_NPC_RED,	OBJECTTYPE_SCRIPT, 0, PewterCitySlowpokeScript, -1
	object_event 	22, 11, SPRITE_BATTLE_GIRL,	SPRITEMOVEDATA_STANDING_DOWN,	2, 2, -1, -1,		PAL_NPC_GREEN,	OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterCityCooltrainerFText, -1
	object_event 	19, 10, SPRITE_COOL_DUDE,	SPRITEMOVEDATA_SPINRANDOM_SLOW,	2, 2, -1, -1,		0,				OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterCityCooltrainermText, -1
	object_event 	14, 29, SPRITE_CHILD,		SPRITEMOVEDATA_WANDER,			2, 2, -1, -1,		PAL_NPC_PURPLE,	OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterCityBugCatcherText, -1
	object_event 	29, 17, SPRITE_GRAMPS,		SPRITEMOVEDATA_WALK_LEFT_RIGHT,	0, 2, -1, -1,		PAL_NPC_BLUE,	OBJECTTYPE_SCRIPT, 0, PewterCityGrampsScript, -1
	object_event	 7, 17, SPRITE_SCHOOLBOY,	SPRITEMOVEDATA_WANDER,			2, 2, -1, -1,		PAL_NPC_RED,	OBJECTTYPE_SCRIPT, 0, PewterCityYoungsterScript, -1
	object_event  	15, 18, SPRITE_GYM_GUY,		SPRITEMOVEDATA_STANDING_DOWN,	0, 0, -1, -1,		PAL_NPC_BLUE,	OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterCityGymGuyText, EVENT_HIDE_PEWTERCITY_GYMGUY
	fruittree_event 32,  3, FRUITTREE_PEWTER_CITY_1,	PETAYA_BERRY, PAL_NPC_RED
	fruittree_event 30,  3, FRUITTREE_PEWTER_CITY_2,	APICOT_BERRY, PAL_NPC_BLUE

	object_const_def
	const PEWTER_BLUE
	const PEWTER_ALTPLAYER
	const PEWTER_LADY

PewterCityFlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback

PewterCity_BlueStopsYouScene:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, PEWTER_BLUE, 15
	turnobject PEWTER_BLUE, DOWN
	opentext
	writetext PewterBlueText_GreetsPlayer
	waitbutton
	closetext
	turnobject PEWTER_ALTPLAYER, DOWN
	applymovement PEWTER_BLUE, Movement_BlueWalksToYou
	turnobject PEWTER_BLUE, UP
	opentext
	writetext PewterBlueText_CallFriend
	waitbutton
	closetext
	applymovement PEWTER_ALTPLAYER, Movement_BlueWalksToYou
	turnobject PEWTER_BLUE, DOWN
	special RestartMapMusic
	showtext PewterAltText_Greeting
	showtext PewterBlueText_Important
	showemote EMOTE_SHOCK, PEWTER_BLUE, 15
	showtext PewterBlueText_AboutShadow
	turnobject PEWTER_ALTPLAYER, LEFT
	showtext PewterAltText_AboutShadow
	turnobject PEWTER_BLUE, RIGHT
	showtext PewterBlueText_Affirm
	turnobject PEWTER_BLUE, DOWN
	turnobject PEWTER_ALTPLAYER, DOWN
	showtext PewterBlueText_Direct
	applymovement PEWTER_BLUE, Movement_PewterBlueLeaves
	disappear PEWTER_BLUE
	showtext PewterAltText_Farewell
	applymovement PEWTER_ALTPLAYER, Movement_PewterAltLeaves
	disappear PEWTER_ALTPLAYER
	setscene $1
	end

Movement_BlueWalksToYou:
	step_down
	step_down
	step_end

Movement_PewterAltLeaves:
	step_left
Movement_PewterBlueLeaves:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

PewterCityGrampsScript:
	checkevent EVENT_GOT_OLD_AMBER
	iftrue_jumptextfaceplayer PewterCityGrampsText_GotSilverWing
	faceplayer
	opentext
	writetext PewterCityGrampsText
	promptbutton
	verbosegiveitem OLD_AMBER
	iffalse_endtext
	setevent EVENT_GOT_OLD_AMBER
	endtext

PewterCityYoungsterScript:
	faceplayer
	opentext
	writetext PewterCityYoungsterText1
	waitbutton
	checkflag ENGINE_BOULDERBADGE
	iffalse_endtext
	jumpopenedtext PewterCityYoungsterText2

PewterCitySlowpokeLadyScript:
	opentext
	checkflag ENGINE_PEWTER_SLOWPOKE_SITTING
	iftrue_jumptextfaceplayer .ComeBackText
	checkflag EVENT_WATCHED_POKEY
	iffalse .FirstTime
	faceplayer
	writetext .WatchPokeyAgain1
	yesorno
	iffalse_jumpopenedtext .WatchPokeyFirstTime_No
	sjump .WatchPokey

.FirstTime
	writetext .WatchPokeyFirstTime1
	showemote EMOTE_SHOCK, PEWTER_LADY, 15
	faceplayer
	writetext .WatchPokeyFirstTime2
	yesorno
	iffalse_jumpopenedtext .WatchPokeyFirstTime_No
	writetext .WatchPokeyFirstTime_Yes
	yesorno
	iffalse_jumpopenedtext .WatchPokeyFirstTime_No

.WatchPokey
	writetext .WatchPokeyFirstTime3
	waitbutton
	closetext
	special FadeOutPalettes
	special LoadMapPalettes
	special SaveMusic
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestoreMusic
	opentext
	writetext .WatchPokeyThanks
	promptbutton
	verbosegiveitem BIG_PEARL
	writetext .ComeBackText
	waitbutton
	closetext
	setflag EVENT_WATCHED_POKEY ; Triggers the first time
	setflag ENGINE_PEWTER_SLOWPOKE_SITTING
	end

.WatchPokeyAgain1:
	text "Why, hello!"

	para "Do you think you"
	line "could watch Pokey"
	cont "again?"
	done

.WatchPokeyFirstTime1:
	text "Oh dear, what am I"
	line "going to do with"
	cont "you, Pokey?"
	done

.WatchPokeyFirstTime2:
	text "Oh, Hello there."
	line "Do you think you"
	cont "could do me a"
	cont "favor?"
	done

.WatchPokeyFirstTime3:
	text "Oh, Thank you so"
	line "much!"

	para "I'll be back in"
	line "a little while."
	done

.WatchPokeyFirstTime_Yes:
	text "I want to go to"
	line "the Museum, but my"
	cont "dear Pokey refuses"
	cont "to budge!"

	para "Do you think you"
	line "could watch him"
	cont "for a little"
	cont "while?"
	done

.WatchPokeyFirstTime_No:
	text "Oh, that's too"
	line "bad. Maybe another"
	cont "time then."
	done

.WatchPokeyThanks:
	text "Thank you! Here's"
	line "something for your"
	cont "troubles!"
	done

.ComeBackText:
	text "I would love if"
	line "you could come"
	cont "see Pokey again"
	cont "sometime."
	done

PewterCitySlowpokeScript:
	opentext
	writethistext
		text "Slowpoke: …"

		para "…… …… ……"
		done
	pause 45
	writethistext
		text "…… ……Yawn?"
		done
	cry SLOWPOKE
	waitendtext

PewterBlueText_GreetsPlayer:
	text "Blue: Oh, hey,"
	line "<PLAYER>!"

	para "About time. I was"
	line "expecting you!"
	done

PewterBlueText_CallFriend:
	text "Blue: Hey,"
	line "<BACKUP>!"

	para "Don't be shy, come"
	line "say hello!"
	done

PewterAltText_Greeting:
	text "<BACKUP>: Hello"
	line "<PLAYER>. Nice"
	cont "to meet you."
	done

PewterBlueText_Important:
	text "Blue: I'll give"
	line "you time to get"
	cont "to know each other"
	cont "later."

	para "For now, I have to"
	line "ask. Did you see"
	cont "anything odd in"
	cont "Viridian Forest?"
	done

PewterBlueText_AboutShadow:
	text "Blue: So it WAS"
	line "true!"

	para "I heard about two"
	line "odd trainers with"
	cont "a strange looking"
	cont "Bulbasaur."

	para "Apparently this is"
	line "not the first time"
	cont "this kind of thing"
	cont "has been seen."
	done

PewterAltText_AboutShadow:
	text "<BACKUP>: You're"
	line "talking about the"
	cont "#mon that's at"
	cont "the museum, right?"

	para "The one with the"
	line "shadowy aura?"
	done

PewterBlueText_Affirm:
	text "Blue: Yes, that's"
	line "right."
	done

PewterBlueText_Direct:
	text "Blue: <PLAYER>,"
	line "I need you to go"
	cont "meet Brock."

	para "He's the leader of"
	line "the Pewter Gym."
	cont "You should be able"
	cont "to find him there."

	para "<BACKUP> and I"
	line "will catch up with"
	cont "you when we figure"
	cont "out more."

	para "See ya!"
	done

PewterAltText_Farewell:
	text "<BACKUP>: Hope to"
	line "see you around!"
	done

PewterCityCooltrainerFText:
	text "#mon can only"
	line "be two types at"
	cont "once, but if it"
	cont "were possible for"

	para "a #mon to be"
	line "every type, it"
	cont "would only have"
	cont "one weakness."

	para "What weakness,"
	line "you ask?"

	para "Rock-type attacks,"
	line "of course!"
	done

PewterCityCooltrainermText:
	text "This gal thinks"
	line "Rock-type #mon"
	cont "are all that,"

	para "but it's tied for"
	line "the most weakness-"
	cont "es of any type."

	para "I don't have the"
	line "heart to tell her,"
	cont "though."
	done

PewterCityBugCatcherText:
	text "At night, Clefairy"
	line "come out to play"
	cont "at Mt.Moon."

	para "But not every"
	line "night."
	done

PewterCityGrampsText:
	text "Ah, you came all"
	line "the way out here"
	cont "from Johto?"

	para "That brings back"
	line "memories. When I"

	para "was young, I went"
	line "to Johto to train."

	para "You remind me so"
	line "much of what I was"

	para "like as a young"
	line "man."

	para "Here. I want you"
	line "to have this item"
	cont "I found in Johto."
	done

PewterCityGrampsText_GotSilverWing:
	text "Going to new, un-"
	line "known places and"
	cont "seeing new people…"

	para "Those are the joys"
	line "of travel."
	done

PewterCityYoungsterText1:
	text "The Pewter Gym is"
	line "as rough and tough"
	cont "as rock itself."

	para "Be careful in"
	line "there."
	done

PewterCityYoungsterText2:
	text "You beat the Gym?"
	line "Then you're tough"
	cont "as rock too!"
	done

PewterCityGymGuyText:
	text "Yo! Trainer!"
	line "Brock's not here!"
	
	para "He said something"
	line "urgent came up at"
	cont "the Pewter Museum!"
	done

PewterCitySignText:
	text "Pewter City"
	line "A Stone Gray City"
	done

PewterGymSignText:
	text "Pewter City"
	line "#mon Gym"
	cont "Leader: Brock"

	para "The Rock Solid"
	line "#mon Trainer"
	done

PewterMuseumOfScienceSignText:
	text "Pewter Museum of"
	line "Science"
	done

PewterCityMtMoonGiftShopSignText:
	text "There's a notice"
	line "here…"

	para "Mt.Moon Gift Shop"
	line "Now open!"
	done

PewterCityTrainerTipsText:
	text "Trainer Tips"

	para "A #mon holding"
	line "an Ability Cap"
	cont "is more likely to"
	cont "have a baby with"
	cont "a rare ability."
	done
