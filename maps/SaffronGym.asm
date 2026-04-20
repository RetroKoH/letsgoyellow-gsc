SaffronGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 2
	warp_event  9, 17, SAFFRON_CITY, 2
	warp_event 11, 14, SAFFRON_GYM, 18
	warp_event 19, 14, SAFFRON_GYM, 19
	warp_event 19, 10, SAFFRON_GYM, 20
	warp_event  0, 10, SAFFRON_GYM, 21
	warp_event  4,  2, SAFFRON_GYM, 22
	warp_event 11,  4, SAFFRON_GYM, 23
	warp_event  0, 14, SAFFRON_GYM, 24
	warp_event 19,  2, SAFFRON_GYM, 25
	warp_event 15, 16, SAFFRON_GYM, 26
	warp_event  4, 16, SAFFRON_GYM, 27
	warp_event  4,  8, SAFFRON_GYM, 28
	warp_event  8,  2, SAFFRON_GYM, 29
	warp_event 15,  8, SAFFRON_GYM, 30
	warp_event 15,  4, SAFFRON_GYM, 31
	warp_event  0,  4, SAFFRON_GYM, 32
	warp_event 19, 16, SAFFRON_GYM, 3
	warp_event 19,  8, SAFFRON_GYM, 4
	warp_event  0,  8, SAFFRON_GYM, 5
	warp_event  4,  4, SAFFRON_GYM, 6
	warp_event 11,  2, SAFFRON_GYM, 7
	warp_event  0, 16, SAFFRON_GYM, 8
	warp_event 19,  4, SAFFRON_GYM, 9
	warp_event 15, 14, SAFFRON_GYM, 10
	warp_event  4, 14, SAFFRON_GYM, 11
	warp_event  4, 10, SAFFRON_GYM, 12
	warp_event  8,  4, SAFFRON_GYM, 13
	warp_event 15, 10, SAFFRON_GYM, 14
	warp_event 15,  2, SAFFRON_GYM, 15
	warp_event  0,  2, SAFFRON_GYM, 16
	warp_event 11, 10, SAFFRON_GYM, 17
	warp_event  8, 10, SAFFRON_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  8, 15, BGEVENT_READ, SaffronGymStatue

; CHANNELER = GRANNY

	def_object_events
	object_event  9,  8, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGymSabrinaScript, -1
	object_event  2,  3, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicPreston, -1
	object_event  9,  3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerMediumAmanda, -1
	object_event 17,  3, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicJohan, -1
	object_event  2,  9, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerMediumStacy, -1
	object_event  2, 15, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicTyron, -1
	object_event 17,  9, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerMediumTasha, -1
	object_event 17, 15, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicCameron, -1
	object_event  9, 14, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronGymGuyScript, -1

SaffronGymSabrinaScript:
	faceplayer
	opentext
	checkflag ENGINE_SOULBADGE
	iftruefwd .FightDone
	writetext .IntroText
	waitbutton
	closetext
	winlosstext .WinLossText, 0
	loadtrainer SABRINA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_MEDIUM_DORIS
	setevent EVENT_BEAT_PSYCHIC_LEON
	setevent EVENT_BEAT_PSYCHIC_JARED
	setevent EVENT_BEAT_HEX_MANIAC_LUNA
	setevent EVENT_BEAT_HEX_MANIAC_NATALIE
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_MEDIUM_REBECCA
	opentext
	givebadge SOULBADGE, KANTO_REGION
	callstd kantopostgymevents

.FightDone:
	checkevent EVENT_GOT_TM29_PSYCHIC
	iftrue_jumpopenedtext .FightDoneText
	writetext .MarshBadgeText
	promptbutton
	verbosegivetmhm TM_PSYCHIC
	setevent EVENT_GOT_TM29_PSYCHIC
	jumpthisopenedtext

	text "TM29 is Psychic."

	para "It may lower the"
	line "target's Sp.Def."

	para "You will become a"
	line "celebrated and"
	cont "beloved Champion!"
	done

.IntroText:
	text "Sabrina: I had a"
	line "vision of your"
	cont "arrival…"

	para "I've had psychic"
	line "powers since I"
	cont "was a child."

	para "I first learned"
	line "to bend spoons"
	cont "with my mind."

	para "I dislike fight-"
	line "ing, but if you"
	cont "wish, I will show"
	cont "you my powers!"
	done

.WinLossText:
	text "I'm"
	line "shocked!"
	cont "But, a loss is a"
	cont "loss."

	para "I admit I didn't"
	line "work hard enough"
	cont "to win!"

	para "You earned the"
	line "Marsh Badge!"
	done

.MarshBadgeText:
	text "Sabrina: The"
	line "Marsh Badge makes"
	line "all #mon up to"
	cont "L.70 obey you!"

	para "Stronger #mon"
	line "will become wild,"
	cont "ignoring your"
	cont "orders in battle!"

	para "Just don't raise"
	line "your #mon too"
	cont "much!"

	para "Wait, please take"
	line "this TM with you!"
	done

