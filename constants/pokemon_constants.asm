; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evolutions.asm and learnsets.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - IconPointers (see data/pokemon/menu_icon_pointers.asm)
; - MenuMonIconColors (see data/pokemon/menu_icon_pals.asm)
; - FrontPicPointers (see data/pokemon/front_pic_pointers.asm)
; - BackPicPointers (see data/pokemon/back_pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)
; - Footprints (see gfx/pokemon/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d
	const KAKUNA     ; 0e
	const BEEDRILL   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOP     ; 42
	const MACHOKE    ; 43
	const MACHAMP    ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const FARFETCH_D ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const DEWGONG    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60
	const HYPNO      ; 61
	const KRABBY     ; 62
	const KINGLER    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const HITMONLEE  ; 6a
	const HITMONCHAN ; 6b
	const LICKITUNG
	const KOFFING    ; 6c
	const WEEZING    ; 6d
	const RHYHORN    ; 6e
	const RHYDON     ; 6f
	const CHANSEY    ; 70
	const TANGELA    ; 71
	const KANGASKHAN ; 72
	const HORSEA     ; 73
	const SEADRA     ; 74
	const GOLDEEN
	const SEAKING
	;const TOGEPI     ; 75
	;const TOGETIC    ; 76
	;const TOGEKISS   ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const JYNX       ; 7c
	const ELECTABUZZ ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const OMANYTE    ; 8a
	const OMASTAR    ; 8b
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97

	const HOPPIP     ; 98 - REPLACE with Hoppip
	const SKIPLOOM   ; 99 - REPLACE with Skiploom
	const JUMPLUFF   ; 9a - REPLACE with Jumpluff
	const LEDYBA     ; 9b - REPLACE with Ledyba
	const LEDIAN     ; 9c - REPLACE with Ledian
	const SKARMORY   ; 9d - REPLACE with Skarmory
	const AZURILL    ; 9e - REPLACE with Azurill
	const MARILL     ; 9f - REPLACE with Marill
	const AZUMARILL  ; a0 - REPLACE with Azumarill
	const SENTRET    ; a1 - keep
	const FURRET     ; a2 - keep
	const HOOTHOOT   ; a3 - keep
	const NOCTOWL    ; a4 - keep
	;const GOLDEEN    ; a5 - shift up
	;const SEAKING    ; a6 - shift up
	const TOGEPI
	const TOGETIC
	const SPINARAK   ; a7 - keep
	const ARIADOS    ; a8 - keep
	const CROBAT     ; a9 - related
	const CHINCHOU   ; aa - keep
	const LANTURN    ; ab - keep
	const PICHU      ; ac - related
	const MUNCHLAX   ; ad - related
	const MAGNEZONE  ; ae - related
	const RHYPERIOR  ; af - related
	const TANGROWTH  ; b0 - related
	const NATU       ; b1 - keep
	const XATU       ; b2 - keep
	const MAREEP     ; b3 - keep
	const FLAAFFY    ; b4 - keep
	const AMPHAROS   ; b5 - keep
	const BELLOSSOM  ; b6 - related
	const LICKILICKY ; b7 - related
	const POLITOED   ; b8 - related
	const SUNKERN    ; b9 - scrap
	const SUNFLORA   ; ba - scrap
	const YANMA      ; bb - keep
	const YANMEGA    ; bc - keep
	const WOOPER     ; bd - keep
	const QUAGSIRE   ; be - keep
	const ESPEON     ; bf - related
	const UMBREON    ; c0 - related
	const MURKROW    ; c1 - keep
	const HONCHKROW  ; c2 - keep
	const SLOWKING   ; c3 - related
	const MISDREAVUS ; c4 - keep
	const MISMAGIUS  ; c5 - keep
	const KLEAVOR    ; c6 - related
	const SIRFETCH_D ; c7 - related
	const MR__RIME   ; c8 - related
	const PINECO     ; c9 - keep
	const FORRETRESS ; ca - keep
	const PERRSERKER ; cb - related
	const GLIGAR     ; cc - keep
	const GLISCOR    ; cd - keep
	const STEELIX    ; ce - related
	const SNUBBULL   ; cf - keep
	const GRANBULL   ; d0 - keep
	const ANNIHILAPE ; d1 - related
	const SCIZOR     ; d2 - related
	const SHUCKLE    ; d3 - keep
	const HERACROSS  ; d4 - keep
	const SNEASEL    ; d5 - keep
	const WEAVILE    ; d6 - keep
	const TEDDIURSA  ; d7 - keep
	const URSARING   ; d8 - keep
	const SLUGMA     ; d9 - keep
	const MAGCARGO   ; da - keep
	const SWINUB     ; db - keep
	const PILOSWINE  ; dc - keep
	const MAMOSWINE  ; dd - keep
	const HAPPINY    ; de - related
	const SMOOCHUM   ; df - related
	const MIME_JR_   ; e0 - related
	;const LICKITUNG  ; e1 - shift up
	const TOGEKISS
	const IGGLYBUFF  ; e2 - related
	const HOUNDOUR   ; e3 - keep
	const HOUNDOOM   ; e4 - keep
	const KINGDRA    ; e5 - related
	const PHANPY     ; e6 - keep
	const DONPHAN    ; e7 - keep
	const PORYGON2   ; e8 - related
	const PORYGON_Z  ; e9 - related
	const CLEFFA     ; ea - related
	const TYROGUE    ; eb - related
	const HITMONTOP  ; ec - related
	const ELEKID     ; ed - related
	const ELECTIVIRE ; ee - related
	const MAGBY      ; ef - related
	const MAGMORTAR  ; f0 - related
	const MILTANK    ; f1 - keep
	const BLISSEY    ; f2 - related
	const KANGASKID  ; f3 - related
	const MELTAN     ; f4 - keep
	const MELMETAL   ; f5 - keep
	const LARVITAR   ; f6 - keep
	const PUPITAR    ; f7 - keep
	const TYRANITAR  ; f8 - keep
	const SNEASLER   ; f9 - keep
	const URSALUNA   ; fa - keep
	const CLODSIRE   ; fb - keep
	const LEAFEON    ; fc - related
	const GLACEON    ; fd - related
	const SYLVEON    ; fe - related
NUM_POKEMON EQU const_value - 1 ; fe
	const EGG        ; ff

CANCEL EQU -1

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)

