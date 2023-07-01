ReadTrainerParty:
	ld a, [wInBattleTowerBattle]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	ret nz ; populated elsewhere

	ld hl, wOTPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

	ld hl, wOTPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH * PARTY_LENGTH
	xor a
	rst ByteFill

	call FindTrainerData

	call GetNextTrainerDataByte
	ld [wOtherTrainerType], a

.loop2
; level
	call GetNextTrainerDataByte
	cp $ff
	ret z

	ld [wCurPartyLevel], a

; species
	call GetNextTrainerDataByte
	ld [wCurPartySpecies], a

	ld a, OTPARTYMON
	ld [wMonType], a

	push hl
	predef TryAddMonToParty
	pop hl

; item?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_ITEM, a
	jr z, .not_item

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	call GetNextTrainerDataByte
	ld [de], a ; wOTPartyMon1Item = item value stored in a

.not_item
; EVs?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_EVS, a
	jr z, .not_evs
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1EVs
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	call GetNextTrainerDataByte
	push hl
	ld h, d
	ld l, e
rept 6
	ld [hli], a ; load EV values to 6 bytes starting at wOTPartyMon1EVs
endr
	pop hl

.not_evs
; DVs?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_DVS, a
	jr z, .not_dvs

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	; when reading DVs, $00 means $ff, since $ff is the end-of-trainer marker
	call GetNextTrainerDataByte
	and a
	jr nz, .dv1_ok
	ld a, $ff
.dv1_ok
	ld [de], a ; load DV byte #1
	inc de
	call GetNextTrainerDataByte
	and a
	jr nz, .dv2_ok
	ld a, $ff
.dv2_ok
	ld [de], a ; load DV byte #2
	inc de
	call GetNextTrainerDataByte
	and a
	jr nz, .dv3_ok
	ld a, $ff
.dv3_ok
	ld [de], a ; load DV byte #3

.not_dvs
; personality?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_PERSONALITY, a
	jr z, .not_personality

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Personality
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	call GetNextTrainerDataByte
	ld [de], a ; load personality byte #1 (Ability, Shiny Flag, Nature)
	inc de
	call GetNextTrainerDataByte
	ld [de], a ; load personality byte #2 (Gender, Form)

.not_personality
; nickname?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_NICKNAME, a
	jr z, .not_nickname

	call GetNextTrainerDataByte
	cp "@"
	jr z, .not_nickname

	push de
	ld de, wStringBuffer2
	ld [de], a
	inc de
.copy
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	cp "@"
	jr nz, .copy
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, wStringBuffer2
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	pop hl
	pop de

.not_nickname
; shadow? (Check before moves so we can add Frustration easily.)
	ld a, [wOtherTrainerType]
	bit TRNTYPE_SHADOW, a
	jr z, .not_shadow

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Shadow
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	call GetNextTrainerDataByte
	ld [de], a ; wOTPartyMon1Shadow = a
	; If zero, normal. If nonzero, shadow.

.not_shadow
; moves?
	ld a, [wOtherTrainerType]
	bit TRNTYPE_MOVES, a
	jr z, .not_moves

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	ld b, NUM_MOVES
.copy_moves
	call GetNextTrainerDataByte
	ld [de], a
	inc de
	cp RETURN
	jr z, .return
	cp GYRO_BALL
	jr nz, .done_special_moves

	; Set speed EVs and IVs to 0 if GYRO BALL is present.
	push hl
	push de
	push bc
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1SpdEV
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld [hl], 0
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1DefSpdDV
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [hl]
	; $f1, not $f0, to leave Hidden Power type alone
	and $f1
	ld [hl], a
	pop bc
	pop de
	pop hl
	jr .done_special_moves

.return
	; Maximize happiness
	push hl
	push de
	push bc
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld [hl], 255
	pop bc
	pop de
	pop hl

.done_special_moves
	dec b
	jr nz, .copy_moves

.fill_movePP
	push hl

	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, MON_PP
	add hl, de

	push hl
	ld hl, MON_MOVES
	add hl, de
	pop de

	predef FillPP

	pop hl
	jr .skip_frustration

.not_moves
	; BEFORE moving onto stat related matters, let's check to add Frustration
	push hl
	ld hl, wOTPartyMon1Shadow
	ld a, [hl]
	pop hl
	and a
	jr z, .skip_frustration   ; skip ahead if this is not a shadow mon

	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	pop hl

	push de            ; push address of first moveslot
	ld a, NUM_MOVES
	ld b, a
.loop
	ld a, [de]         ; is there a move?
	and a              ; is there a move here?
	jr z, .found       ; if no, we found our moveslot.
	inc de             ; otherwise, skip to next moveslot
	dec b
	jr z, .backtofirst
	jr .loop

.backtofirst
	pop de             ; restore address of first moveslot
	push de
.found
	ld a, FRUSTRATION
	ld [de], a         ; set Frustration in this moveslot
	pop de
	jr .fill_movePP    ; Need to set PP as well

.skip_frustration
	; custom DVs or nature may alter stats
	ld a, [wOtherTrainerType]
	and TRAINERTYPE_EVS | TRAINERTYPE_DVS | TRAINERTYPE_PERSONALITY
	jr z, .no_stat_recalc
	push hl
	ld a, [wOTPartyCount]
	dec a
	ld hl, wOTPartyMon1MaxHP
	ld bc, PARTYMON_STRUCT_LENGTH
	push af
	rst AddNTimes
	pop af
	push hl
	ld hl, wOTPartyMon1EVs - 1
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	pop de
	ld b, TRUE
	push de
	predef CalcPkmnStats
	pop hl
	inc hl
	ld c, [hl]
	dec hl
	ld b, [hl]
	dec hl
	ld [hl], c
	dec hl
	ld [hl], b
	pop hl
.no_stat_recalc
	jmp .loop2

Battle_GetTrainerName::
	ld a, [wInBattleTowerBattle]
	and a
	ld hl, wOTPlayerName
	ld a, BANK(Battle_GetTrainerName) ; make FarCopyBytes act like CopyBytes
	ld [wTrainerGroupBank], a
	jr nz, CopyTrainerName

	ld a, [wOtherTrainerID]
	ld b, a
	ld a, [wOtherTrainerClass]
	ld c, a

GetTrainerName::
	dec c
	push bc
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop bc

.loop
	dec b
	jr z, CopyTrainerName

.skip
	call GetNextTrainerDataByte
	cp $ff
	jr nz, .skip
	jr .loop

CopyTrainerName:
	ld de, wStringBuffer1
	push de
	ld bc, NAME_LENGTH
	ld a, [wTrainerGroupBank]
	call FarCopyBytes
	pop de
	ret

SetTrainerBattleLevel:
	ld a, 255
	ld [wCurPartyLevel], a

	ld a, [wInBattleTowerBattle]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	ret nz

	call FindTrainerData

	inc hl
	call GetNextTrainerDataByte
	ld [wCurPartyLevel], a
	ret

FindTrainerData:
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerGroups
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld [wTrainerGroupBank], a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [wOtherTrainerID]
	ld b, a
.skip_trainer
	dec b
	jr z, .got_trainer
.loop1
	call GetNextTrainerDataByte
	cp $ff
	jr nz, .loop1
	jr .skip_trainer
.got_trainer

.skip_name
	call GetNextTrainerDataByte
	cp "@"
	jr nz, .skip_name
	ret

GetNextTrainerDataByte:
	ld a, [wTrainerGroupBank]
	call GetFarByte
	inc hl
	ret

INCLUDE "data/trainers/parties.asm"
