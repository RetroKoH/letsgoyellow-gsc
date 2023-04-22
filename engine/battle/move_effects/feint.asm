BattleCommand_feint:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemySubStatus1 ; check enemy protect (bit 2)
	jr z, .is_protected
	ld hl, wPlayerSubStatus1 ; check player protect (bit 2)
.is_protected
	ld a, [hl]
	bit SUBSTATUS_PROTECT, a
	ret z ; if no protect, exit
	res SUBSTATUS_PROTECT, [hl]
	ld hl, FellForFeintText
	jmp StdBattleTextbox
