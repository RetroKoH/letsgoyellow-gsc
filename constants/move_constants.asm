; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; $00
	const STRIKE       ; $01 - POUND, SCRATCH, TACKLE
	const FIRE_PUNCH   ; $03
	const ICE_PUNCH    ; $04
	const THUNDERPUNCH ; $05
	const VISE_GRIP    ; $06
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
	const AMNESIA      ; $61
	const HI_JUMP_KICK ; $62
	const GLARE        ; $63
	const DREAM_EATER  ; $64
	const POISON_GAS   ; $65
	const LEECH_LIFE   ; $66
	const SKY_ATTACK   ; $68
	const TRANSFORM    ; $69
	const SPORE        ; $6a
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
	const FLAIL        ; $79
	const PROTECT      ; $7a
	const MACH_PUNCH   ; $7b
	const BELLY_DRUM   ; $7c
	const SLUDGE_BOMB  ; $7d
	const ICY_WIND     ; $7e
	const OUTRAGE      ; $7f
	const SANDSTORM    ; $80
	const CHARM        ; $81
	const ROLLOUT      ; $82
	const FALSE_SWIPE  ; $83
	const FURY_CUTTER  ; $84
	const HEAL_BELL    ; $85
	const RETURN       ; $86
	const FRUSTRATION  ; $87
	const DYNAMICPUNCH ; $88
	const MEGAHORN     ; $89
	const DRAGONBREATH ; $8a
	const ENCORE       ; $8b
	const PURSUIT      ; $8c
	const RAPID_SPIN   ; $8d
	const IRON_TAIL    ; $8e
	const METAL_CLAW   ; $8f
	const HEALINGLIGHT ; $90
	const CROSS_CHOP   ; $91
	const RAIN_DANCE   ; $92
	const SUNNY_DAY    ; $93
	const CRUNCH       ; $94
	const MIRROR_COAT  ; $95
	const EXTREMESPEED ; $96
	const ANCIENTPOWER ; $97
	const SHADOW_BALL  ; $98
	const WHIRLPOOL    ; $99
	const FAKE_OUT     ; $9a
	const HAIL         ; $9b
	const WILL_O_WISP  ; $9c
	const FACADE       ; $9d
	const TAUNT        ; $9e
	const HELPING_HAND ; $9f
	const WISH         ; $a0
	const SUPERPOWER   ; $a1
	const RECYCLE      ; $a2
	const BRICK_BREAK  ; $a3
	const YAWN         ; $a4
	const KNOCK_OFF    ; $a5
	const BLAZE_KICK   ; $a6
	const HYPER_VOICE  ; $a7
	const POISON_FANG  ; $a8
	const METEOR_MASH  ; $a9
	const ASTONISH     ; NEW MOVE
	const WEATHER_BALL ; $aa
	const SIGNAL_BEAM  ; $ab
	const AERIAL_ACE   ; $ac
	const ICICLE_SPEAR ; $ad
	const BULK_UP      ; $ae
	const VOLT_TACKLE  ; $af
	const CALM_MIND    ; $b0
	const LEAF_BLADE   ; $b1
	const DRAGON_DANCE ; $b2
	const ROCK_BLAST   ; $b3
	const WATER_PULSE  ; $b4
	const ROOST        ; $b5
	const GYRO_BALL    ; $b6
	const FEINT        ; $b7
	const U_TURN       ; $b8
	const CLOSE_COMBAT ; $b9
	const SUCKER_PUNCH ; $ba
	const FLARE_BLITZ  ; $bb
	const POISON_JAB   ; $bc
	const DARK_PULSE   ; $bd
	const NIGHT_SLASH  ; $be
	const AQUA_TAIL    ; $bf
	const BULLET_SEED  ; $c0
	const AIR_SLASH    ; $c1
	const X_SCISSOR    ; $c2
	const BUG_BUZZ     ; $c3
	const DRAGON_PULSE ; $c4
	const DRAIN_PUNCH  ; $c5
	const FOCUS_BLAST  ; $c6
	const ENERGY_BALL  ; $c7
	const BRAVE_BIRD   ; $c8
	const EARTH_POWER  ; $c9
	const NASTY_PLOT   ; $ca
	const BULLET_PUNCH ; $cb
	const AVALANCHE    ; $cc
	const ICE_SHARD    ; $cd
	const PSYCHO_CUT   ; $ce
	const ZEN_HEADBUTT ; $cf
	const FLASH_CANNON ; $d0
	const TRICK_ROOM   ; $d1
	const LEAF_STORM   ; $d2
	const POWER_WHIP   ; $d3
	const ROCK_WRECKER ; $d4
	const CROSS_POISON ; $d5
	const GUNK_SHOT    ; $d6
	const IRON_HEAD    ; $d7
	const STONE_EDGE   ; $d8
	const STEALTH_ROCK ; $d9
	const GRASS_KNOT   ; $da
	const BUG_BITE     ; $db
	const AQUA_JET     ; $dc
	const VENOSHOCK    ; $dd
	const QUIVER_DANCE ; $de
	const HEAVY_SLAM   ; $df
	const FLAME_CHARGE ; $e0
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
	const WORK_UP      ; $ec
	const WILD_CHARGE  ; $ed
	const DRILL_RUN    ; $ee
	const HURRICANE    ; $ef
	const SNARL        ; NEW MOVE
	const ICICLE_CRASH ; $f0
	const FELL_STINGER ; $f1
	const FREEZE_DRY   ; $f2
	const DISARM_VOICE ; $f3
	const PLAY_ROUGH   ; $f4
	const FAIRY_WIND   ; NEW MOVE
	const DRAIN_KISS   ; $f5 - Replace with FAIRY_WIND (Or not?)
	const MOONBLAST    ; $f6
	const DAZZLINGLEAM ; $f7
	const SMART_STRIKE ; $f8
	const AURORA_VEIL  ; $f9
	const SHADOW_BONE  ; $fa
	const LIQUIDATION  ; $fb
	const DUOIRONBASH  ; $fc
	const STRANGESTEAM ; $fd
	const STONE_AXE    ; NEW MOVE
	const CHLOROBLAST  ; NEW MOVE
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
	const SLAM
	const GLOW
	const WARP
	const LURE
	const LULL
	const HEAL
NUM_FIELDTECHVALUES EQU const_value - 1
