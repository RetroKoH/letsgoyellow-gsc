BattleCommand_brickbreak:
	ldh a, [hBattleTurn]
	and a
	ld hl, wEnemyScreens ; check enemy screens
	jr z, .got_screens
	ld hl, wPlayerScreens ; check player screens
.got_screens
	ld a, [hl]
	and a
	ret z ; if no screens, exit
	ld [hl], 0
	push af
	and SCREENS_REFLECT
	jr z, .reflect_done ; if no reflect, skip ahead
	ld hl, BrokeReflectText
	call StdBattleTextbox
.reflect_done
	pop af
	and SCREENS_LIGHT_SCREEN
	jr z, .aurora_veil_done ; if no light screen, skip ahead
	ld hl, BrokeLightScreenText
	call StdBattleTextbox
.aurora_veil_done
	ld a, [bc]
	and GUARD_MIST
	ld [bc], a
	ret z ; if no aurora veil, exit
	ld hl, BrokeAuroraVeilText
	jmp StdBattleTextbox
