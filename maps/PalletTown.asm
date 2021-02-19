PalletTown_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlyPoint

	db 3 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  7,  9, SIGNPOST_JUMPTEXT, PalletTownSignText
	bg_event  3,  5, SIGNPOST_JUMPTEXT, RedsHouseSignText
	bg_event 13, 13, SIGNPOST_JUMPTEXT, OaksLabSignText
	bg_event 11,  5, SIGNPOST_JUMPTEXT, BluesHouseSignText

	db 2 ; object events
	object_event  3,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x1ac6e7, -1
	object_event 11, 14, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x1ac720, -1

PalletTownFlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	return

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
