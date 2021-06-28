; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBASAUR  ; $01
	const IVYSAUR    ; $02
	const VENUSAUR   ; $03
	const CHARMANDER ; $04
	const CHARMELEON ; $05
	const CHARIZARD  ; $06
	const SQUIRTLE   ; $07
	const WARTORTLE  ; $08
	const BLASTOISE  ; $09
	const CATERPIE   ; $0a
	const METAPOD    ; $0b
	const BUTTERFREE ; $0c
	const WEEDLE     ; $0d
	const KAKUNA     ; $0e
	const BEEDRILL   ; $0f
	const PIDGEY     ; $10
	const PIDGEOTTO  ; $11
	const PIDGEOT    ; $12
	const RATTATA    ; $13
	const RATICATE   ; $14
	const SPEAROW    ; $15
	const FEAROW     ; $16
	const EKANS      ; $17
	const ARBOK      ; $18
	const PICHU      ; $ac
	const PIKACHU    ; $19
	const RAICHU     ; $1a
	const SANDSHREW  ; $1b
	const SANDSLASH  ; $1c
	const NIDORAN_F  ; $1d
	const NIDORINA   ; $1e
	const NIDOQUEEN  ; $1f
	const NIDORAN_M  ; $20
	const NIDORINO   ; $21
	const NIDOKING   ; $22
	const CLEFAIRY   ; $23
	const CLEFABLE   ; $24
	const VULPIX     ; $25
	const NINETALES  ; $26
	const JIGGLYPUFF ; $27
	const WIGGLYTUFF ; $28
	const ZUBAT      ; $29
	const GOLBAT     ; $2a
	const CROBAT     ; $a9
	const ODDISH     ; $2b
	const GLOOM      ; $2c
	const VILEPLUME  ; $2d
	const BELLOSSOM  ; $b5
	const PARAS      ; $2e
	const PARASECT   ; $2f
	const VENONAT    ; $30
	const VENOMOTH   ; $31
	const DIGLETT    ; $32
	const DUGTRIO    ; $33
	const MEOWTH     ; $34
	const PERSIAN    ; $35
	const PSYDUCK    ; $36
	const GOLDUCK    ; $37
	const MANKEY     ; $38
	const PRIMEAPE   ; $39
	const GROWLITHE  ; $3a
	const ARCANINE   ; $3b
	const POLIWAG    ; $3c
	const POLIWHIRL  ; $3d
	const POLIWRATH  ; $3e
	const POLITOED   ; $b8
	const ABRA       ; $3f
	const KADABRA    ; $40
	const ALAKAZAM   ; $41
	const MACHOP     ; $42
	const MACHOKE    ; $43
	const MACHAMP    ; $44
	const BELLSPROUT ; $45
	const WEEPINBELL ; $46
	const VICTREEBEL ; $47
	const TENTACOOL  ; $48
	const TENTACRUEL ; $49
	const GEODUDE    ; $4a
	const GRAVELER   ; $4b
	const GOLEM      ; $4c
	const PONYTA     ; $4d
	const RAPIDASH   ; $4e
	const SLOWPOKE   ; $4f
	const SLOWBRO    ; $50
	const SLOWKING   ; $c3
	const MAGNEMITE  ; $51
	const MAGNETON   ; $52
	const MAGNEZONE  ; $ae
	const FARFETCH_D ; $53
	const DODUO      ; $54
	const DODRIO     ; $55
	const SEEL       ; $56
	const DEWGONG    ; $57
	const GRIMER     ; $58
	const MUK        ; $59
	const SHELLDER   ; $5a
	const CLOYSTER   ; $5b
	const GASTLY     ; $5c
	const HAUNTER    ; $5d
	const GENGAR     ; $5e
	const ONIX       ; $5f
	const STEELIX    ; $ce
	const DROWZEE    ; $60
	const HYPNO      ; $61
	const KRABBY     ; $62
	const KINGLER    ; $63
	const VOLTORB    ; $64
	const ELECTRODE  ; $65
	const EXEGGCUTE  ; $66
	const EXEGGUTOR  ; $67
	const CUBONE     ; $68
	const MAROWAK    ; $69
	const TYROGUE    ; $eb
	const HITMONLEE  ; $6a
	const HITMONCHAN ; $6b
	const HITMONTOP  ; $ec
	const LICKITUNG  ; $e1
	const KOFFING    ; $6c
	const WEEZING    ; $6d
	const RHYHORN    ; $6e
	const RHYDON     ; $6f
	const RHYPERIOR  ; $b6
	const CHANSEY    ; $70
	const BLISSEY    ; $f2
	const TANGELA    ; $71
	const TANGROWTH  ; $af
	const KANGASKHAN ; $72
	const HORSEA     ; $73
	const SEADRA     ; $74
	const KINGDRA    ; $e5
	const GOLDEEN    ; $a5
	const SEAKING    ; $a6
	const STARYU     ; $78
	const STARMIE    ; $79
	const MR__MIME   ; $7a
	const SCYTHER    ; $7b
	const SCIZOR     ; $d2
	const JYNX       ; $7c
	const ELEKID     ; $ed
	const ELECTABUZZ ; $7d
	const ELECTIVIRE ; $ee
	const MAGBY      ; $ef
	const MAGMAR     ; $7e
	const MAGMORTAR  ; $f0
	const PINSIR     ; $7f
	const TAUROS     ; $80
	const MILTANK    ; $f1
	const MAGIKARP   ; $81
	const GYARADOS   ; $82
	const LAPRAS     ; $83
	const DITTO      ; $84
	const EEVEE      ; $85
	const VAPOREON   ; $86
	const JOLTEON    ; $87
	const FLAREON    ; $88
	const ESPEON     ; $bf
	const UMBREON    ; $c0
	const LEAFEON    ; $fc
	const GLACEON    ; $fd
	const SYLVEON    ; $fe
	const PORYGON    ; $89
	const PORYGON2   ; $e8
	const PORYGON_Z  ; $e9
	const OMANYTE    ; $8a
	const OMASTAR    ; $8b
	const KABUTO     ; $8c
	const KABUTOPS   ; $8d
	const AERODACTYL ; $8e
	const MUNCHLAX   ; $ad
	const SNORLAX    ; $8f
	const ARTICUNO   ; $90
	const ZAPDOS     ; $91
	const MOLTRES    ; $92
	const DRATINI    ; $93
	const DRAGONAIR  ; $94
	const DRAGONITE  ; $95
	const MEWTWO     ; $96
	const MEW        ; $97
	const TOGEPI     ; $75
	const TOGETIC    ; $76
	const TOGEKISS   ; $77
