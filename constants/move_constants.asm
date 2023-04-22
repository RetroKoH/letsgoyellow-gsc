; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; $00
	const STRIKE       ; $01 - POUND, SCRATCH, TACKLE
	const PAY_DAY      ; $02
	const FIRE_PUNCH   ; $03
	const ICE_PUNCH    ; $04
	const THUNDERPUNCH ; $05
	const VISE_GRIP    ; $06
	const RAZOR_WIND   ; $07
	const SWORDS_DANCE ; $08
	const GUST         ; $09
	const WING_ATTACK  ; $0a
	const WHIRLWIND    ; $0b
	const FLY          ; $0c
	const VINE_WHIP    ; $0d
	const STOMP        ; $0e
	const DOUBLE_KICK  ; $0f
	const SAND_ATTACK  ; $10
	const HEADBUTT     ; $11
	const HORN_ATTACK  ; $12
	const FURY_STRIKES ; $13
	const BODY_SLAM    ; $14
	const WRAP         ; $15
	const TAKE_DOWN    ; $16
	const THRASH       ; $17
	const DOUBLE_EDGE  ; $18
	const POISON_STING ; $19
	const PIN_MISSILE  ; $1a
	const LEER         ; $1b
	const BITE         ; $1c
	const GROWL        ; $1d
	const ROAR         ; $1e
	const SING         ; $1f
	const SUPERSONIC   ; $20
	const DISABLE      ; $21
	const ACID         ; $22
	const EMBER        ; $23
	const FLAMETHROWER ; $24
	const WATER_GUN    ; $25
	const HYDRO_PUMP   ; $26
	const SURF         ; $27
	const ICE_BEAM     ; $28
	const BLIZZARD     ; $29
	const PSYBEAM      ; $2a
	const BUBBLE_BEAM  ; $2b
	const AURORA_BEAM  ; $2c
	const HYPER_BEAM   ; $2d
	const PECK         ; $2e
	const DRILL_PECK   ; $2f
	const LOW_KICK     ; $30
	const COUNTER      ; $31
	const SEISMIC_TOSS ; $32
	const ABSORB       ; $33
	const MEGA_DRAIN   ; $34
	const LEECH_SEED   ; $35
	const GROWTH       ; $36
	const RAZOR_LEAF   ; $37
	const SOLAR_BEAM   ; $38
	const POISONPOWDER ; $39
	const STUN_SPORE   ; $3a
	const SLEEP_POWDER ; $3b
	const PETAL_DANCE  ; $3c
	const STRING_SHOT  ; $3d
	const FIRE_SPIN    ; $3e
	const THUNDERSHOCK ; $3f
	const THUNDERBOLT  ; $40
	const THUNDER_WAVE ; $41
	const THUNDER      ; $42
	const ROCK_THROW   ; $43
	const EARTHQUAKE   ; $44
	const DIG          ; $45
	const TOXIC        ; $46
	const CONFUSION    ; $47
	const PSYCHIC_M    ; $48
	const HYPNOSIS     ; $49
	const AGILITY      ; $4a
	const QUICK_ATTACK ; $4b
	const TELEPORT     ; $4c
	const NIGHT_SHADE  ; $4d
	const MIMIC        ; $4e
	const SCREECH      ; $4f
	const DOUBLE_TEAM  ; $50
	const RECOVER      ; $51
	const MINIMIZE     ; $52
	const SMOKESCREEN  ; $53
	const CONFUSE_RAY  ; $54
	const DEFENSE_CURL ; $55 - Withdraw and Harden users use this
	const BARRIER      ; $56
	const LIGHT_SCREEN ; $57
	const HAZE         ; $58
	const REFLECT      ; $59
	const METRONOME    ; $5a
	const LICK         ; $5b
	const SLUDGE       ; $5c
	const FIRE_BLAST   ; $5d
	const WATERFALL    ; $5e
	const SWIFT        ; $5f
	const SKULL_BASH   ; $60
	const AMNESIA      ; $61
	const HI_JUMP_KICK ; $62
	const GLARE        ; $63
	const DREAM_EATER  ; $64
	const POISON_GAS   ; $65
	const LEECH_LIFE   ; $66
	const LOVELY_KISS  ; $67
	const SKY_ATTACK   ; $68
	const TRANSFORM    ; $69
	const SPORE        ; $6a
	const SPLASH       ; $6b
	const ACID_ARMOR   ; $6c
	const CRABHAMMER   ; $6d
	const EXPLOSION    ; $6e
	const BONEMERANG   ; $6f
	const REST         ; $70
	const ROCK_SLIDE   ; $71
	const HYPER_FANG   ; $72
	const CONVERSION   ; $73
	const TRI_ATTACK   ; $74
	const SUPER_FANG   ; $75
	const SLASH        ; $76
	const SUBSTITUTE   ; $77
	const TRIPLE_KICK  ; $78
	const FLAME_WHEEL  ; $79
	const FLAIL        ; $7a
	const PROTECT      ; $7b
	const MACH_PUNCH   ; $7c
	const BELLY_DRUM   ; $7d
	const SLUDGE_BOMB  ; $7e
	const ICY_WIND     ; $7f
	const OUTRAGE      ; $80
	const SANDSTORM    ; $81
	const CHARM        ; $82
	const ROLLOUT      ; $83
	const FALSE_SWIPE  ; $84
	const FURY_CUTTER  ; $85
	const HEAL_BELL    ; $86
	const RETURN       ; $87
	const FRUSTRATION  ; $88
	const DYNAMICPUNCH ; $89
	const MEGAHORN     ; $8a
	const DRAGONBREATH ; $8b
	const ENCORE       ; $8c
	const PURSUIT      ; $8d
	const RAPID_SPIN   ; $8e
	const IRON_TAIL    ; $8f
	const METAL_CLAW   ; $90
	const HEALINGLIGHT ; $91
	const CROSS_CHOP   ; $92
	const RAIN_DANCE   ; $93
	const SUNNY_DAY    ; $94
	const CRUNCH       ; $95
	const MIRROR_COAT  ; $96
	const EXTREMESPEED ; $97
	const ANCIENTPOWER ; $98
	const SHADOW_BALL  ; $99
	const WHIRLPOOL    ; $9a
	const FAKE_OUT     ; $9b
	const HAIL         ; $9c
	const WILL_O_WISP  ; $9d
	const FACADE       ; $9e
	const TAUNT        ; $9f
	const HELPING_HAND ; $a0
	const WISH         ; $a1
	const SUPERPOWER   ; $a2
	const RECYCLE      ; $a3
	const BRICK_BREAK  ; $a4
	const YAWN         ; $a5
	const KNOCK_OFF    ; $a6
	const BLAZE_KICK   ; $a7
	const HYPER_VOICE  ; $a8
	const POISON_FANG  ; $a9
	const METEOR_MASH  ; $aa
	const WEATHER_BALL ; $ab
	const SIGNAL_BEAM  ; $ac
	const AERIAL_ACE   ; $ad
	const ICICLE_SPEAR ; $ae
	const BULK_UP      ; $af
	const VOLT_TACKLE  ; $b0
	const CALM_MIND    ; $b1
	const LEAF_BLADE   ; $b2
	const DRAGON_DANCE ; $b3
	const ROCK_BLAST   ; $b4
	const WATER_PULSE  ; $b5
	const ROOST        ; $b6
	const GYRO_BALL    ; $b7
	const FEINT        ; $b8
	const U_TURN       ; $b9
	const CLOSE_COMBAT ; $ba
	const SUCKER_PUNCH ; $bb
	const FLARE_BLITZ  ; $bc
	const POISON_JAB   ; $bd
	const DARK_PULSE   ; $be
	const NIGHT_SLASH  ; $bf
	const AQUA_TAIL    ; $c0
	const BULLET_SEED  ; $c1
	const AIR_SLASH    ; $c2
	const X_SCISSOR    ; $c3
	const BUG_BUZZ     ; $c4
	const DRAGON_PULSE ; $c5
	const DRAIN_PUNCH  ; $c6
	const FOCUS_BLAST  ; $c7
	const ENERGY_BALL  ; $c8
	const BRAVE_BIRD   ; $c9
	const EARTH_POWER  ; $ca
	const NASTY_PLOT   ; $cb
	const BULLET_PUNCH ; $cc
	const AVALANCHE    ; $cd
	const ICE_SHARD    ; $ce
	const PSYCHO_CUT   ; $cf
	const ZEN_HEADBUTT ; $d0
	const FLASH_CANNON ; $d1
	const TRICK_ROOM   ; $d2
	const LEAF_STORM   ; $d3
	const POWER_WHIP   ; $d4
	const ROCK_WRECKER ; $d5
	const CROSS_POISON ; $d6
	const GUNK_SHOT    ; $d7
	const IRON_HEAD    ; $d8
	const STONE_EDGE   ; $d9
	const STEALTH_ROCK ; $da
	const GRASS_KNOT   ; $db
	const BUG_BITE     ; $dc
	const AQUA_JET     ; $dd
	const VENOSHOCK    ; $de
	const QUIVER_DANCE ; $df
	const HEAVY_SLAM   ; $e0
	const COIL         ; $e1
	const LOW_SWEEP    ; $e2
	const FOUL_PLAY    ; $e3
	const CLEAR_SMOG   ; $e4
	const SCALD        ; $e5
	const SHELL_SMASH  ; $e6
	const HEX          ; $e7
	const ACROBATICS   ; $e8
	const VOLT_SWITCH  ; $e9
	const BULLDOZE     ; $ea
	const DRAGON_TAIL  ; $eb
	const HARDEN       ; $ec - Replace with WORK_UP (Amalgamated move
	const WILD_CHARGE  ; $ed
	const DRILL_RUN    ; $ee
	const HURRICANE    ; $ef
	const ICICLE_CRASH ; $f0
	const FELL_STINGER ; $f1
	const FREEZE_DRY   ; $f2
	const DISARM_VOICE ; $f3
	const PLAY_ROUGH   ; $f4
	const DRAIN_KISS   ; $f5 - Replace with FAIRY_WIND (Or not?)
	const MOONBLAST    ; $f6
	const DAZZLINGLEAM ; $f7
	const SMART_STRIKE ; $f8
	const AURORA_VEIL  ; $f9
	const SHADOW_BONE  ; $fa
	const LIQUIDATION  ; $fb
	const DUOIRONBASH  ; $fc
	const STRANGESTEAM ; $fd
	const RAGE_FIST    ; $fe
	const STRUGGLE     ; $ff
NUM_ATTACKS EQU const_value - 1

; Battle animations use the same constants as the moves up to this point
	const_next $100
	const ANIM_THROW_POKE_BALL   ; $100
	const ANIM_SEND_OUT_MON      ; $101
	const ANIM_RETURN_MON        ; $102
	const ANIM_CONFUSED          ; $103
	const ANIM_SLP               ; $104
	const ANIM_BRN               ; $105
	const ANIM_PSN               ; $106
	const ANIM_SAP               ; $107
	const ANIM_FRZ               ; $108
	const ANIM_PAR               ; $109
	const ANIM_IN_LOVE           ; $10a
	const ANIM_IN_SANDSTORM      ; $10b
	const ANIM_IN_HAIL           ; $10c
	const ANIM_UNDER_CURSE       ; $10d
	const ANIM_IN_WHIRLPOOL      ; $10e
; battle anims
	const ANIM_MISS              ; $10f
	const ANIM_ENEMY_DAMAGE      ; $110
	const ANIM_ENEMY_STAT_DOWN   ; $111
	const ANIM_PLAYER_STAT_DOWN  ; $112
	const ANIM_PLAYER_DAMAGE     ; $113
	const ANIM_WOBBLE            ; $114
	const ANIM_SHAKE             ; $115
	const ANIM_HIT_CONFUSION     ; $116
	const ANIM_SHARPEN           ; $117
	const ANIM_STAT_UP           ; $118
	const ANIM_STAT_DOWN         ; $119
NUM_BATTLE_ANIMS EQU const_value - 1

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION

; Field techniques
	const_def 1
	const CHOP
	const SOAR
	const SWIM
	const PUSH_T
	const GLOW
	const WARP
	const LURE
	const LULL
	const HEAL
NUM_FIELDTECHVALUES EQU const_value - 1
