BattleCommand_checkwish:
	call GetWishUser
	ret c
	ld b, wish_command
	jmp SkipToBattleCommandAfter

BattleCommand_wish:
	ldh a, [hBattleTurn]
	and a
	ld hl, wPlayerWishCount
	ld bc, wCurBattleMon
	jr z, .got_future
	ld hl, wEnemyWishCount
	ld bc, wCurOTMon
.got_future
	ld a, [hl]
	and a
	jr nz, .failed

	; end of turn 1 turn later (2 ticks)
	ld a, [bc]
	inc a
	swap a
	or $2
	ld [hl], a

	call BattleCommand_movedelay
	ld hl, MadeAWishText
	call StdBattleTextbox
	jmp EndMoveEffect

.failed
	call AnimateFailedMove
	call PrintButItFailed
	jmp EndMoveEffect
