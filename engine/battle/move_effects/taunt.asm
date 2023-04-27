BattleCommand_taunt:
	ldh a, [hBattleTurn]
	and a
	ld de, wEnemyTauntCount
	ld hl, wEnemyMonMoves
	jr z, .doTaunt
	ld de, wPlayerTauntCount
	ld hl, wBattleMonMoves

.doTaunt:
	ld a, [de]
	and $f
	jr nz, .failed

	ld hl, FellForTauntText
	ld a, 4
	ld [de], a
	call AnimateCurrentMove
	call StdBattleTextbox
	jmp CheckOpponentMentalHerb ; This also cures Taunt Status

.failed
	call AnimateFailedMove
	jmp PrintButItFailed