ext_const_def: MACRO
	if _NARG >= 1
		def ext_const_value = \1
	else
		def ext_const_value = 0
	endc
	if _NARG >= 2
		DEF \2 EQU ext_const_value
		redef ext_const_value += const_inc
	endc
ENDM

ext_const: MACRO
	const_skip
	DEF \1 EQU ext_const_value
	redef ext_const_value += const_inc
ENDM

NO_FORM EQU 0
PLAIN_FORM EQU 1

FIRST_COSMETIC_FORM_MON EQU const_value ; 100

; arbok
	ext_const_def 1, ARBOK_JOHTO_FORM ; (1)
	ext_const ARBOK_KANTO_FORM    ; 100 (2)
	ext_const ARBOK_KOGA_FORM     ; 101 (3)
	ext_const ARBOK_AGATHA_FORM   ; 102 (4)
	ext_const ARBOK_ARIANA_FORM   ; 103 (5) ...

; pikachu
	ext_const_def 2
	ext_const PIKACHU_FLY_FORM    ; 104 (2)
	ext_const PIKACHU_SURF_FORM   ; 105 (3)
	ext_const PIKACHU_RED_FORM    ; 106 (4)
	ext_const PIKACHU_YELLOW_FORM ; 107 (5)
	ext_const PIKACHU_SPARK_FORM  ; 108 (6)

; pichu
	ext_const_def 2
	ext_const PICHU_SPIKY_EARED_FORM ; 109 (2)

