fishgroup: MACRO
; mon chance, mon/item chance, group
	db \1, \2
	dw \3
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 65 percent + 1, 85 percent + 1, .Shore_Group
	fishgroup 75 percent + 1, 85 percent + 1, .Ocean_Group
	fishgroup 70 percent + 1, 85 percent + 1, .Lake_Group
	fishgroup 55 percent + 1, 65 percent + 1, .Pond_Group
	fishgroup 60 percent + 1, 70 percent + 1, .Dratini_Group
	fishgroup 60 percent + 1, 70 percent + 1, .Goldeen_Swarm_Group
	fishgroup 60 percent + 1, 70 percent + 1, .Gyarados_Group ; MIGHT REMOVE?
	fishgroup 60 percent + 1, 70 percent + 1, .Dratini_Group ; MIGHT REMOVE?
	fishgroup 60 percent + 1, 70 percent + 1, .Seafoam_Group
	fishgroup 65 percent + 1, 85 percent + 1, .Goldeen_Group ; (No Swarm)
	assert_table_length NUM_FISHGROUPS

.Shore_Group:
	db  85 percent + 1, 0, 0			; Magikarp/Staryu time-based
	db 100 percent,     KRABBY,     20
.Ocean_Group:
	db  40 percent,     0, 1			; Magikarp/Chinchou time-based
	db  70 percent + 1, TENTACOOL,  20
	db 100 percent,     SHELLDER,   20
.Lake_Group:
	db  35 percent,     MAGIKARP,   20
	db  70 percent + 1, PSYDUCK,    20
	db 100 percent,     POLIWAG,    20
.Pond_Group:
	db  60 percent + 1, MAGIKARP,   20
	db 100 percent,     POLIWAG,    20
.Dratini_Group:
	db  85 percent + 1, MAGIKARP,   20
	db 100 percent,     DRATINI,    20
.Goldeen_Swarm_Group:
	db  10 percent + 1, MAGIKARP,   20
	db 100 percent,     GOLDEEN,    20
.Gyarados_Group:
	db  65 percent + 1, MAGIKARP,   20
	db 100 percent,     GYARADOS,   20
.Seafoam_Group:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     KRABBY,     20
	db  90 percent + 1, KRABBY,     20
	db 100 percent,     HORSEA,     20
.Goldeen_Group:
	db  80 percent + 1, MAGIKARP,   20
	db 100 percent,     GOLDEEN,    20

TimeFishGroups:
	;  day              nite
	db MAGIKARP,   20,  STARYU,     20
	db MAGIKARP,   20,  CHINCHOU,   20

FishItems:
	db PEARL
	db BIG_PEARL
	db BOTTLE_CAP
