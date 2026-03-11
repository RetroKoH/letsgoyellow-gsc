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
	object_event  9,  3, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHexManiacAmanda, -1
	object_event 17,  3, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicJohan, -1
	object_event  2,  9, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHexManiacStacy, -1
	object_event  2, 15, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicTyron, -1
	object_event 17,  9, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHexManiacTasha, -1
	object_event 17, 15, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPsychicCameron, -1
	object_event  9, 14, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronGymGuyScript, -1

SaffronGymSabrinaScript:
	faceplayer
	opentext
	checkflag ENGINE_SOULBADGE
	iftruefwd .FightDone
	writetext SabrinaIntroText
	waitbutton
	closetext
	winlosstext SabrinaWinLossText, 0
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
	iftrue_jumpopenedtext SabrinaFightDoneText
	writetext SabrinaMarshBadgeText
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
GenericTrainerChannelerAmanda:
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

	text "Nothing else can"
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
GenericTrainerHexManiacStacy:
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
GenericTrainerHexManiacTasha:
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

SabrinaIntroText:
	text "Sabrina: I knew"
	line "you were coming…"

	para "Three years ago I"
	line "had a vision of"
	cont "your arrival."

	para "You're after my"
	line "Badge."

	para "I don't enjoy bat-"
	line "tling, but it's my"

	para "duty as a Leader"
	line "to confer Badges"

	para "on anyone who has"
	line "proven themselves"
	cont "worthy."

	para "Since you wish it,"
	line "I will show you my"
	cont "psychic powers!"
	done

SabrinaWinLossText:
	text "Sabrina: Your"
	line "power…"

	para "It far exceeds"
	line "what I foresaw…"

	para "Maybe it isn't"
	line "possible to fully"

	para "predict what the"
	line "future holds…"

	para "OK, you win. You"
	line "earned yourself"
	cont "the Marsh Badge."
	done

SabrinaMarshBadgeText:
	text "Sabrina: I failed"
	line "to accurately pre-"

	para "dict your power."
	line "That means your"

	para "power is beyond my"
	line "psychic ability."

	para "You deserve this"
	line "TM, too!"
	done

SabrinaFightDoneText:
	text "Sabrina: Your love"
	line "for your #mon"

	para "overwhelmed my"
	line "psychic power…"

	para "The power of love,"
	line "I think, is also a"

	para "kind of psychic"
	line "power…"
	done

SaffronGymGuyWinText:
	text "That was another"
	line "fantastic battle!"
	done