; magikarp
	ext_const_def 2
	ext_const MAGIKARP_SKELLY_FORM   ; 10a (02)
	ext_const MAGIKARP_CALICO1_FORM  ; 10b (03)
	ext_const MAGIKARP_CALICO2_FORM  ; 10c (04)
	ext_const MAGIKARP_CALICO3_FORM  ; 10d (05)
	ext_const MAGIKARP_TWO_TONE_FORM ; 10e (06)
	ext_const MAGIKARP_ORCA_FORM     ; 10f (07)
	ext_const MAGIKARP_DAPPLES_FORM  ; 110 (08)
	ext_const MAGIKARP_TIGER_FORM    ; 111 (09)
	ext_const MAGIKARP_ZEBRA_FORM    ; 112 (0a)
	ext_const MAGIKARP_STRIPE_FORM   ; 113 (0b)
	ext_const MAGIKARP_BUBBLES_FORM  ; 114 (0c)
	ext_const MAGIKARP_FOREHEAD_FORM ; 115 (0d)
	ext_const MAGIKARP_MASK_FORM     ; 116 (0e)
	ext_const MAGIKARP_SAUCY_FORM    ; 117 (0f)
	ext_const MAGIKARP_RAINDROP_FORM ; 118 (10)
NUM_MAGIKARP EQU ext_const_value - 1 ; 10

; Add more cosmetic forms for partners above
NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 34

FIRST_VARIANT_FORM_MON EQU const_value ; 119

; mewtwo
	ext_const_def 2
	ext_const MEWTWO_ARMORED_FORM ; 119 (2)

; partner pokemon
PARTNER EQU 2
	const_skip ; 11a pikachu
	const_skip ; 11b eevee

; alolan forms
ALOLAN_FORM EQU 2
	const_skip ; 11c rattata
	const_skip ; 11d raticate
	const_skip ; 11e sandshrew
	const_skip ; 11f sandslash
	const_skip ; 120 vulpix
	const_skip ; 121 ninetales
	const_skip ; 122 diglett
	const_skip ; 123 dugtrio
	const_skip ; 124 meowth
	const_skip ; 125 persian
	const_skip ; 126 geodude
	const_skip ; 127 graveler
	const_skip ; 128 golem
	const_skip ; 129 grimer
	const_skip ; 12a muk
	const_skip ; 12b raichu
	const_skip ; 12c exeggutor
	const_skip ; 12d marowak

; galarian forms
GALARIAN_FORM EQU 3
	const_skip ; 12e meowth
	const_skip ; 12f ponyta
	const_skip ; 130 rapidash
	const_skip ; 131 slowpoke
	const_skip ; 132 slowbro
	const_skip ; 133 slowking
	const_skip ; 134 farfetchd
	const_skip ; 135 weezing
	const_skip ; 136 mr mime
	const_skip ; 137 articuno
	const_skip ; 138 zapdos
	const_skip ; 139 moltres

; hisuian forms
DEF HISUIAN_FORM EQU 4
	const_skip ; 13a growlithe
	const_skip ; 13b arcanine
	const_skip ; 13c voltorb
	const_skip ; 13d electrode
	const_skip ; 13e sneasel

; paldean forms
DEF PALDEAN_FORM EQU 5
	const_skip ; 13f wooper
	const_skip ; 140 tauros

; tauros
	ext_const_def 2
	ext_const TAUROS_PALDEAN_FIRE_FORM  ; 141 (2)
	ext_const TAUROS_PALDEAN_WATER_FORM ; 142 (3)

NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 1f

FIRST_EXT_MON EQU const_value ; 151

NUM_EXT_SPECIES EQU const_value - FIRST_EXT_MON ; 0

; these constants include EGG as a species
NUM_UNIQUE_POKEMON EQU const_value - 1 ; 150
NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; 11c
NUM_SPECIES EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS - NUM_VARIANT_FORMS ; ff
