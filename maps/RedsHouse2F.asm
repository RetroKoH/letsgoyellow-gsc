RedsHouse2F_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, RedsHouse2FInitializeEvents

	db 1 ; warp events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	db 0 ; coord events

	db 4 ; bg events
	bg_event  0,  1, SIGNPOST_UP, RedsHouse2FPCScript
	bg_event  3,  5, SIGNPOST_UP, RedsHouse2FSNESText
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
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE

	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	; fly anywhere
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_MT_MOON
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
	giveitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	; hm slaves
	givepoke MEW, 100, LEFTOVERS
	givepoke MEW, 100, LEFTOVERS
	loadvar wPartyMon1Moves+0, SURF
	loadvar wPartyMon1Moves+1, HAIL
	loadvar wPartyMon1Moves+2, SUNNY_DAY
	loadvar wPartyMon1Moves+3, WEATHER_BALL
	loadvar wPartyMon1PP+0, 15
	loadvar wPartyMon1PP+1, 15
	loadvar wPartyMon1PP+2, 15
	loadvar wPartyMon1PP+3, 15
	loadvar wPartyMon2Moves+0, SANDSTORM
	loadvar wPartyMon2Moves+1, FAKE_OUT
	loadvar wPartyMon2Moves+2, RAIN_DANCE
	loadvar wPartyMon2Moves+3, WEATHER_BALL
	loadvar wPartyMon2PP+0, 15
	loadvar wPartyMon2PP+1, 15
	loadvar wPartyMon2PP+2, 15
	loadvar wPartyMon2PP+3, 15
	setflag ENGINE_POKEDEX
	callasm FillPokedex
	thistext

	text "<PLAYER> is"
	line "playing the SNES."

	para "…Okay!"
	line "It's time to go!"
	done

FillPokedex:
	ld a, 1
	ld [wFirstMagikarpSeen], a
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 23 ; 001-184
	call ByteFill
	ret
