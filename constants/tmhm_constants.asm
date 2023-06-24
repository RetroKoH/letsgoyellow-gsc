; tm/tutor ids
; indexes for:
; - TMMoves (see data/moves/tm_tutor_moves.asm)
	const_def

__tm_value__ = 1

add_tmnum: MACRO
\1_TMNUM EQU __tm_value__
__tm_value__ += 1
ENDM

add_tm: MACRO
if !DEF(TM01)
TM01 = const_value
endc
	const TM_\1
	add_tmnum \1
ENDM

	add_tm HEADBUTT     ; $00
	add_tm TAUNT        ; $01
	add_tm HELPING_HAND ; $02
	add_tm TELEPORT     ; $03
	add_tm REST         ; $04
	add_tm LIGHT_SCREEN ; $05
	add_tm PROTECT      ; $06
	add_tm SUBSTITUTE   ; $07
	add_tm REFLECT      ; $08
	add_tm DIG          ; $09
	add_tm WILL_O_WISP  ; $0a
	add_tm FACADE       ; $0b
	add_tm BRICK_BREAK  ; $0c
	add_tm FLY          ; $0d
	add_tm SEISMIC_TOSS ; $0e
	add_tm THUNDER_WAVE ; $0f
	add_tm DRAGON_TAIL  ; $10
	add_tm U_TURN       ; $11
	add_tm IRON_TAIL    ; $12
	add_tm DARK_PULSE   ; $13
	add_tm FOUL_PLAY    ; $14
	add_tm ROCK_SLIDE   ; $15
	add_tm THUNDERPUNCH ; $16
	add_tm X_SCISSOR    ; $17
	add_tm WATERFALL    ; $18
	add_tm POISON_JAB   ; $19
	add_tm TOXIC        ; $1a
	add_tm TRI_ATTACK   ; $1b
	add_tm SCALD        ; $1c
	add_tm BULK_UP      ; $1d
	add_tm FIRE_PUNCH   ; $1e
	add_tm DAZZLINGLEAM ; $1f
	add_tm CALM_MIND    ; $20
	add_tm DRAGON_PULSE ; $21
	add_tm ICE_PUNCH    ; $22
	add_tm THUNDERBOLT  ; $23
	add_tm FLAMETHROWER ; $24
	add_tm THUNDER      ; $25
	add_tm OUTRAGE      ; $26
	add_tm PSYCHIC      ; $27
	add_tm EARTHQUAKE   ; $28
	add_tm EXPLOSION    ; $29
	add_tm SHADOW_BALL  ; $2a
	add_tm PLAY_ROUGH   ; $2b
	add_tm SOLAR_BEAM   ; $2c
	add_tm FIRE_BLAST   ; $2d
	add_tm SURF         ; $2e
	add_tm HYPER_BEAM   ; $2f
	add_tm SUPERPOWER   ; $30
	add_tm ROOST        ; $31
	add_tm BLIZZARD     ; $32
	add_tm SLUDGE_BOMB  ; $33
	add_tm MEGA_DRAIN   ; $34
	add_tm FLASH_CANNON ; $35
	add_tm ICE_BEAM     ; $36
	add_tm STEALTH_ROCK ; $37
	add_tm WORK_UP      ; $38
	add_tm DRILL_RUN    ; $39
	add_tm DREAM_EATER  ; $3a
	add_tm MEGAHORN     ; $3b
	add_tm RAIN_DANCE   ; $3c
	add_tm SUNNY_DAY    ; $3d
	add_tm SANDSTORM    ; $3e
	add_tm HAIL         ; $3f
	add_tm TRICK_ROOM   ; $40
	add_tm VOLT_SWITCH  ; $41
	add_tm FALSE_SWIPE  ; $42
	add_tm BULLET_SEED  ; $43
	add_tm DRAIN_PUNCH  ; $44
	add_tm ENERGY_BALL  ; $45
	add_tm LOW_SWEEP    ; $46
	add_tm ACROBATICS   ; $47
	add_tm BULLDOZE     ; $48
	add_tm SMART_STRIKE ; $49
	add_tm AURORA_VEIL  ; $4a
NUM_TMS = __tm_value__ - 1

add_mt: MACRO
if !DEF(MT01)
MT01 = const_value
endc
	add_tmnum \1
ENDM

	add_mt WEATHER_BALL ; $4b
	add_mt FOCUS_BLAST  ; $4c
	add_mt AERIAL_ACE   ; $4d
	add_mt GUNK_SHOT    ; $4e
	add_mt EARTH_POWER  ; $4f
	add_mt STONE_EDGE   ; $50
	add_mt SIGNAL_BEAM  ; $51
	add_mt HEX          ; $52
	add_mt GYRO_BALL    ; $53
	add_mt FLAME_CHARGE ; $54
	add_mt LIQUIDATION  ; $55
	add_mt GRASS_KNOT   ; $56
	add_mt WILD_CHARGE  ; $57
	add_mt ZEN_HEADBUTT ; $58
	add_mt AVALANCHE    ; $59
	add_mt DRAGON_DANCE ; $5a
	add_mt KNOCK_OFF    ; $5b
	add_mt DISARM_VOICE ; $5c
NUM_TUTORS = __tm_value__ - NUM_TMS - 1

NUM_TM_TUTOR EQU NUM_TMS + NUM_TUTORS
