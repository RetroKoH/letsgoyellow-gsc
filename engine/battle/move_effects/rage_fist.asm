BattleCommand_ragefist:
	ld a, [wAttackMissed]
	and a
	ret nz

; ragefist
	ld hl, wPlayerRageHitCount
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld hl, wEnemyRageHitCount

.go
; Damage capped at 5 turns' worth. (+40 each; Max 240)
	ld a, [hl]
	ld b, a
	cp 6
	jr c, .setpower
	ld b, 5

; Base power increased
.setpower
	inc b

	xor a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a

	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	ldh [hMultiplicand + 2], a

	ld a, b
	ldh [hMultiplier], a
	call Multiply

; Then, overwrite power
	ldh a, [hProduct + 3]
	push af
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	pop af
	ld [hl], a				; Set new Move Power

	push af
	farcall BattleCommand_damagestats ; damagestats
	pop af
	ret
