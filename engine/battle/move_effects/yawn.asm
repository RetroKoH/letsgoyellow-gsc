BattleCommand_yawn:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyYawnCount
	jr z, .do_yawn
	ld hl, wPlayerYawnCount

.do_yawn
; Check type effectiveness (???)
	ld a, [wTypeModifier]
	and a
	jr z, .failed
; fail if missed
	ld a, [wAttackMissed]
	and a
	jr nz, .failed
; This should omit mons with Insomnia, Vital Spirit or Leaf Guard during harsh sunlight
	ld b, 0
	push hl
	call CanSleepTarget
	pop hl
	jr c, .ability_ok
	jr nz, .failed
; fail if already drowsy
	ld a, [hl]
	and a
	jr nz, .failed

; end of turn 1 turn later (2 ticks)
	ld [hl], 2

	call AnimateCurrentMove
	call BattleCommand_movedelay
	ld hl, FeelingDrowsyText
	call StdBattleTextbox
	jmp EndMoveEffect

.failed
	call AnimateFailedMove
	call PrintButItFailed
	jmp EndMoveEffect

.ability_ok
	farcall DisableAnimations
	farcall ShowEnemyAbilityActivation
	call AnimateFailedMove
	call PrintDoesntAffect
	farjp EnableAnimations
