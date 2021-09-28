SeafoamGym_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 12, 20, SEAFOAM_ISLANDS_1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 10, 20, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, SeafoamGymGuyScript, EVENT_SEAFOAM_GYM_GYM_GUY
	object_event 12, 11, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BlaineScript_0x1ab4fb, -1

	const_def 1 ; object constants
	const SEAFOAMGYM_GYM_GUY

BlaineScript_0x1ab4fb:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext UnknownText_0x1ab548
	waitbutton
	closetext
	winlosstext UnknownText_0x1ab646, 0
	loadtrainer BLAINE, 1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUY
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_SCIENTIST_LOWELL
	setevent EVENT_BEAT_SCIENTIST_DENNETT
	setevent EVENT_BEAT_SUPER_NERD_CARY
	setevent EVENT_BEAT_SCIENTIST_LINDEN
	setevent EVENT_BEAT_SUPER_NERD_WALDO
	setevent EVENT_BEAT_SUPER_NERD_MERLE
	opentext
	writetext UnknownText_0x1ab683
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
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
	checkevent EVENT_GOT_TM61_WILL_O_WISP
	iftrue_jumpopenedtext UnknownText_0x1ab71c
	writetext UnknownText_0x1ab69d
	buttonsound
	verbosegivetmhm TM_WILL_O_WISP
	setevent EVENT_GOT_TM61_WILL_O_WISP
	thisopenedtext

	text "It's called Will-"
	line "O-Wisp!"

	para "It weakens your"
	line "foe by inflicting"
	cont "a burn."

	para "I did lose this"
	line "time, but I'm going"
	cont "to win next time."

	para "When I rebuild my"
	line "Cinnabar Gym,"

	para "we'll have to have"
	line "a rematch."
	done

SeafoamGymGuyScript:
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	iftrue_jumptextfaceplayer SeafoamGymGuyWinText2
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	thistextfaceplayer

	text "Yo!"

	para "…Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "Cinnabar Gym was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

UnknownText_0x1ab548:
	text "Blaine: Waaah!"

	para "My Gym in Cinnabar"
	line "burned down."

	para "My fire-breathing"
	line "#mon and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a Gym"

	para "Leader here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a Badge."

	para "Ha! You'd better"
	line "have Burn Heal!"
	done

UnknownText_0x1ab646:
	text "Blaine: Awesome."
	line "I've burned out…"

	para "You've earned the"
	line "Volcano Badge!"
	done

UnknownText_0x1ab683:
	text "<PLAYER> received"
	line "the Volcano Badge."
	done

UnknownText_0x1ab69d:
	text "Here, I'll give you"
	line "this, too."
	done

UnknownText_0x1ab71c:
	text "Blaine: My fire"
	line "#mon will be"

	para "even stronger."
	line "Just you watch!"
	done

SeafoamGymGuyWinText2:
	text "A #mon Gym can"
	line "be anywhere as"

	para "long as the Gym"
	line "Leader is there."

	para "There's no need"
	line "for a building."
	done
