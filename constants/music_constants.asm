; song ids
; Music indexes (see audio/music_pointers.asm)
	const_def
	const MUSIC_NONE                           ; 00
	const MUSIC_CRYSTAL_OPENING                ; 01 ; Replace with Yellow's opening
	const MUSIC_TITLE                          ; 02 ; RBY Title
	const MUSIC_MAIN_MENU                      ; 03 ; Probably go unused
	const MUSIC_PALLET_TOWN                    ; 04 ; Reverted (Use GSC for NITE Music)
	const MUSIC_MOM                            ; 05 ; Will use GSC theme
	const MUSIC_PROF_OAK                       ; 06 ; Reverted - For Meeting Professor Oak
	const MUSIC_POKEMON_TALK                   ; 07 ; Reverted (Use GSC Oak Lab for Radio?)
	const MUSIC_ROUTE_1                        ; 08 ; Reverted (Use GSC for NITE Music) - Routes 1-2; Underground Paths (Make new music for these)
	const MUSIC_ROUTE_3                        ; 09 ; Reverted (Use GSC for NITE Music) - Routes 3-10, 16-22;
	const MUSIC_NUGGET_BRIDGE                  ; 0a ; Reverted (Use HGSS for NITE Music) - Routes 24-25; Oak Intro
	const MUSIC_ROUTE_12                       ; 0b ; Reverted (Use GSC for NITE Music) - Routes 11-15
	const MUSIC_VIRIDIAN_CITY                  ; 0c ; Reverted (Use GSC for NITE Music) - VIRIDIAN, PEWTER, SAFFRON CITIES
	const MUSIC_CERULEAN_CITY                  ; 0d ; Reverted (Use GSC for NITE Music) - CERULEAN, FUCHSIA CITIES
	const MUSIC_LAVENDER_TOWN                  ; 0e ; Will Use the GSC music for DAY Music
	const MUSIC_LAVENDER_TOWN_RBY              ; 0f ; Will Use the RBY music for NITE Music
	const MUSIC_VERMILION_CITY                 ; 10 ; Reverted (Use GSC for NITE Music)
	const MUSIC_CELADON_CITY                   ; 11 ; Reverted (Use GSC for Nite Music)
	const MUSIC_CINNABAR_ISLAND                ; 12 ; Reverted (Use GSC for Nite Music)
	const MUSIC_INDIGO_PLATEAU_RBY             ; 13 ; Kept for Route 23 / Indigo Plateau
	const MUSIC_VICTORY_ROAD                   ; 14 ; Keeping GSC for Victory Road
	const MUSIC_INDIGO_PLATEAU                 ; 15 ; Kept for the indoor League and E4 rooms
	const MUSIC_VIRIDIAN_FOREST                ; 17 ; Retained from GSC
	const MUSIC_DIGLETTS_CAVE_RBY              ; 18 ; RBY Forest theme Retained for Diglett's Cave
	const MUSIC_NATIONAL_PARK                  ; 32 ; Will use for Bill's Garden
	const MUSIC_MT_MOON                        ; 19 ; Reverted
	const MUSIC_MT_MOON_SQUARE                 ; 1a ; Retained from GSC
	const MUSIC_UNION_CAVE                     ; 1b ; Repurposed for Rock Tunnel
	const MUSIC_CINNABAR_MANSION_RBY           ; 1c ; Repurposed for Power Plant
	const MUSIC_POKEMON_TOWER_RBY              ; 1d ; Retained - Lavender Tower (Venustoise; Ghost Agatha)
	const MUSIC_DARK_CAVE                      ; 1e ; Retained - Seafoam Islands
	const MUSIC_CERULEAN_CAVE_RBY              ; 1f ; Retained for Cerulean Cave
	const MUSIC_ROCKET_HIDEOUT                 ; 22 ; Uses RBY Silph Co theme (post-game Rocket Hideout)
	const MUSIC_GAME_CORNER                    ; 23 ; Reverted (May use GSC track for Radio or TV)
	const MUSIC_SAFARI_ZONE_GATE_HGSS          ; 24 ; Retained for Safari Zone Gate
	const MUSIC_BUG_CATCHING_CONTEST           ; 25 ; Retained for Safari Zone
	const MUSIC_BUG_CATCHING_CONTEST_RANKING   ; 34 ; MAYBE will use for sth related to Safari Zone
	const MUSIC_POKEMON_CENTER                 ; 59 ; Reverted
	const MUSIC_MART_HGSS                      ; 70 ; Retained
	const MUSIC_GYM                            ; 16 ; Reverted
	const MUSIC_POKECOM_CENTER                 ; 29 ; Will use for Wonder Trade Center
	const MUSIC_BICYCLE                        ; 30 ; Reverted
	const MUSIC_SURF_KANTO                     ; 58 ; Retained for Surfing
	const MUSIC_SURF                           ; 3e ; Retained for Night Surfing
	const MUSIC_SURFING_PIKACHU                ; 43 ; Will be used for something

