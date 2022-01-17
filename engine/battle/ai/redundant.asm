AI_Redundant: ; 2c41a
; Check if move effect c will fail because it's already been used.
; Return z if the move is a good choice.
; Return nz if the move is a bad choice.
	ld a, c
	ld de, 3
	ld hl, .Moves
	call IsInArray
	jp nc, .NotRedundant
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Moves: ; 2c42c ADD TOXIC to this list
	dbw EFFECT_DREAM_EATER,   .DreamEater
	dbw EFFECT_HEAL,          .Heal
	dbw EFFECT_LIGHT_SCREEN,  .LightScreen
	dbw EFFECT_FOCUS_ENERGY,  .FocusEnergy
	dbw EFFECT_CONFUSE,       .Confuse
	dbw EFFECT_TRANSFORM,     .Transform
	dbw EFFECT_REFLECT,       .Reflect
	dbw EFFECT_SUBSTITUTE,    .Substitute
	dbw EFFECT_LEECH_SEED,    .LeechSeed
	dbw EFFECT_DISABLE,       .Disable
	dbw EFFECT_ENCORE,        .Encore
	dbw EFFECT_FAKE_OUT,      .FakeOut
	dbw EFFECT_SPIKES,        .Spikes
	dbw EFFECT_SANDSTORM,     .Sandstorm
	dbw EFFECT_HAIL,          .Hail
	dbw EFFECT_AURORA_VEIL,   .AuroraVeil
	dbw EFFECT_RAIN_DANCE,    .RainDance
	dbw EFFECT_SUNNY_DAY,     .SunnyDay
	dbw EFFECT_TELEPORT,      .Teleport
	dbw EFFECT_SYNTHESIS,     .Synthesis
	dbw EFFECT_SWAGGER,       .Swagger
	dbw EFFECT_FUTURE_SIGHT,  .FutureSight ; USE FOR WISH
	dbw EFFECT_BATON_PASS,    .BatonPass
	dbw EFFECT_ROOST,         .Roost
	db -1

.Confuse:
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	ret ; nz if already confused

.Disable:
	ld a, [wPlayerDisableCount]
	and a
	ret

.Encore:
	ld a, [wPlayerEncoreCount]
	and a
	ret

.FocusEnergy:
	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_FOCUS_ENERGY, a
	ret

.Foresight:
	ld a, [wPlayerSubStatus1]
	bit SUBSTATUS_IDENTIFIED, a
	ret

.FutureSight:
	ld a, [wEnemyFutureSightCount]
	and a
	ret

.LeechSeed:
	ld a, [wPlayerSubStatus4]
	bit SUBSTATUS_LEECH_SEED, a
	ret

.FakeOut:
	ld a, [wEnemyTurnsTaken]
	and a ; before the first turn is counted, so if usable, this should be 0
	ret

.LightScreen:
	ld a, [wEnemyScreens]
	bit SCREENS_LIGHT_SCREEN, a
	ret

.Reflect:
	ld a, [wEnemyScreens]
	bit SCREENS_REFLECT, a
	ret

.AuroraVeil:
	ld a, [wEnemyScreens]
	bit SCREENS_AURORA_VEIL, a
	ret

.Substitute:
	ld a, [wEnemySubStatus4]
	bit SUBSTATUS_SUBSTITUTE, a
	ret

.Swagger:
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	ret

.Transform:
	ld a, [wEnemySubStatus2]
	bit SUBSTATUS_TRANSFORMED, a
	ret

.Spikes:
	ld a, [wPlayerScreens]
	and SCREENS_SPIKES
	cp SCREENS_SPIKES
	jr .InvertZero

.Sandstorm:
	ld a, [wWeather]
	cp WEATHER_SANDSTORM
	jr .InvertZero

.Hail:
	ld a, [wWeather]
	cp WEATHER_HAIL
	jr .InvertZero

.RainDance:
	ld a, [wWeather]
	cp WEATHER_RAIN
	jr .InvertZero

.SunnyDay:
	ld a, [wWeather]
	cp WEATHER_SUN
	jr .InvertZero

.DreamEater:
	ld a, [wBattleMonStatus]
	and SLP
	jr .InvertZero

.BatonPass:
	farcall CheckAnyOtherAliveMons
.InvertZero:
	jr z, .Redundant
.NotRedundant:
	xor a
	ret

.Heal:
.Synthesis:
.Roost:
	farcall AICheckEnemyMaxHP
	jr nc, .NotRedundant

.Teleport:
.Redundant:
	ld a, 1
	and a
	ret
