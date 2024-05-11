Marts:
	table_width 2, Marts
	dw JohtoMart;	dw CherrygroveMart
	dw JohtoMart;	dw CherrygroveMartAfterDex
	dw JohtoMart;	dw VioletMart
	dw JohtoMart;	dw AzaleaMart
	dw JohtoMart;	dw Goldenrod2FMart1
	dw JohtoMart;	dw Goldenrod2FMart2
	dw JohtoMart;	dw Goldenrod2FMart2Eevee
	dw JohtoMart;	dw Goldenrod3FMart
	dw JohtoMart;	dw Goldenrod4FMart
	dw JohtoMart;	dw Goldenrod5FTMMart
	dw JohtoMart;	dw GoldenrodHarborMart
	dw JohtoMart;	dw UndergroundMart
	dw JohtoMart;	dw EcruteakMart
	dw JohtoMart;	dw OlivineMart
	dw JohtoMart;	dw CianwoodMart
	dw JohtoMart;	dw YellowForestMart
	dw JohtoMart;	dw MahoganyMart1
	dw JohtoMart;	dw MahoganyMart2
	dw JohtoMart;	dw BlackthornMart
	dw IndigoPlateauMart
	dw ViridianMart
	dw PewterMart
	dw MtMoonMart
	dw CeruleanMart
	dw LavenderMart
	dw VermilionMart
	dw Celadon2FMart1
	dw Celadon2FMart2
	dw Celadon3FTMMart
	dw Celadon4FMart
	dw Celadon5FMart1
	dw Celadon5FMart2
	dw SaffronMart
	dw SilphCoMart
	dw FuchsiaMart
	dw JohtoMart;	dw ShamoutiMart1
	dw JohtoMart;	dw ShamoutiMart2
	dw BattleTowerMart1
	dw BattleTowerMart2
	dw BattleTowerMart3
	assert_table_length NUM_MARTS

JohtoMart:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db -1

IndigoPlateauMart:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1

ViridianMart:
	db 4 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db -1

PewterMart:
	db 8 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db REPEL
	db LURE_ITEM
	db -1

MtMoonMart:
	db 7 ; # items
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db SUPER_REPEL
	db LURE_ITEM
	db SUPER_LURE
	db -1

CeruleanMart:
	db 9 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db REPEL
	db LURE_ITEM
	db -1

LavenderMart:
	db 8 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db BURN_HEAL
	db ICE_HEAL
	db SUPER_REPEL
	db SUPER_LURE
	db -1

VermilionMart:
	db 8 ; # items
	db POKE_BALL
	db SUPER_POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db ICE_HEAL
	db REPEL
	db LURE_ITEM
	db -1

Celadon2FMart1:
	db 10 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db SUPER_REPEL
	db SUPER_LURE
	db -1

Celadon2FMart2:
	db 4 ; # items
	dbw TM_SUNNY_DAY,     40000
	dbw TM_RAIN_DANCE,    40000
	dbw TM_SANDSTORM,     40000
	dbw TM_HAIL,          40000
	db -1

Celadon3FTMMart:
	db 3 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db -1

Celadon4FMart:
	db 5 ; # items
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db LEAF_STONE
	db ICE_STONE
	db -1

Celadon5FMart1:
	db 6 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db ZINC
	db CARBOS
	db -1

Celadon5FMart2:
	db 8 ; # items
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPCL_ATK
	db X_SPCL_DEF
	db X_ACCURACY
	db DIRE_HIT
	db GUARD_SPEC
	db -1

SaffronMart:
	db 6 ; # items
	db GREAT_BALL
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db MAX_REPEL
	db MAX_LURE
	db -1

SilphCoMart:
	db 5 ; # items
	db MAX_POTION
	db MAX_REPEL
	db DREAM_BALL
	db UP_GRADE
	db DUBIOUS_DISC
	db -1

FuchsiaMart:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db REVIVE
	db FULL_HEAL
	db MAX_REPEL
	db MAX_LURE
	db -1