; ENCOUNTERS
	const MUSIC_KANTO_WILD_BATTLE              ; 5e ; Reverted
	const MUSIC_KANTO_WILD_BATTLE_NIGHT        ; 5f ; Need to create night theme based on GSC version
	const MUSIC_WILD_BATTLE_GO                 ; 6f ; Will use in the Safari Zone
	const MUSIC_KANTO_LEGEND_BATTLE_XY         ; 20 ; Retained from P.C. for Legendary Birds
	const MUSIC_MEWTWO_BATTLE_STADIUM          ; 21 ; Retained from P.C. for Mewtwo Battle
	const MUSIC_KANTO_TRAINER_BATTLE           ; 7c ; Reverted (Add night version)
	const MUSIC_KANTO_GYM_LEADER_BATTLE        ; 5a ; Reverted (Add GSC as rematch version)
	const MUSIC_JOHTO_GYM_LEADER_BATTLE        ; 2b ; Retained for Side Quest Battles
	const MUSIC_ROCKET_BATTLE                  ; a6 ; Retained for Go Rocket Battles
	const MUSIC_ELITE_FOUR_BATTLE_SM           ; 54 ; Retained from P.C. for E4
	const MUSIC_CHAMPION_BATTLE                ; 55 ; Reverted
	const MUSIC_RIVAL_BATTLE                   ; 42 ; Replaced with GSC Red Battle

; VICTORY
	const MUSIC_CAPTURE                        ; 7d ; Retained from GSC
	const MUSIC_WILD_VICTORY                   ; 60 ; Reverted
	const MUSIC_TRAINER_VICTORY                ; 53 ; Reverted
	const MUSIC_GYM_VICTORY                    ; 2d ; Reverted
	const MUSIC_EVOLUTION                      ; 26 ; Retained; need to edit slightly (Will use new variations for trading and purify)

; ENCOUNTER
	const MUSIC_RIVAL_ENCOUNTER                ; 33 ; Reverted
	const MUSIC_YOUNGSTER_ENCOUNTER            ; 51 ; Reverted to RBY male encounter
	const MUSIC_LASS_ENCOUNTER                 ; 31 ; Reverted to RBY female encounter
	const MUSIC_POKEMANIAC_ENCOUNTER           ; 48 ; Retained - Used for Super Nerds, etc
	const MUSIC_BEAUTY_ENCOUNTER               ; 7b ; Retained
	const MUSIC_OFFICER_ENCOUNTER              ; 75 ; Retained
	const MUSIC_SAGE_ENCOUNTER                 ; 71 ; Retained
	const MUSIC_KIMONO_ENCOUNTER               ; 37 ; Retained
	const MUSIC_MYSTICALMAN_ENCOUNTER          ; 39 ; Unused
	const MUSIC_HIKER_ENCOUNTER                ; 72 ; Unused - Will use the male encounter instead
	const MUSIC_JESSIE_JAMES_ENCOUNTER         ; 41 ; retained
	const MUSIC_ROCKET_ENCOUNTER               ; a5 ; Used for GO Rocket Leaders
	const MUSIC_RIVAL_AFTER                    ; 27 ; Reverted
	const MUSIC_CLAIR                          ; 4c ; will use for Mega Dragonite Quest
; OTHER
	const MUSIC_SHOW_ME_AROUND                 ; 5d ; Will use in the early game
	const MUSIC_POKEMON_MARCH                  ; 3c ; maybe will use for something
	const MUSIC_POKEMON_CHANNEL                ; 2e ; will use for TVs
	const MUSIC_BUENAS_PASSWORD                ; 2f ; will use for TVs
	const MUSIC_POKE_FLUTE_CHANNEL             ; 6b ; Replace with the original Pokeflute
	const MUSIC_POKEMON_LULLABY                ; 65 ; Used for the Soft Lull technique
	const MUSIC_SS_AQUA                        ; 57 ; Might use this... not sure yet.
	const MUSIC_HEAL                           ; 66 ; retained GSC heal sfx.
	const MUSIC_MAGNET_TRAIN                   ; 63 ; retained. Will use for something
	const MUSIC_HALL_OF_FAME                   ; 56 ; retained GSC version. It sounds better
	const MUSIC_CREDITS                        ; b5 ; Reverted
	const MUSIC_POST_CREDITS                   ; b6 ; Retained; Will be changed