NUM_POKEMON EQU const_value +- 1

	const CHIKORITA  ; $98
	const BAYLEEF    ; $99
	const MEGANIUM   ; $9a
	const CYNDAQUIL  ; $9b
	const QUILAVA    ; $9c
	const TYPHLOSION ; $9d
	const TOTODILE   ; $9e
	const CROCONAW   ; $9f
	const FERALIGATR ; $a0
	const SENTRET    ; $a1
	const FURRET     ; $a2
	const HOOTHOOT   ; $a3
	const NOCTOWL    ; $a4
	const SPINARAK   ; $a7
	const ARIADOS    ; $a8
	const CHINCHOU   ; $aa
	const LANTURN    ; $ab
	const NATU       ; $b0
	const XATU       ; $b1
	const MAREEP     ; $b2
	const FLAAFFY    ; $b3
	const AMPHAROS   ; $b4
	const SUDOWOODO  ; $b7
	const SUNKERN    ; $b9
	const SUNFLORA   ; $ba
	const YANMA      ; $bb
	const YANMEGA    ; $bc
	const WOOPER     ; $bd
	const QUAGSIRE   ; $be
	const MURKROW    ; $c1
	const HONCHKROW  ; $c2
	const MISDREAVUS ; $c4
	const MISMAGIUS  ; $c5
	const UNOWN      ; $c6
	const WOBBUFFET  ; $c7
	const GIRAFARIG  ; $c8
	const PINECO     ; $c9
	const FORRETRESS ; $ca
	const DUNSPARCE  ; $cb
	const GLIGAR     ; $cc
	const GLISCOR    ; $cd
	const SNUBBULL   ; $cf
	const GRANBULL   ; $d0
	const QWILFISH   ; $d1
	const SHUCKLE    ; $d3
	const HERACROSS  ; $d4
	const SNEASEL    ; $d5
	const WEAVILE    ; $d6
	const TEDDIURSA  ; $d7
	const URSARING   ; $d8
	const SLUGMA     ; $d9
	const MAGCARGO   ; $da
	const SWINUB     ; $db
	const PILOSWINE  ; $dc
	const MAMOSWINE  ; $dd
	const CORSOLA    ; $de
	const REMORAID   ; $df
	const OCTILLERY  ; $e0
	const SKARMORY   ; $e2
	const HOUNDOUR   ; $e3
	const HOUNDOOM   ; $e4
	const PHANPY     ; $e6
	const DONPHAN    ; $e7
	const SMEARGLE   ; $ea
	const RAIKOU     ; $f3
	const ENTEI      ; $f4
	const SUICUNE    ; $f5
	const LARVITAR   ; $f6
	const PUPITAR    ; $f7
	const TYRANITAR  ; $f8
	const LUGIA      ; $f9
	const HO_OH      ; $fa
	const CELEBI     ; $fb

	const CANCEL     ; $ff
