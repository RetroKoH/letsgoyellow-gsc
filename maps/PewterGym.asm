PewterGym_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 11, SIGNPOST_READ, PewterGymStatue
	bg_event  7, 11, SIGNPOST_READ, PewterGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LeaderBrockScript, -1
	object_event  2,  7, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerCamperJerry, -1
	object_event  7,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerHikerEdwin, -1
	object_event  6, 11, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 1, PewterGymGuyScript, -1

LeaderBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .BeatBrock
	writetext PewterGymBrockIntroduction
	waitbutton
	closetext
	winlosstext PewterGymDefeatedBrockText, 0
	loadtrainer BROCK, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	setevent EVENT_BEAT_HIKER_EDWIN
	; Remove optional rival. Can make other changes too
	;setmapscene ROUTE_22, $2
	opentext
	writetext PewterGymBrockAfterBattleText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE

	checkevent EVENT_GOT_TM48_ROCK_SLIDE
	iftrue_jumpopenedtext PewterGymRematchText
	writetext PewterGymTMtext
	buttonsound
	verbosegivetmhm TM_ROCK_SLIDE
	setevent EVENT_GOT_TM48_ROCK_SLIDE
	writetext PewterGymDescribeTMText
	waitbutton
.BeatBrock:
	thisopenedtext
	text "There are all"
	line "kinds of trainers"
	cont "in the world."

	para "I'm in training to"
	line "become a #mon"
	cont "breeder."

	para "Just wait and see."
	line "I'm going to be-"
	cont "come a lot strong-"
	cont "er too."
	done

GenericTrainerCamperJerry:
	generictrainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperLiamSeenText, CamperLiamBeatenText

	text "You're pretty hot,"
	line "but not as hot"
	cont "as Brock!"
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
	trainertotext BROCK, 1, $1
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

PewterGymBrockIntroduction:
	text "I'm Brock!"
	line "I'm Pewter's Gym"
	cont "Leader!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#mon are all"
	cont "the Rock type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	cont "me your best!"
	done

PewterGymDefeatedBrockText:
	text "I took you for"
	line "granted."
	done

PewterGymBrockAfterBattleText:
	text "As proof of your"
	line "victory, here's"
	cont "the Boulder Badge!"

	para "<PLAYER> received"
	line "the Boulder Badge!"
	done

PewterGymTMtext:
	text "Wait! Take this"
	line "with you!"
	done

PewterGymDescribeTMText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#mon."
	
	para "They can be used"
	line "again and again,"
	cont "so put them to"
	cont "good use when you"
	cont "find them!"

	para "That TM contains"
	line "Rock Slide."

	para "It hits hard and"
	line "can sometimes make"
	cont "your foe flinch."
	done

PewterGymRematchText:
	text "The world is huge."
	line "There are many"

	para "other trainers"
	line "just like you."

	para "I'm going to be-"
	line "come a lot strong-"
	cont "er too."
	done

CamperLiamSeenText:
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "Brock!"
	done

CamperLiamBeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done

HikerEdwinSeenText:
	text "R-r-r-R-R--CRASH!"
	done

HikerEdwinBeatenText:
	text "BOOM!"
	done

PewterGymGuyText:
	text "Yo! Champ in"
	line "making! You're"

	para "really rocking."
	line "Are you battling"

	para "the Gym Leaders of"
	line "Kanto?"

	para "They're strong and"
	line "dedicated people,"

	para "just like Johto's"
	line "Gym Leaders."
	done

PewterGymGuyWinText:
	text "Yo! Champ in"
	line "making! That Gym"

	para "didn't give you"
	line "much trouble."

	para "The way you took"
	line "charge was really"

	para "inspiring. I mean"
	line "that seriously."
	done
