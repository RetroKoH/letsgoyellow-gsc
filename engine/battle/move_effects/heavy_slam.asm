BattleCommand_heavyslam:
	push bc
	push de

	ldh a, [hBattleTurn]
	and a
	jr z, .enemyturn

; player is attacking
	ld hl, wBattleMonSpecies
	ld a, [hl]
	farcall GetSpeciesWeight	; find species weight and load to hl
	ld b, h
	ld c, l						; bc = species weight
	call GetTrueUserAbility
	cp LIGHT_METAL
	jr nz, .get_opp_weight		; branch if ability is not light metal
	srl b
	rr c

.get_opp_weight
	ld hl, wEnemyMonSpecies
	ld a, [hl]
	farcall GetSpeciesWeight	; find species weight and load to hl
	ld d, h
	ld e, l						; de = species weight
	call GetOpponentAbilityAfterMoldBreaker
	cp LIGHT_METAL
	jr nz, .calc_power			; branch if ability is not light metal
	srl d
	rr e
	jr .calc_power

.enemyturn
	ld hl, wEnemyMonSpecies
	ld a, [hl]
	farcall GetSpeciesWeight	; find species weight and load to hl
	ld b, h
	ld c, l						; bc = species weight
	call GetOpponentAbilityAfterMoldBreaker
	cp LIGHT_METAL
	jr nz, .get_pl_weight		; branch if ability is not light metal
	srl b
	rr c

.get_pl_weight
	ld hl, wBattleMonSpecies
	ld a, [hl]
	farcall GetSpeciesWeight	; find species weight and load to hl
	ld d, h
	ld e, l						; de = species weight
	call GetTrueUserAbility
	cp LIGHT_METAL
	jr nz, .calc_power			; branch if ability is not light metal
	srl d
	rr e


; attacker weight is in bc
; defender weight is in de
.calc_power
	xor a
	ldh [hDividend], a
	ldh [hMultiplicand + 0], a
	ld a, d
	ldh [hMultiplicand + 1], a
	ld a, e
	ldh [hMultiplicand + 2], a
	ld a, $30
	ldh [hMultiplier], a
	call Multiply
	ld a, c
	ldh [hDivisor], a
	ld a, b
	and a
	jr z, .skip_to_divide

	ldh a, [hProduct + 4]
	srl b
	rra
	srl b
	rra
	ldh [hDivisor], a
	ldh a, [hProduct + 2]
	ld b, a
	srl b
	ldh a, [hProduct + 3]
	rra
	srl b
	rra
	ldh [hDividend + 3], a
	ld a, b
	ldh [hDividend + 2], a

.skip_to_divide
	ld b, $4
	call Divide
	ldh a, [hQuotient + 2]
	ld b, a
	ld hl, HeavySlamPower

.hslam_loop
	ld a, [hli]
	cp b
	jr nc, .break_loop
	inc hl
	jr .hslam_loop

.break_loop
	ld a, [hl]
	push af
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVarAddr
	pop af
	ld [hl], a
	push hl
	call BattleCommand_damagestats
	call BattleCommand_damagecalc
	pop hl
	ld [hl], 1
	pop de
	pop bc
	ret


INCLUDE "data/moves/heavy_slam_power.asm"
