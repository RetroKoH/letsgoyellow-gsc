RedsHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PlayersHouse2FInitializeRoom
;	callback MAPCALLBACK_TILES, PlayersHouse2FSetSpawn

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_UP, PlayersHousePC
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FSNESText
	bg_event  4,  1, BGEVENT_READ, PokemonJournalProfOakScript
	bg_event  5,  1, BGEVENT_READ, PokemonJournalProfElmScript

	def_object_events
	object_event  3,  5, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsole, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  2,  1, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  3,  1, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  6,  6, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDoll, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL

PlayersHouse2FInitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

PlayersHouse2FSetSpawn:
	special ToggleMaptileDecorations
	endcallback

Doll1:
	describedecoration 1

Doll2:
	describedecoration 2

BigDoll:
	describedecoration 3

GameConsole:
	describedecoration 4

PlayersHousePoster:
	dw EVENT_PLAYERS_ROOM_POSTER
	describedecoration 0

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

PokemonJournalProfElmScript:
	setflag ENGINE_READ_PROF_ELM_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "#mon Prof.Elm!"

	para "Prof.Elm was the"
	line "top student of"
	cont "Prof.Oak."

	para "They're said to"
	line "often argue about"
	cont "research."
	done

PlayersHousePC:
	opentext
	special Special_PlayersHousePC
	iftrue .Warp
	endtext
.Warp:
	warp NONE, 0, 0
	end

RedsHouse2FSNESText:
	opentext
	; time
;	special Special_SetDayOfWeek
;	special Special_InitialClearDSTFlag
	; full pokegear
;	setflag ENGINE_POKEGEAR
;	setflag ENGINE_PHONE_CARD
;	setflag ENGINE_MAP_CARD
;	setflag ENGINE_RADIO_CARD
;	setflag ENGINE_EXPN_CARD
	; pokedex
;	setflag ENGINE_POKEDEX
;	setflag ENGINE_UNOWN_DEX
	; judge machine
;	setflag ENGINE_JUDGE_MACHINE
	; all key items
for x, NUM_KEY_ITEMS
if x != MACHINE_PART
	givekeyitem x
endc
endr
	; all tms+hms
for x, NUM_TMS + NUM_HMS
	givetmhm x
endr
	; useful items
for x, POKE_BALL, SNAG_BALL + 1
if x != PARK_BALL && x != SAFARI_BALL && x != CHERISH_BALL
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
	giveitem MAX_REPEL, 99
	giveitem LURE_ITEM, 99
	giveitem ABILITY_CAP, 99
	giveitem ABILITYPATCH, 99
	giveitem LEAF_STONE, 99
	giveitem FIRE_STONE, 99
	giveitem WATER_STONE, 99
	giveitem THUNDERSTONE, 99
	giveitem MOON_STONE, 99
	giveitem SUN_STONE, 99
	giveitem DUSK_STONE, 99
	giveitem DAWN_STONE, 99
	giveitem SHINY_STONE, 99
	giveitem EXP_SHARE, 6
	giveitem LEFTOVERS, 6
	giveitem BIG_NUGGET, 99
	giveitem BOTTLE_CAP, 99
	giveitem ODD_SOUVENIR, 10
	; all decorations except Diploma
for x, EVENT_DECO_BED_1, EVENT_DECO_BIG_LAPRAS_DOLL + 1
	setevent x
endr
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	givecoins 50000
	loadmem wBattlePoints+0, 0
	loadmem wBattlePoints+1, 250
	; all badges
