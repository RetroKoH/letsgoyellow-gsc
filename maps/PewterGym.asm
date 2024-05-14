PewterGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  2,  7, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperJerry, -1
	object_event  7,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerEdwin, -1
	object_event  6, 11, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuyScript, -1

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadgymleader BROCK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	setevent EVENT_BEAT_HIKER_EDWIN
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	readvar VAR_BADGES
	ifequal 9, .FirstBadge
	ifequal 10, .SecondBadge
	ifequal 12, .LyrasEgg
	sjump .FightDone
.FirstBadge:
	specialphonecall SPECIALCALL_FIRSTBADGE
	sjump .FightDone
.SecondBadge:
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	iftrue .FightDone
	specialphonecall SPECIALCALL_SECONDBADGE
	sjump .FightDone
.LyrasEgg:
	specialphonecall SPECIALCALL_LYRASEGG
.FightDone:
	checkevent EVENT_GOT_TM48_ROCK_SLIDE
	iftrue_jumpopenedtext BrockFightDoneText
	writetext BrockBoulderBadgeText
	promptbutton
	verbosegivetmhm TM_ROCK_SLIDE
	setevent EVENT_GOT_TM48_ROCK_SLIDE
	jumpthisopenedtext

	text "It can sometimes"
	line "cause your foe to"
	cont "flinch."
	done

GenericTrainerCamperJerry:
	generictrainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText

	text "Hey, you! Trainer"
	line "from Johto! Brock"

	para "is tough. He'll"
	line "punish you if you"

	para "don't take him"
	line "seriously."
	done

GenericTrainerHikerEdwin:
	generictrainer HIKER, EDWIN, EVENT_BEAT_HIKER_EDWIN, HikerEdwinSeenText, HikerEdwinBeatenText

	text "Phew… Broken"
	line "in pieces."
	done

PewterGymGuyScript:
	checkevent EVENT_BEAT_BROCK
	iftrue_jumptextfaceplayer PewterGymGuyWinText
	jumptextfaceplayer PewterGymGuyText

PewterGymStatue:
	gettrainername BROCK, 1, $1
	jumpstd gymstatue

BrockIntroText:
	text "Brock: Wow, it's"
	line "not often that we"

	para "get a challenger"
	line "from Johto."

	para "I'm Brock, the"
	line "Pewter Gym Leader."

	para "I'm an expert on"
	line "Rock-type #mon."

	para "My #mon are im-"
	line "pervious to most"

	para "physical attacks."
	line "You'll have a hard"

	para "time inflicting"
	line "any damage."

	para "Come on!"
	done

BrockWinLossText:
	text "Brock: Your #-"
	line "mon's powerful at-"
	cont "tacks overcame my"
	cont "rock-hard defense…"

	para "You're stronger"
	line "than I expected…"

	para "Go ahead--take"
	line "this Badge."
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "the Boulder Badge."
	done

BrockBoulderBadgeText:
	text "Brock: <PLAYER>,"
	line "thanks. I enjoyed"

	para "battling you, even"
	line "though I am a bit"
	cont "upset."

	para "I'll give you the"
	line "TM for Rock Slide,"
	cont "too."
	done

BrockFightDoneText:
	text "Brock: The world"
	line "is huge. There are"

	para "still many strong"
	line "trainers like you."

	para "Just wait and see."
	line "I'm going to be-"
	cont "come a lot strong-"
	cont "er too."
	done

CamperJerrySeenText:
	text "The trainers of"
	line "this Gym use Rock-"
	cont "type #mon."

	para "The Rock-type has"
	line "high Defense."

	para "Battles could end"
	line "up going a long"

	para "time. Are you"
	line "ready for this?"
	done

CamperJerryBeatenText:
	text "I have to win"
	line "these battles…"
	done

HikerEdwinSeenText:
	text "R-r-r-R-R--CRASH!"
	done

HikerEdwinBeatenText:
	text "BOOM!"
	done

PewterGymGuyText:
	text "Yo! You're that"
	line "same guy from"
	cont "earlier!"

	para "Brock just came"
	line "back. He said he"
	cont "was waiting for"
	cont "a certain trainer."

	para "That must be you!"
	line "Right?"

	para "Brock needs your"
	line "help, but he wants"
	cont "to test you first!"

	para "If you can beat"
	line "him in battle, he"
	cont "will know that"
	cont "you're ready!"
	done

PewterGymGuyWinText:
	text "Yo! You really"
	line "brought the fight"
	cont "to Brock!"

	para "I'm sure you'll"
	line "have no trouble if"
	cont "you go to the"
	cont "other gyms."

	para "I've been told the"
	line "#mon League has"
	cont "been suspended for"
	cont "now."

	para "But I think you"
	line "should still seek"
	cont "out the other Gym"
	cont "Leaders!"
	done

; Add text relevant to post-game rematches
