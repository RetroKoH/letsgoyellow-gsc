BattleCommand_stealthrock:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyHazards
	jr z, .got_hazards
	ld hl, wPlayerHazards
.got_hazards
	bit HAZARDS_STEALTH_ROCK, [hl]
	jmp nz, FailStealthRock
	set HAZARDS_STEALTH_ROCK, [hl]
	call AnimateCurrentMove

	ld hl, StealthRockText
	jmp StdBattleTextbox