EGG EQU CANCEL ; EGG is used as sentinel for egg pic/icon/etc


; form values

; unown
	const_def 1
	const UNOWN_A_FORM
	const UNOWN_B_FORM
	const UNOWN_C_FORM
	const UNOWN_D_FORM
	const UNOWN_E_FORM
	const UNOWN_F_FORM
	const UNOWN_G_FORM
	const UNOWN_H_FORM
	const UNOWN_I_FORM
	const UNOWN_J_FORM
	const UNOWN_K_FORM
	const UNOWN_L_FORM
	const UNOWN_M_FORM
	const UNOWN_N_FORM
	const UNOWN_O_FORM
	const UNOWN_P_FORM
	const UNOWN_Q_FORM
	const UNOWN_R_FORM
	const UNOWN_S_FORM
	const UNOWN_T_FORM
	const UNOWN_U_FORM
	const UNOWN_V_FORM
	const UNOWN_W_FORM
	const UNOWN_X_FORM
	const UNOWN_Y_FORM
	const UNOWN_Z_FORM
	const UNOWN_EXCLAMATION_FORM
	const UNOWN_QUESTION_FORM
NUM_UNOWN EQU const_value +- 1

; pikachu
	const_def 1
	const PIKACHU_PLAIN_FORM
	const PIKACHU_FLY_FORM
	const PIKACHU_SURF_FORM
	const PIKACHU_RED_FORM
	const PIKACHU_YELLOW_FORM
	const PIKACHU_SPARK_FORM

; pichu
	const_def 1
	const PICHU_PLAIN_FORM
	const PICHU_SPIKY_EARED_FORM

; arbok
	const_def 1
	const ARBOK_JOHTO_FORM
	const ARBOK_KANTO_FORM
	const ARBOK_KOGA_FORM
	const ARBOK_AGATHA_FORM
	const ARBOK_ARIANA_FORM

; magikarp
	const_def 1
	const MAGIKARP_PLAIN_FORM
	const MAGIKARP_SKELLY_FORM
	const MAGIKARP_CALICO1_FORM
	const MAGIKARP_CALICO2_FORM
	const MAGIKARP_CALICO3_FORM
	const MAGIKARP_TWO_TONE_FORM
	const MAGIKARP_ORCA_FORM
	const MAGIKARP_DAPPLES_FORM
	const MAGIKARP_TIGER_FORM
	const MAGIKARP_ZEBRA_FORM
	const MAGIKARP_STRIPE_FORM
	const MAGIKARP_BUBBLES_FORM
	const MAGIKARP_FOREHEAD_FORM
	const MAGIKARP_MASK_FORM
NUM_MAGIKARP EQU const_value +- 1

; gyarados
	const_def 1
	const GYARADOS_PLAIN_FORM
GYARADOS_RED_FORM EQU NUM_MAGIKARP + 1

; mewtwo
	const_def 1
	const MEWTWO_PLAIN_FORM
	const MEWTWO_ARMORED_FORM