BattleTowerMart1:
	db 9 ; # items
	db CHOICE_BAND,  48
	db CHOICE_SCARF, 48
	db CHOICE_SPECS, 48
	db EXPERT_BELT,  32
	db MUSCLE_BAND,  32
	db WISE_GLASSES, 32
	db METRONOME_I,  32
	db BINDING_BAND, 32
	db GRIP_CLAW,    32
	db -1

BattleTowerMart2:
	db 8 ; # items
	db RARE_CANDY,   64
	db PP_MAX,       64
	db ABILITY_CAP,  32
	db WEAK_POLICY,  48
	db LIFE_ORB,     48
	db FLAME_ORB,    32
	db TOXIC_ORB,    32
	db BLACK_SLUDGE, 32
	db -1

BattleTowerMart3:
	db 7 ; # items
	db MACHO_BRACE,  16
	db FOCUS_BAND,   16
	db FOCUS_SASH,   48
	db ASSAULT_VEST, 48
	db PROTECT_PADS, 16
	db ROCKY_HELMET, 48
	db SAFE_GOGGLES, 32
	db -1

; ScalingMarts:
	; dw MartTierZero		; Unused (Mart will be "restocking")
	; dw MartTierOne		; After meeting Oak
	; dw MartTierTwo		; After meeting Blue in Pewter
	; dw MartTierThree	; After seeing Rockets near Mt. Moon
	; dw MartTierFour		; 1 Corruption defeated
	; dw MartTierFive		; 2 Corruptions defeated
	; dw MartTierSix		; 3 Corruptions defeated
	; dw MartTierSeven	; 4 Corruptions defeated
	; dw MartTierEight	; 5 Corruptions defeated
	; dw MartTierNine		; 6 Corruptions defeated
	; dw MartTierTen		; 7 Corruptions defeated
	; dw MartTierEleven	; 8 Corruptions defeated
	; dw MartTierTwelve	; 9 Corruptions defeated
	; dw MartTierThirteen	; Defeated Corrupted Snorlax
	; dw MartTierFourteen	; Defeated Shadow Mewtwo
	; dw MartTierFifteen	; Should be Unused

; MartTierZero:
	; db 2 ; # items
	; db POKE_BALL
	; db POTION
	; db -1

; MartTierOne:
; MartTierTwo:
; MartTierThree:
	; db 4 ; # items
	; db POKE_BALL
	; db POTION
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db -1

; MartTierFour:
	; db 6 ; # items
	; db POKE_BALL
	; db POTION
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db REPEL
	; db -1

; MartTierFive:
	; db 9 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db POTION
	; db SUPER_POTION
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db REPEL
	; db LURE_ITEM
	; db -1

; MartTierSix:
	; db 11 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db POTION
	; db SUPER_POTION
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db REPEL
	; db LURE_ITEM
	; db -1

; MartTierSeven:
	; db 14 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db POTION
	; db SUPER_POTION
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL ; Move to next tier?
	; db REPEL
	; db SUPER_REPEL
	; db LURE_ITEM
	; db -1

; MartTierEight:
	; db 17 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db -1

; MartTierNine:
	; db 18 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db MAX_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db -1

; MartTierTen:
	; db 20 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db MAX_POTION
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db MAX_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db MAX_LURE
	; db -1

; MartTierEleven:
; MartTierTwelve:
	; db 20 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db MAX_POTION
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db MAX_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db MAX_LURE
	; db -1

; MartTierThirteen:
	; db 21 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db MAX_POTION
	; db FULL_RESTORE
	; db REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db MAX_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db MAX_LURE
	; db -1

; MartTierFourteen:
; MartTierFifteen:
	; db 23 ; # items
	; db POKE_BALL
	; db GREAT_BALL
	; db ULTRA_BALL
	; db POTION
	; db SUPER_POTION
	; db HYPER_POTION
	; db MAX_POTION
	; db FULL_RESTORE
	; db REVIVE
	; db MAX_REVIVE
	; db ANTIDOTE
	; db PARALYZEHEAL
	; db AWAKENING
	; db BURN_HEAL
	; db ICE_HEAL
	; db FULL_HEAL
	; db REPEL
	; db SUPER_REPEL
	; db MAX_REPEL
	; db LURE_ITEM
	; db SUPER_LURE
	; db MAX_LURE
	; db -1
