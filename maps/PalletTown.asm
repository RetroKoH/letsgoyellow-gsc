PalletTown_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlyPoint

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 2

	def_coord_events
	coord_event 10, 0, 0, PalletTown_ProfOakStopsYouScene1
	coord_event 11, 0, 0, PalletTown_ProfOakStopsYouScene2

	def_bg_events
	bg_event  7,  9, BGEVENT_JUMPTEXT, PalletTownSignText
	bg_event  3,  5, BGEVENT_JUMPTEXT, RedsHouseSignText
	bg_event 13, 13, BGEVENT_JUMPTEXT, OaksLabSignText
	bg_event 11,  5, BGEVENT_JUMPTEXT, BluesHouseSignText

	def_object_events
	object_event 10,  4, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_PALLETTOWN_OAK
	object_event  3,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PalletTownTeacherText, -1
	object_event 12, 14, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PalletTownFisherText, -1
	object_event 17,  7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PalletTownYoungsterText, -1

	object_const_def
	const PALLETTOWN_OAK

PalletTownFlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

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
	showemote EMOTE_SHOCK, PALLETTOWN_OAK, 15
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

; This could be GREATLY optimized
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
	showemote EMOTE_SHOCK, PALLETTOWN_OAK, 15
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
	line "Don't move!@@"

Text_OakArrives::
	text "OAK: That was"
	line "close!"

	para "It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "Hmm?"
	done

Text_OakBringsYouToLab::
	text "OAK: What? You"
	line "already have a"
	cont "#mon partner?"

	para "Blue sent you,"
	line "didn't he? Well"
	cont "then, I think"
	cont "I know why you"
	cont "are here."

	para "Come with me!"
	done

PalletTownTeacherText:
	text "I'm raising #-"
	line "mon too."

	para "They serve as my"
	line "private guards."
	done

PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now make"
	line "games just by"

	para "writing code in-"
	line "stead of editing"
	cont "binary data."
	done

PalletTownYoungsterText:
	text "Smell ya later!"

	para "…People started"
	line "saying that around"
	cont "here, but it's"

	para "kinda weird if you"
	line "think about it."
	done

PalletTownSignText:
	text "Pallet Town"

	para "A Tranquil Setting"
	line "of Peace & Purity"
	done

RedsHouseSignText:
	text "Red's House"
	done

OaksLabSignText:
	text "Oak #mon"
	line "Research Lab"
	done

BluesHouseSignText:
	text "Blue's House"
	done
