CeladonGym_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 15, SIGNPOST_READ, CeladonGymStatue
	bg_event  6, 15, SIGNPOST_READ, CeladonGymStatue

	db 1 ; object events
	object_event  5,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ErikaScript_0x72a6a, -1

ErikaScript_0x72a6a:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext UnknownText_0x72b28
	waitbutton
	closetext
	winlosstext UnknownText_0x72c3e, 0
	loadtrainer ERIKA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_AROMA_LADY_DAHLIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	opentext
	writetext UnknownText_0x72c96
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
	checkcode VAR_BADGES
	ifequal 9, .FirstBadge
	ifequal 10, .SecondBadge
	ifequal 12, .LyrasEgg
	jump .FightDone
.FirstBadge:
	specialphonecall SPECIALCALL_FIRSTBADGE
	jump .FightDone
.SecondBadge:
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .FightDone
	specialphonecall SPECIALCALL_SECONDBADGE
	jump .FightDone
.LyrasEgg:
	specialphonecall SPECIALCALL_LYRASEGG
.FightDone:
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue_jumpopenedtext UnknownText_0x72d8f
	writetext UnknownText_0x72cb0
	buttonsound
	verbosegivetmhm TM_GIGA_DRAIN
	setevent EVENT_GOT_TM19_GIGA_DRAIN
	jumpopenedtext ErikaOutroText

CeladonGymStatue:
	trainertotext ERIKA, 1, $1
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

UnknownText_0x72b28:
	text "Erika: Hello…"
	line "Lovely weather,"

	para "isn't it?"
	line "It's so pleasant…"

	para "…I'm afraid I may"
	line "doze off…"

	para "My name is Erika."
	line "I am the Leader of"
	cont "Celadon Gym."

	para "…Oh? All the way"
	line "from Johto, you"
	cont "say? How nice…"

	para "Oh. I'm sorry, I"
	line "didn't realize"

	para "that you wished to"
	line "challenge me."

	para "Very well, but I"
	line "shall not lose."
	done

UnknownText_0x72c3e:
	text "Erika: Oh!"
	line "I concede defeat…"

	para "You are remarkably"
	line "strong…"

	para "I shall give you"
	line "the Rainbow Badge…"
	done

UnknownText_0x72c96:
	text "<PLAYER> received"
	line "the Rainbow Badge."
	done

UnknownText_0x72cb0:
	text "Erika: That was a"
	line "delightful match."

	para "I felt inspired."
	line "Please, I wish you"
	cont "to have this TM."
	done

ErikaOutroText:
	text "It is Giga Drain."

	para "It is a wonderful"
	line "move that drains"

	para "half the damage it"
	line "inflicts to heal"
	cont "your #mon."

	para "Please use it if"
	line "it pleases you…"
	done

UnknownText_0x72d8f:
	text "Erika: Losing"
	line "leaves a bitter"
	cont "aftertaste…"

	para "But knowing that"
	line "there are strong"

	para "trainers spurs me"
	line "to do better…"
	done
