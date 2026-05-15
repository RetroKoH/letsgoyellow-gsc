RedsHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_UP, PlayersHousePC
	bg_event  3,  5, BGEVENT_READ, PlayersHouseSNES
	bg_event  4,  1, BGEVENT_READ, PokemonJournalProfOakScript
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfOakScript

	def_object_events

PokemonJournalProfOakScript:
	setflag ENGINE_READ_PROF_OAK_JOURNAL
	jumpthistext

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

PlayersHousePC:
	opentext
	special Special_PlayersHousePC
	iffalse_endtext
.Warp:
	warp NONE, 0, 0
	end

PlayersHouseSNES:

; Debug unlocking
;if DEF(DEBUG)
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
	setflag ENGINE_JUDGE_MACHINE

	; all key items
for x, 1, NUM_KEY_ITEMS + 1
if x != MACHINE_PART
	givekeyitem x
endc
endr

	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr

	; useful items
for x, POKE_BALL, CHERISH_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL
	giveitem x, 99
endc
endr

	giveitem MAX_POTION, 99
	giveitem FULL_RESTORE, 99
	giveitem MAX_REVIVE, 99
	giveitem MAX_ELIXIR, 99
	giveitem HP_UP, 99
	giveitem PROTEIN, 99
	giveitem IRON, 99
	giveitem CARBOS, 99
	giveitem CALCIUM, 99
	giveitem ZINC, 99
	giveitem RARE_CANDY, 99
	giveitem PP_UP, 99
	giveitem PP_MAX, 99
	giveitem SACRED_ASH, 99
	giveitem MAX_REPEL, 99
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	giveitem ABILITY_CAP, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem ICE_STONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem ODD_SOUVENIR, 99
	giveitem EXP_SHARE, 99
	giveitem LEFTOVERS, 99
	giveitem MULCH, 99
	giveitem SWEET_HONEY, 99
	giveitem SILVER_LEAF, 99
	giveitem GOLD_LEAF, 99
	giveitem MINT_LEAF, 99
	giveitem BOTTLE_CAP, 99
	giveitem BIG_NUGGET, 99
	giveitem PORTRAITMAIL, 99
	giveitem ARMOR_SUIT, 1

for x, FIRST_BERRY, FIRST_BERRY + NUM_BERRIES
	giveitem x, 99
endr

	; set fly-points
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_MT_MOON
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_CERULEAN_CAPE
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR

	; test party
	givepoke VENUSAUR, PLAIN_FORM, 50, BLACK_SLUDGE
	givepoke CHARIZARD, PLAIN_FORM, 50, CHARCOAL
	givepoke BLASTOISE, PLAIN_FORM, 50, MYSTIC_WATER
	givepoke ANNIHILAPE, PLAIN_FORM, 50, LEFTOVERS
	givepoke MEWTWO, PLAIN_FORM, 50, LEFTOVERS
	; hm slave
	givepoke MEW, PLAIN_FORM, 100, LEFTOVERS
	loadmem wPartyMon2Moves+0, FLY
	loadmem wPartyMon2Moves+1, HEADBUTT
	loadmem wPartyMon2Moves+2, DIG
	loadmem wPartyMon2Moves+3, FRESH_SNACK
	loadmem wPartyMon2PP+0, 15
	loadmem wPartyMon2PP+1, 15
	loadmem wPartyMon2PP+2, 10
	loadmem wPartyMon2PP+3, 10
	loadmem wPartyMon2PokerusStatus, 1

	; fill pokedex
	setevent EVENT_GOT_STARTER
	setevent EVENT_GOT_POKEDEX
	setevent EVENT_PLAYER_CHOSE_PIKACHU
	setevent EVENT_BATTLED_OAKSLAB_RIVAL

	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, NUM_UNIQUE_POKEMON / 8
	rst ByteFill
if NUM_UNIQUE_POKEMON % 8
	ld [hl], 2**(NUM_UNIQUE_POKEMON % 8) - 1
endc
;endc

	opentext
	writetext PlayerSNESText
	pause 45
	closetext
	end

PlayerSNESText:
	text "<PLAYER> played the"
	line "SNES."

	para "Better get going--"
	line "no time to lose!"
	done
