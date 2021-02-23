PalletTown_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlyPoint

	db 3 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 2

	db 2 ; coord events
	coord_event 10, 0, 0, PalletTown_ProfOakStopsYouScene1
	coord_event 11, 0, 0, PalletTown_ProfOakStopsYouScene2

	db 4 ; bg events
	bg_event  7,  9, SIGNPOST_JUMPTEXT, PalletTownSignText
	bg_event  3,  5, SIGNPOST_JUMPTEXT, RedsHouseSignText
	bg_event 13, 13, SIGNPOST_JUMPTEXT, OaksLabSignText
	bg_event 11,  5, SIGNPOST_JUMPTEXT, BluesHouseSignText

	db 3 ; object events
	object_event 10,  4, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_PALLETTOWN_OAK
	object_event  3,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x1ac6e7, -1
	object_event 11, 14, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x1ac720, -1

	const_def 1 ; object constants
	const PALLETTOWN_OAK

PalletTownFlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	return

PalletTown_ProfOakStopsYouScene1:
	playmusic MUSIC_PROF_OAK
	opentext
	writetext Text_OakAppears
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	appear PALLETTOWN_OAK
	turnobject PLAYER, DOWN
	applymovement PALLETTOWN_OAK, PalletTown_OakRunsToYouMovement1
	opentext
	writetext Text_OakArrives
	waitbutton
	closetext
	turnobject PALLETTOWN_OAK, RIGHT

; Catch Pikachu

	opentext
	writetext Text_OakAfterCatchingPikachu
	waitbutton
	closetext
	turnobject PALLETTOWN_OAK, UP
	opentext
	writetext Text_OakBringsYouToLab
	waitbutton
	closetext

	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, Movement_OakWalksToLab1
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PALLETTOWN_OAK
	applyonemovement PLAYER, step_up

	setscene $1
	setmapscene OAKS_LAB, $1
	clearevent EVENT_HIDE_OAKSLAB_OAK
	warpcheck
	end

PalletTown_ProfOakStopsYouScene2:
	playmusic MUSIC_PROF_OAK
	opentext
	writetext Text_OakAppears
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	appear PALLETTOWN_OAK
	turnobject PLAYER, DOWN
	applymovement PALLETTOWN_OAK, PalletTown_OakRunsToYouMovement2
	opentext
	writetext Text_OakArrives
	waitbutton
	closetext
	turnobject PALLETTOWN_OAK, LEFT

; Catch Pikachu

	opentext
	writetext Text_OakAfterCatchingPikachu
	waitbutton
	closetext
	turnobject PALLETTOWN_OAK, UP
	opentext
	writetext Text_OakBringsYouToLab
	waitbutton
	closetext

	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, Movement_OakWalksToLab2
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PALLETTOWN_OAK
	applyonemovement PLAYER, step_up

	setscene $1
	setmapscene OAKS_LAB, $1
	clearevent EVENT_HIDE_OAKSLAB_OAK
	warpcheck
	end

PalletTown_OakRunsToYouMovement1:
	step_up
	step_up
	step_up
	step_end

PalletTown_OakRunsToYouMovement2:
	step_right
	step_up
	step_up
	step_up
	step_end

Movement_OakWalksToLab2:
	step_left
Movement_OakWalksToLab1:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_up
	step_end

Text_OakAppears::
	text "OAK: Hey! Wait!"
	line "Don't go out!@@"

Text_OakArrives::
	text "OAK: That was"
	line "close!"

	para "It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "Hmm?"
	done

Text_OakAfterCatchingPikachu::
	text "OAK: Whew..."
	done

Text_OakBringsYouToLab::
	text "OAK: As I said,"
	line "Wild #MON can"
	cont "appear anytime in"
	cont "tall grass."

	para "You need your own"
	line "#MON for your"
	cont "protection."
	cont "I know!"

	para "Here, come with"
	line "me!"
	done

UnknownText_0x1ac6e7:
	text "I'm raising"
	line "#MON too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

UnknownText_0x1ac720:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

PalletTownSignText:
	text "PALLET TOWN"

	para "Shades of your"
	line "journey await!"
	done

RedsHouseSignText:
	text "<PLAYER>'s HOUSE"
	done

OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

BluesHouseSignText:
	text "<RIVAL>'s HOUSE"
	done
