BattleCommand_helpinghand:
	call CheckAnyOtherAliveMons
	jr z, .failed

	call AnimateCurrentMove
	ld c, 20
	call DelayFrames
	ld a, 1 << SWITCH_DEFERRED | 1 << SWITCH_HELPING_HAND
	jmp SetDeferredSwitch

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
