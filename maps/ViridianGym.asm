ViridianGym_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  6, 45, VIRIDIAN_CITY, 1
	warp_event  7, 45, VIRIDIAN_CITY, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  4, 43, SIGNPOST_READ, ViridianGymStatue
	bg_event  9, 43, SIGNPOST_READ, ViridianGymStatue

	db 2 ; object events
	object_event  7,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BlueScript_0x9aa26, EVENT_VIRIDIAN_GYM_BLUE
	object_event  8, 43, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ViridianGymGuyScript, EVENT_VIRIDIAN_GYM_BLUE

BlueScript_0x9aa26:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ACE_DUO_ARA_AND_BELA
	setevent EVENT_BEAT_COOLTRAINERF_SALMA
	setevent EVENT_BEAT_COOLTRAINERF_BONITA
	setevent EVENT_BEAT_ACE_DUO_ELAN_AND_IDA
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	setevent EVENT_FINAL_BATTLE_WITH_LYRA
.FightDone:
	checkevent EVENT_GOT_TM71_STONE_EDGE
	iftrue_jumpopenedtext LeaderBlueEpilogueText
	writetext LeaderBlueAfterText
	buttonsound
	verbosegivetmhm TM_STONE_EDGE
	setevent EVENT_GOT_TM71_STONE_EDGE
	jumpopenedtext BlueOutroText

ViridianGymGuyScript:
	checkevent EVENT_BEAT_BLUE
	iftrue_jumptextfaceplayer ViridianGymGuyWinText
	jumptextfaceplayer ViridianGymGuyText

ViridianGymStatue:
	trainertotext BLUE, 1, $1
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

LeaderBlueBeforeText:
	text "Blue: Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at Cinnabar,"

	para "but now I'm ready"
	line "to battle you."

	para "…"

	para "You're telling me"
	line "you conquered all"
	cont "the Gyms in Johto?"

	para "Heh! Johto's Gyms"
	line "must be pretty"
	cont "pathetic then."

	para "Hey, don't worry"
	line "about it."

	para "I'll know if you"
	line "are good or not by"

	para "battling you right"
	line "now."

	para "Ready, Johto"
	line "Champ?"
	done

LeaderBlueWinText:
	text "Blue: What?"

	para "How the heck did I"
	line "lose to you?"

	para "…"

	para "Tch, all right…"
	line "Here, take this--"

	para "it's the Earth"
	line "Badge."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "the Earth Badge."
	done

LeaderBlueAfterText:
	text "Blue: Here! Take"
	line "this as well!"
	done

BlueOutroText:
	text "It contains Stone"
	line "Edge. It's not only"

	para "for Rock-type"
	line "#mon, got it?"

	para "…"

	para "All right, I was"
	line "wrong. You're the"

	para "real deal. You are"
	line "a good trainer."

	para "With eight badges"
	line "from Kanto, you"

	para "can challenge the"
	line "Elite Four again."

	para "They won't go easy"
	line "on a trainer who"
	cont "beat two regions."

	para "You can practice"
	line "with me at the"

	para "Fighting Dojo in"
	line "Saffron City on"
	cont "Mondays."

	para "All of the Gym"
	line "Leaders show up"
	cont "there to train."

	para "I'm going to beat"
	line "you someday."

	para "Don't you forget"
	line "it!"
	done

LeaderBlueEpilogueText:
	text "Blue: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	done

ViridianGymGuyText:
	text "Yo, Champ in"
	line "making!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."

	para "The Gym Leader is"
	line "a guy who battled"

	para "the Champion three"
	line "years ago."

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuyWinText:
	text "Man, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done
