BattleCommand_auroraveil:
	ld hl, wPlayerGuards
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyGuards
.ok
	ld a, [hl]
	and GUARD_AURORA_VEIL
	jr nz, .failed			; fail if already in effect
	call GetWeatherAfterCloudNine
	cp WEATHER_HAIL
	jr z, .failed

	ld a, 5
	or [hl]
	ld [hl], a
	call AnimateCurrentMove
	ld hl, CoveredByAuroraVeilText
	jmp StdBattleTextbox

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