.FightDoneText:
	text "Sabrina: Your love"
	line "for your #mon"

	para "overwhelmed my"
	line "psychic power…"

	para "The power of love,"
	line "I think, is also a"

	para "kind of psychic"
	line "power…"
	done

; Top left corner
GenericTrainerPsychicPreston:
	generictrainer PSYCHIC_T, PRESTON, EVENT_BEAT_MEDIUM_DORIS, .SeenText, .BeatenText

	text "That's right! I"
	line "used telepathy to"
	cont "read your mind!"
	done

.SeenText:
	text "Saffron #mon"
	line "Gym is famous for"
	cont "its psychics!"

	para "You want to see"
	line "Sabrina, right?"
	cont "I can tell!"
	done

.BeatenText:
	text "Arrrgh!"
	done

; Top center
GenericTrainerMediumAmanda:
	generictrainer HEX_MANIAC, AMANDA, EVENT_BEAT_PSYCHIC_LEON, .SeenText, .BeatenText

	text "In a battle of"
	line "equals, the one"
	cont "with the stronger"
	cont "will wins!"

	para "If you wish to"
	line "defeat Sabrina,"
	cont "focus on winning!"
	done

.SeenText:
	text "Sabrina is younger"
	line "than I, but I"
	cont "respect her."
	done

.BeatenText:
	text "Not good enough!"
	done

; Top right corner
GenericTrainerPsychicJohan:
	generictrainer PSYCHIC_T, JOHAN, EVENT_BEAT_PSYCHIC_JARED, .SeenText, .BeatenText

	text "Psychic #mon"
	line "fear ghosts, bugs"
	cont "and darkness!"

	para "Nothing else can"
	line "stand a chance!"
	done

.SeenText:
	text "Does our unseen"
	line "power scare you?"
	done

.BeatenText:
	text "I never"
	line "foresaw this!"
	done

; Middle left
GenericTrainerMediumStacy:
	generictrainer HEX_MANIAC, STACY, EVENT_BEAT_MEDIUM_REBECCA, .SeenText, .BeatenText

	text "I must teach"
	line "better moves to"
	cont "my #mon!"
	done

.SeenText:
	text "#mon take on"
	line "the appearance of"
	cont "their trainers."
	
	para "Yours must be"
	line "tough, then!"
	done

.BeatenText:
	text "I knew it!"
	done

; Middle right
GenericTrainerPsychicTyron:
	generictrainer PSYCHIC_T, TYRON, EVENT_BEAT_MEDIUM_REBECCA, .SeenText, .BeatenText

	text "Sabrina just wiped"
	line "out the Karate"
	cont "Master next door!"
	done

.SeenText:
	text "You know that"
	line "power alone isn't"
	cont "enough to win?"
	done

.BeatenText:
	text "I don't believe"
	line "this!"
	done

; Bottom left corner
GenericTrainerMediumTasha:
	generictrainer HEX_MANIAC, TASHA, EVENT_BEAT_MEDIUM_REBECCA, .SeenText, .BeatenText

	text "I knew that this"
	line "was going to take"
	cont "place."
	done

.SeenText:
	text "You and I, our"
	line "#mon shall"
	cont "battle!"
	done

.BeatenText:
	text "I lost after all!"
	done

; Bottom right corner
GenericTrainerPsychicCameron:
	generictrainer PSYCHIC_T, CAMERON, EVENT_BEAT_MEDIUM_REBECCA, .SeenText, .BeatenText

	text "There used to be"
	line "2 #mon Gyms in"
	cont "Saffron."

	para "The Fighting Dojo"
	line "next door lost"
	cont "its Gym status"
	cont "when we went and"
	cont "creamed them!"
	done

.SeenText:
	text "Sabrina is young,"
	line "but she's also"
	cont "our highly"
	cont "skilled leader."

	para "You won't reach"
	line "her easily!"
	done

.BeatenText:
	text "Ow!"
	line "Down and out!"
	done

SaffronGymGuyScript:
	checkevent EVENT_BEAT_SABRINA
	iftrue_jumptextfaceplayer SaffronGymGuyWinText
	jumpthistextfaceplayer

	text "Yo, Champ in"
	line "making!"

	para "A trainer as"
	line "skilled as you"

	para "doesn't need to be"
	line "told how to deal"

	para "with Psychic-type"
	line "#mon, right?"

	para "I expect great"
	line "things from you!"

	para "Good luck!"
	done

SaffronGymStatue:
	gettrainername SABRINA, 1, STRING_BUFFER_4
	checkflag ENGINE_SOULBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

SaffronGymGuyWinText:
	text "That was another"
	line "fantastic battle!"
	done
