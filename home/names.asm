NamesPointers::
	dba PokemonNames		; MON_NAME
	dba MoveNames			; MOVE_NAME
	dba ApricornNames		; APRICORN_NAME
	dba ItemNames			; ITEM_NAME
	dbw 0, wPartyMonOTs		; PARTY_OT_NAME
	dbw 0, wOTPartyMonOTs	; ENEMY_OT_NAME
	dba TrainerClassNames	; TRAINER_NAME
	dba KeyItemNames		; KEY_ITEM_NAME
	dba CloneMoveNames		; CLONE_MOVE_NAME

GetName::
; Return name wCurSpecies from name list wNamedObjectTypeBuffer in wStringBuffer1.
	ldh a, [hROMBank]
	push hl
	push de
	push bc
	push af

	ld a, [wNamedObjectTypeBuffer]
	cp MON_NAME
	jr nz, .NotPokeName

	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, MON_NAME_LENGTH
	add hl, de
	ld e, l
	ld d, h
	jr .done

.NotPokeName:
	dec a
	ld e, a
	ld d, 0
	ld hl, NamesPointers
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	rst Bankswitch
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wCurSpecies]
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	rst CopyBytes

.done
	pop af
	pop bc
	pop de
	pop hl
	rst Bankswitch
	ret

GetNthString::
; Return the address of the
; ath string starting from hl.
	and a
	ret z

	push bc
	ld b, a
.readChar
	ld a, [hli]
	cp "@"
	jr nz, .readChar
	dec b
	jr nz, .readChar
	pop bc
	ret

GetBasePokemonName::
; Discards gender (Nidoran).
	push hl
	call GetPokemonName

	ld hl, wStringBuffer1
.loop
	ld a, [hl]
	cp "@"
	jr z, .quit
	cp "♂"
	jr z, .end
	cp "♀"
	jr z, .end
	inc hl
	jr .loop
.end
	ld [hl], "@"
.quit
	pop hl
	ret

GetPokemonName::
; Get Pokemon name wNamedObjectIndex.
	push hl

; Each name is ten characters
	push bc
	ld a, [wNamedObjectIndex]
	ld c, a
	ld a, [wCurForm]
	ld b, a
	call GetExtendedSpeciesIndex
	ld d, b
	ld e, c
	pop bc
	ld h, d
	ld l, e
	add hl, hl ; hl = hl * 4
	add hl, hl ; hl = hl * 4
	add hl, de ; hl = (hl*4) + de
	add hl, hl ; hl = (5*hl) + (5*hl)
	ld de, PokemonNames
	add hl, de

; Terminator
	ld de, wStringBuffer1
	push de
	ld bc, MON_NAME_LENGTH - 1
	ld a, BANK(PokemonNames)
	call FarCopyBytes
	ld h, d
	ld l, e
	ld [hl], "@"
	pop de

	pop hl
	ret

GetCurItemName::
; Get item name from item in CurItem
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
GetItemName::
; Get item name wNamedObjectIndex.
	push hl
	push bc
	ld a, [wNamedObjectIndex]
	ld [wCurSpecies], a
	ld a, ITEM_NAME
	jr PutNameInBufferAndGetName

GetCurKeyItemName::
; Get item name from item in CurItem
	ld a, [wCurKeyItem]
	inc a
	ld [wNamedObjectIndex], a
GetKeyItemName::
; Get key item item name wNamedObjectIndex.
	push hl
	push bc
	ld a, [wNamedObjectIndex]
	ld [wCurSpecies], a
	ld a, KEY_ITEM_NAME
	jr PutNameInBufferAndGetName

GetApricornName::
; Get apricorn name wNamedObjectIndex.
	push hl
	push bc
	ld a, [wNamedObjectIndex]
	ld [wCurSpecies], a
	ld a, APRICORN_NAME
PutNameInBufferAndGetName::
	ld [wNamedObjectTypeBuffer], a
	call GetName
	ld de, wStringBuffer1
	pop bc
	pop hl
	ret

GetTMHMName::
	homecall _GetTMHMName
	ret

; Used in the Battle Window (Not in anything that lists off moves)
GetMoveName::
	push hl

	ld a, MOVE_NAME
	ld [wNamedObjectTypeBuffer], a

	ld a, [wNamedObjectIndex] ; move id
	ld [wCurSpecies], a

	cp STRIKE
	jr nz, .notStrike
	jr GetStrikeName

.notStrike
	call GetName
	ld de, wStringBuffer1

.end
	pop hl
	ret

; Needs to be worked on a bit.
GetStrikeName::
	ld a, CLONE_MOVE_NAME
	ld [wNamedObjectTypeBuffer], a

	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]

.got_user_species
	ld hl, PoundUsers
	push af
	call IsInByteArray
	pop af
	jr nc, .not_pound
	ld a, $0
	jr .got_user

.not_pound
	ld hl, ScratchUsers
	call IsInByteArray
	jr nc, .not_scratch
	ld a, $1
	jr .got_user

.not_scratch
	ld a, $2
.got_user
	ld [wCurSpecies], a
	call GetName
	ld de, wStringBuffer1

.end
	pop hl
	ret
