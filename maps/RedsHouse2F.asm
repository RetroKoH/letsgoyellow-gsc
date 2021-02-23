RedsHouse2F_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, RedsHouse2FInitializeEvents

	db 1 ; warp events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	db 0 ; coord events

	db 4 ; bg events
	bg_event  0,  1, SIGNPOST_UP, RedsHouse2FPCScript
	bg_event  3,  5, SIGNPOST_JUMPTEXT, RedsHouse2FSNESText
	bg_event  4,  1, SIGNPOST_READ, PokemonJournalProfOakScript
	bg_event  5,  1, SIGNPOST_READ, PokemonJournalProfOakScript

	db 0 ; object events

RedsHouse2FInitializeEvents:
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInizialization
	jumpstd initializeevents

.SkipInizialization:
	return

PokemonJournalProfOakScript:
	setflag ENGINE_READ_PROF_OAK_JOURNAL
	thistext

	text "#mon Journal"

	para "Special Feature:"
	line "#mon Prof.Oak!"

	para "Samuel Oak's grand-"
	line "children, Blue and"

	para "Daisy, live near"
	line "his lab in Pallet"
	cont "Town."

	para "His cousin Samson"
	line "is rumored to live"

	para "in the far-off"
	line "Alola region."
	done

RedsHouse2FPCScript:
	opentext
	special Special_KrissHousePC
	endtext

RedsHouse2FSNESText:
	thistext

	text "<PLAYER> is"
	line "playing the SNES."

	para "…Okay!"
	line "It's time to go!"
	done