; UNUSED
	const MUSIC_GOLDENROD_CITY                 ; 28 ; unused
	const MUSIC_ROUTE_30                       ; 2a ; unused
	const MUSIC_FINAL_POKEMON_BW               ; 2c ; END-GAME MEW ENCOUNTER
	const MUSIC_ECRUTEAK_CITY                  ; 35 ; unused
	const MUSIC_DANCING_HALL                   ; 36 ; unused
	const MUSIC_BURNED_TOWER                   ; 38 ; unused
	const MUSIC_LYRA_ENCOUNTER_HGSS            ; 3a ; unused
	const MUSIC_ROUTE_37                       ; 3b ; unused
	const MUSIC_LIGHTHOUSE                     ; 3d ; unused
	const MUSIC_CIANWOOD_CITY_HGSS             ; 3f ; unused
	const MUSIC_ROUTE_47_HGSS                  ; 40 ; unused
	const MUSIC_LAKE_OF_RAGE                   ; 44 ; unused
	const MUSIC_STARK_MOUNTAIN_DPPT            ; 45 ; unused
	const MUSIC_LAKE_OF_RAGE_ROCKET_RADIO      ; 46 ; unused
	const MUSIC_ROUTE_36                       ; 47 ; unused
	const MUSIC_ROCKET_OVERTURE                ; 49 ; unused/removed
	const MUSIC_RUINS_OF_ALPH_RADIO            ; 4a ; unused
	const MUSIC_DRAGONS_DEN                    ; 4b ; unused
	const MUSIC_ROUTE_4_BW                     ; 4d ; unused
	const MUSIC_TIN_TOWER                      ; 4e ; unused
	const MUSIC_SUICUNE_BATTLE                 ; 4f ; unused
	const MUSIC_ROUTE_26                       ; 50 ; unused
	const MUSIC_JOHTO_TRAINER_BATTLE           ; 52 ; unused

	const MUSIC_CHERRYGROVE_CITY               ; 5b ; unused
	const MUSIC_RUINS_OF_ALPH_INTERIOR         ; 5c ; unused
	const MUSIC_BICYCLE_RB                     ; 61 ; duplicate (oops)
	const MUSIC_ROUTE_29                       ; 62 ; unused
	const MUSIC_BLACK_CITY_BW                  ; 64 ; unused
	const MUSIC_GAME_CORNER_DPPT               ; 67 ; unused
	const MUSIC_CANALAVE_CITY_DPPT             ; 68 ; unused
	const MUSIC_BICYCLE_XY                     ; 69 ; unused
	const MUSIC_JOHTO_WILD_BATTLE              ; 6a ; unused
	const MUSIC_ROUTE_209_DPPT                 ; 6c ; unused
	const MUSIC_ROUTE_210_DPPT                 ; 6d ; unused
	const MUSIC_ROUTE_225_DPPT                 ; 6e ; unused
	const MUSIC_JOHTO_WILD_BATTLE_NIGHT        ; 73 ; Use for nighttime encouters
	const MUSIC_LYRA_DEPARTURE_HGSS            ; 74 ; unused
	const MUSIC_VIOLET_CITY                    ; 76 ; unused
	const MUSIC_SPROUT_TOWER                   ; 77 ; unused
	const MUSIC_RIVAL_BATTLE_XY                ; 78 ; unused
	const MUSIC_NEW_BARK_TOWN                  ; 79 ; unused
	const MUSIC_PROF_ELM                       ; 7a ; unused
	const MUSIC_HIDDEN_GROTTO_B2W2             ; 7e ; unused
	const MUSIC_TRAINER_BATTLE_DPPT            ; 7f ; unused
	const MUSIC_SCARY_HOUSE_XY                 ; 80 ; unused
	const MUSIC_ETERNA_FOREST_DPPT             ; 81 ; unused
	const MUSIC_MOUNT_CHIMNEY_RSE              ; 82 ; unused
	const MUSIC_MOUNT_PYRE_RSE                 ; 83 ; unused
	const MUSIC_BATTLE_TOWER_THEME             ; 84 ; unused
	const MUSIC_BATTLE_TOWER_LOBBY             ; 85 ; unused
	const MUSIC_BATTLE_FACTORY_RSE             ; 86 ; unused
	const MUSIC_TRAINER_BATTLE_BW              ; 87 ; unused
	const MUSIC_FRONTIER_BRAIN_BATTLE_RSE      ; 88 ; unused
	const MUSIC_ZINNIA_ENCOUNTER_ORAS          ; 89 ; unused
	const MUSIC_ROUTE_205_DPPT                 ; 8a ; unused
	const MUSIC_SURF_HOENN                     ; 8b ; unused
	const MUSIC_BICYCLE_RSE                    ; 8c ; unused
	const MUSIC_WILD_BATTLE_SM                 ; 8d ; unused
	const MUSIC_SUNYSHORE_CITY_DPPT            ; 8e ; unused
	const MUSIC_TRAINER_BATTLE_SM              ; 8f ; unused
	const MUSIC_ROUTE_203_DPPT                 ; 90 ; unused
	const MUSIC_WHITE_TREEHOLLOW_W2            ; 91 ; unused
	const MUSIC_LAVERRE_CITY_XY                ; 92 ; unused
	const MUSIC_ROUTE_101_RSE                  ; 93 ; unused
	const MUSIC_EVER_GRANDE_CITY_RSE           ; 94 ; unused
	const MUSIC_OREBURGH_GATE_DPPT             ; 95 ; unused
	const MUSIC_ROUTE_12_BW                    ; 96 ; unused
	const MUSIC_ROAD_TO_REVERSAL_MOUNTAIN_B2W2 ; 97 ; unused
	const MUSIC_ZINNIA_BATTLE_ORAS             ; 98 ; unused
	const MUSIC_WALLY_ENCOUNTER_ORAS           ; 99 ; unused
	const MUSIC_WALLY_BATTLE_ORAS              ; 9a ; unused
	const MUSIC_SPIKY_EARED_PICHU_HGSS         ; 9b ; unused
	const MUSIC_MOTHER_BEAST_BATTLE_SM         ; 9c ; unused
	const MUSIC_FROST_CAVERN_XY                ; 9d ; unused
	const MUSIC_POWER_PLANT_XY                 ; 9e ; unused
	const MUSIC_REVERSAL_MOUNTAIN_W2           ; 9f ; unused
	const MUSIC_METEOR_FALLS_RSE               ; a0 ; unused
	const MUSIC_LUGIAS_SONG_2000               ; a1 ; unused
	const MUSIC_LUGIA_BATTLE_HGSS              ; a2 ; unused
	const MUSIC_SUMMONING_DANCE_HGSS           ; a3 ; unused
	const MUSIC_HO_OH_BATTLE_HGSS              ; a4 ; unused
	const MUSIC_ABANDONED_SHIP_RSE             ; a7 ; unused
	const MUSIC_AZALEA_TOWN                    ; a8 ; unused
	const MUSIC_GYM_LEADER_BATTLE_RSE          ; a9 ; unused
	const MUSIC_GYM_LEADER_BATTLE_DPPT         ; aa ; unused
	const MUSIC_GYM_LEADER_BATTLE_BW           ; ab ; unused
	const MUSIC_GYM_LEADER_BATTLE_XY           ; ac ; unused
	const MUSIC_GYM_LEADER_BATTLE_GO           ; ad ; unused
	const MUSIC_ELITE_FOUR_BATTLE_BW           ; ae ; unused
	const MUSIC_CELESTIAL_TOWER_BW             ; af ; unused
	const MUSIC_CHAMPION_BATTLE_RSE            ; b0 ; unused
	const MUSIC_MOUNT_CORONET_DPPT             ; b1 ; unused
	const MUSIC_CHAMPION_BATTLE_DPPT           ; b2 ; unused
	const MUSIC_WCS_BATTLE_BW                  ; b3 ; unused
	const MUSIC_CHAMPION_BATTLE_B2W2           ; b4 ; unused
	const MUSIC_TITLE_XY                       ; b7 ; unused
	const MUSIC_DEWFORD_TOWN_RSE               ; b8 ; unused
	const MUSIC_MARINE_TUBE_B2W2               ; b9 ; unused
	const MUSIC_LEGENDARY_BATTLE_XY            ; ba ; unused
	const MUSIC_WILD_BATTLE_PRISM              ; bb ; unused
	const MUSIC_TRAINER_BATTLE_PRISM           ; bc ; unused
	const MUSIC_GYM_LEADER_BATTLE_PRISM        ; bd ; unused
	const MUSIC_PALETTE_BATTLE_PRISM           ; be ; unused
	const MUSIC_UNDERTALE_MEGALOVANIA          ; bf ; unused
NUM_MUSIC_SONGS EQU const_value

; GetMapMusic picks music for these values (see data/maps/special_map_music.asm)
	const_def $ff, -1
	const MUSIC_RADIO_TOWER   ; ff
	const MUSIC_MAHOGANY_MART ; fe
	const MUSIC_LAVENDER      ; fd
FIRST_ALT_MUSIC EQU const_value + 1
