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
	givekeyitem ITEMFINDER
	givekeyitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	givetmhm TM_POISON_JAB
	givetmhm TM_SUNNY_DAY
	givetmhm HM_SURF
	givetmhm TM_POISON_FANG
	givetmhm TM_AVALANCHE

	; hm slaves
	givepoke VENUSAUR, 70, ORAN_BERRY
	loadvar wPartyMon2Ability, 2
	loadvar wPartyMon2Moves+0, GROWTH
	loadvar wPartyMon2Moves+1, MEGA_DRAIN
	loadvar wPartyMon2Moves+2, WEATHER_BALL
	loadvar wPartyMon2Moves+3, SYNTHESIS
	loadvar wPartyMon2PP+0, 5
	loadvar wPartyMon2PP+1, 5
	loadvar wPartyMon2PP+2, 5
	loadvar wPartyMon2PP+3, 5

	givepoke CHARIZARD, 70, LEFTOVERS
	loadvar wPartyMon3Ability, 2
	loadvar wPartyMon3Moves+0, SUNNY_DAY
	loadvar wPartyMon3Moves+1, FLARE_BLITZ
	loadvar wPartyMon3Moves+2, AIR_SLASH
	loadvar wPartyMon3Moves+3, ROOST
	loadvar wPartyMon3PP+0, 5
	loadvar wPartyMon3PP+1, 5
	loadvar wPartyMon3PP+2, 5
	loadvar wPartyMon3PP+3, 5

	givepoke BLASTOISE, 70, LEFTOVERS
	loadvar wPartyMon4Ability, 2
	loadvar wPartyMon4Moves+0, SHELL_SMASH
	loadvar wPartyMon4Moves+1, RAIN_DANCE
	loadvar wPartyMon4Moves+2, HYDRO_PUMP
	loadvar wPartyMon4Moves+3, FLASH_CANNON
	loadvar wPartyMon4PP+0, 5
	loadvar wPartyMon4PP+1, 5
	loadvar wPartyMon4PP+2, 5
	loadvar wPartyMon4PP+3, 5

	givepoke GENGAR, 70, LEFTOVERS
	loadvar wPartyMon5Moves+0, SHADOW_BALL
	loadvar wPartyMon5Moves+1, SLUDGE_BOMB
	loadvar wPartyMon5Moves+2, TAUNT
	loadvar wPartyMon5Moves+3, ENCORE
	loadvar wPartyMon5PP+0, 5
	loadvar wPartyMon5PP+1, 5
	loadvar wPartyMon5PP+2, 5
	loadvar wPartyMon5PP+3, 5

	givepoke DRAGONITE, 70, LEFTOVERS
	loadvar wPartyMon6Moves+0, DRAGON_DANCE
	loadvar wPartyMon6Moves+1, EXTREMESPEED
	loadvar wPartyMon6Moves+2, DRAGONBREATH
	loadvar wPartyMon6Moves+3, FLY
	loadvar wPartyMon6PP+0, 5
	loadvar wPartyMon6PP+1, 5
	loadvar wPartyMon6PP+2, 5
	loadvar wPartyMon6PP+3, 5

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
