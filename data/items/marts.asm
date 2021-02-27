Marts: ; 160a9

	dw ViridianMart
	dw PewterMart
	dw MtMoonMart
	dw CeruleanMart
	dw LavenderMart
	dw VermilionMart
	dw Celadon2FMart1
	dw Celadon2FTMMart
	dw Celadon4FMart
	dw Celadon5FMart1
	dw Celadon5FMart2
	dw SaffronMart
	dw SilphCoMart
	dw FuchsiaMart
	dw CinnabarMart
	dw IndigoPlateauMart

	dw CherrygroveMart
	dw CherrygroveMartAfterDex
	dw VioletMart
	dw AzaleaMart
	dw Goldenrod2FMart1
	dw Goldenrod2FMart2
	dw Goldenrod2FMart2Eevee
	dw Goldenrod3FMart
	dw Goldenrod4FMart
	dw Goldenrod5FTMMart
	dw GoldenrodHarborMart
	dw UndergroundMart
	dw EcruteakMart
	dw OlivineMart
	dw CianwoodMart
	dw YellowForestMart
	dw MahoganyMart1
	dw MahoganyMart2
	dw BlackthornMart

	dw ShamoutiMart1
	dw ShamoutiMart2
	dw BattleTowerMart1
	dw BattleTowerMart2
	dw BattleTowerMart3
MartsEnd
; 160ed

ViridianMart:
	db 5
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db BURN_HEAL
	db -1

PewterMart:
	db 7 ; 8
	db POKE_BALL
	db POTION
;	db PEWTERCRUNCH
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db AWAKENING
	db PARALYZEHEAL
	db -1

MtMoonMart:
	db 5
	db POKE_DOLL
	db MOON_STONE
	db POKE_BALL
	db POTION
	db REPEL
	db -1

CeruleanMart:
	db 7
	db POKE_BALL
	db POTION
	db REPEL
	db ANTIDOTE
	db BURN_HEAL
	db AWAKENING
	db PARALYZEHEAL
	db -1

LavenderMart:
	db 9
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db ESCAPE_ROPE
	db SUPER_REPEL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db PARALYZEHEAL
	db -1

VermilionMart:
	db 6
	db POKE_BALL
	db SUPER_POTION
	db ICE_HEAL
	db AWAKENING
	db PARALYZEHEAL
	db REPEL
	db -1

Celadon2FMart1:
	db 9
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db SUPER_REPEL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARALYZEHEAL
	db -1

Celadon2FTMMart: ; 161ce
	db 8 ; # items
	dbw TM_SAFEGUARD,     10000
	dbw TM_BULK_UP,       20000
	dbw TM_CALM_MIND,     20000
	dbw TM_SWORDS_DANCE,  20000
	dbw TM_SUNNY_DAY,     40000
	dbw TM_RAIN_DANCE,    40000
	dbw TM_SANDSTORM,     40000
	dbw TM_HAIL,          40000
	db -1
; 161d5

Celadon4FMart:
	db 7
	db POKE_DOLL
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db MOON_STONE
	db SUN_STONE
	db -1

Celadon5FMart1:
	db 8
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPCL_ATK
	db X_SPCL_DEF
	db -1

Celadon5FMart2:
	db 6
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db ZINC
	db -1

SaffronMart:
	db 6
	db GREAT_BALL
	db HYPER_POTION
	db MAX_REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db REVIVE
	db -1

SilphCoMart: ; TODO: Add this to the map after the Rocket Takeover?
	db 5 ; # items
	db HYPER_POTION
	db MAX_REPEL
	db DUSK_BALL
	db UP_GRADE
	db DUBIOUS_DISC
	db -1

FuchsiaMart:
	db 6
	db ULTRA_BALL
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db FULL_HEAL
	db SUPER_REPEL
	db -1

CinnabarMart:
	db 7
	db ULTRA_BALL
	db GREAT_BALL
	db HYPER_POTION
	db MAX_REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db REVIVE
	db -1

IndigoPlateauMart:
	db 7
	db ULTRA_BALL
	db GREAT_BALL
	db FULL_RESTORE
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db -1

CherrygroveMart: ; 160ed
CherrygroveMartAfterDex: ; 160f3
VioletMart: ; 160fa
AzaleaMart: ; 16106
Goldenrod2FMart1: ; 16118
Goldenrod2FMart2: ; 16121
Goldenrod2FMart2Eevee: ; 16140
Goldenrod3FMart: ; 1612b
Goldenrod4FMart: ; 16134
Goldenrod5FTMMart: ; 1613b
GoldenrodHarborMart:
UndergroundMart: ; 1620e
EcruteakMart: ; 1615e
OlivineMart: ; 16153
CianwoodMart: ; 16111
YellowForestMart: ; 1614c
MahoganyMart1: ; 1616a
MahoganyMart2: ; 16170
BlackthornMart: ; 1617b
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARALYZEHEAL
	db AWAKENING
	db -1
; 16186

ShamoutiMart1:
	db 4 ; # items
	db MENTAL_HERB
	db POWER_HERB
	db WHITE_HERB
	db BIG_ROOT
	db -1

ShamoutiMart2:
	db 6 ; # items
	db DAMP_ROCK
	db HEAT_ROCK
	db SMOOTH_ROCK
	db ICY_ROCK
	db LIGHT_CLAY
	db EVIOLITE
	db -1

BattleTowerMart1:
	db 9 ; # items
	db CHOICE_BAND,  1
	db CHOICE_SCARF, 1
	db CHOICE_SPECS, 1
	db EXPERT_BELT,  1
	db MUSCLE_BAND,  1
	db WISE_GLASSES, 1
	db METRONOME_I,  1
	db BINDING_BAND, 1
	db GRIP_CLAW,    1
	db -1

BattleTowerMart2:
	db 8 ; # items
	db RARE_CANDY,   1
	db PP_MAX,       1
	db ABILITY_CAP,  1
	db WEAK_POLICY,  1
	db LIFE_ORB,     1
	db FLAME_ORB,    1
	db TOXIC_ORB,    1
	db BLACK_SLUDGE, 1
	db -1

BattleTowerMart3:
	db 7 ; # items
	db MACHO_BRACE,  1
	db FOCUS_BAND,   1
	db FOCUS_SASH,   1
	db ASSAULT_VEST, 1
	db PROTECT_PADS, 1
	db ROCKY_HELMET, 1
	db SAFE_GOGGLES, 1
	db -1