;	setflag ENGINE_ZEPHYRBADGE
;	setflag ENGINE_HIVEBADGE
;	setflag ENGINE_PLAINBADGE
;	setflag ENGINE_FOGBADGE
;	setflag ENGINE_STORMBADGE
;	setflag ENGINE_MINERALBADGE
;	setflag ENGINE_GLACIERBADGE
;	setflag ENGINE_RISINGBADGE
;	setflag ENGINE_BOULDERBADGE
;	setflag ENGINE_CASCADEBADGE
;	setflag ENGINE_THUNDERBADGE
;	setflag ENGINE_RAINBOWBADGE
;	setflag ENGINE_MARSHBADGE
;	setflag ENGINE_SOULBADGE
;	setflag ENGINE_VOLCANOBADGE
;	setflag ENGINE_EARTHBADGE
;	setevent EVENT_BEAT_FALKNER
;	setevent EVENT_BEAT_BUGSY
;	setevent EVENT_BEAT_WHITNEY
;	setevent EVENT_BEAT_MORTY
;	setevent EVENT_BEAT_CHUCK
;	setevent EVENT_BEAT_JASMINE
;	setevent EVENT_BEAT_PRYCE
;	setevent EVENT_BEAT_CLAIR
;	setevent EVENT_BEAT_BROCK
;	setevent EVENT_BEAT_MISTY
;	setevent EVENT_BEAT_LTSURGE
;	setevent EVENT_BEAT_ERIKA
;	setevent EVENT_BEAT_JANINE
;	setevent EVENT_BEAT_SABRINA
;	setevent EVENT_BEAT_BLAINE
;	setevent EVENT_BEAT_BLUE
;	setevent EVENT_BEAT_ELITE_FOUR
;	setevent EVENT_BEAT_ELITE_FOUR_AGAIN
;	setevent EVENT_BATTLE_TOWER_OPEN
;	clearevent EVENT_BATTLE_TOWER_CLOSED
	; fly anywhere
;	setflag ENGINE_FLYPOINT_NEW_BARK
;	setflag ENGINE_FLYPOINT_CHERRYGROVE
;	setflag ENGINE_FLYPOINT_VIOLET
;	setflag ENGINE_FLYPOINT_UNION_CAVE
;	setflag ENGINE_FLYPOINT_AZALEA
;	setflag ENGINE_FLYPOINT_GOLDENROD
;	setflag ENGINE_FLYPOINT_ECRUTEAK
;	setflag ENGINE_FLYPOINT_OLIVINE
;	setflag ENGINE_FLYPOINT_CIANWOOD
;	setflag ENGINE_FLYPOINT_YELLOW_FOREST
;	setflag ENGINE_FLYPOINT_MAHOGANY
;	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
;	setflag ENGINE_FLYPOINT_BLACKTHORN
;	setflag ENGINE_FLYPOINT_SILVER_CAVE
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
	; magnet train works
	setevent EVENT_RESTORED_POWER_TO_KANTO
	; post-e4
	setflag ENGINE_CREDITS_SKIP
	; test party
	givepoke CHARIZARD,		PLAIN_FORM,		50, HEAVY_BOOTS, FAST_BALL
	givepoke CHARIZARD,		PLAIN_FORM,		50, HEAVY_BOOTS, LEVEL_BALL
	givepoke CHARIZARD,		PLAIN_FORM,		50, HEAVY_BOOTS, LURE_BALL
	givepoke CHARIZARD,		PLAIN_FORM,		50, HEAVY_BOOTS, HEAVY_BALL
	givepoke CHARIZARD,		PLAIN_FORM,		50, HEAVY_BOOTS, LOVE_BALL
	

	; fill pokedex
	callasm FillPokedex
	; intro events
;	addcellnum PHONE_MOM
;	setmapscene PLAYERS_HOUSE_1F, $1
;	setevent EVENT_PLAYERS_HOUSE_MOM_1
;	clearevent EVENT_PLAYERS_HOUSE_MOM_2
;	setmapscene VERMILION_CITY, $1
	closetext
	end

FillPokedex:
	ld hl, wPokedexSeen
	call .Fill
	ld hl, wPokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	rst ByteFill
	ld [hl], %00111111 ; 249-254
	ret


	text "<PLAYER> played the"
	line "SNES."

	para "Better get going--"
	line "no time to waste!"
	done
