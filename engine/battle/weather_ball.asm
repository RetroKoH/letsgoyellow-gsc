WeatherBallDamageStats:
; Override Weather Ball's type based on the current weather.

	call GetWeatherAfterCloudNine
	jr z, .noweather ; If WEATHER_NONE, this should remain NORMAL, 50

.weather
; First, check weather
	cp WEATHER_RAIN
	jr nz, .notrain
	ld a, WATER
	jp .gottype

.notrain
	cp WEATHER_SUN
	jr nz, .notsun
	ld a, FIRE
	jp .gottype

.notsun
	cp WEATHER_HAIL
	jr nz, .nothail
	ld a, ICE
	jp .gottype

.nothail
	ld a, ROCK
	; fallthrough

.gottype
; Overwrite the current move type.
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a
	; fallthrough

; Then, overwrite power to 100
	ld a, 100
	push af
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	pop af
	ld [hl], a

.noweather
; Get the rest of the damage formula variables
; based on the new type and power.
	push af
	farcall BattleCommand_damagestats ; damagestats
	pop af
	ret