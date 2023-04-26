BattleCommand_recycle:
	farcall GetUserItem
	ld a, [hl]
	and a
	jr nz, .failed		; Don't do anything if we have an item already

	; Only Berries are picked
	push hl
	call GetUsedItemAddr
	pop de
	ld a, [hl]
	and a
	jr z, .failed		; Don't do anything if we never had an item
	ld [wCurItem], a
	ld b, a
	push bc
	push de
	push hl
	farcall CheckItemPocket
	pop hl
	pop de
	pop bc
	ld a, [wItemAttributeParamBuffer]
	cp BERRIES
	jr nz, .failed		; Don't do anything if held item wasn't a berry

	call AnimateCurrentMove

	; Kill the used item
	xor a
	ld [hl], a

	; Pick up the item
	ld a, b
	ld [de], a

	push bc
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, RecycledItemText
	call StdBattleTextbox
	pop bc

	; For the player, update backup items
	ldh a, [hBattleTurn]
	and a
	ret nz
	jmp SetBackupItem

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
