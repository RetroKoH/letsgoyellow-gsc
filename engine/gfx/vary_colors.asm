CopyDVsToColorVaryDVs: ; Change this to discolor SHADOW Pokemon
; e = HPAtkDV
	ld a, [hli]
	ld e, a
; d = DefSpdDV
	ld a, [hli]
	ld d, a
; c = SatSdfDV
	ld a, [hli]
	ld c, a
; b = Shiny
	push bc
	ld a, [hl]
	ld b, a

	ldh a, [rSVBK]
	ld c, a
	ld a, $5
	ldh [rSVBK], a

	ld hl, wColorVaryDVs
; wColorVaryDVs = HPAtkDV
	ld a, e
	ld [hli], a
; wColorVaryDVs+1 = DefSpdDV
	ld a, d
	ld [hli], a
	inc hl
	inc hl
; wColorVaryShiny = Shiny
	ld a, b
	ld [hld], a
	ld a, c
	ld d, a
	pop bc
; wColorVarySpecies = Species
	ld a, b
	ld [hld], a
; wColorVaryDVs+2 = SatSdfDV
	ld a, c
	ld [hl], a

	ld a, d
	ldh [rSVBK], a
	ret

GetColorChannelVariedByDV:
; d = color, e = DV
; a <- d + (e & %11) - (e & %1100 >> 2), ±5 if not in [0, 31]
	ld a, e
	cp %0010 ; override a +2
	jr z, .plus4
	cp %1000 ; override a -2
	jr z, .minus4
	and %11
	add d
	srl e
	srl e
	sub e
.floor
	jr c, .up
.ceil
	cp 32
	ret c
	sub 5
	ret

.up
	add 5
	ret

.plus4
	ld a, d
	add 4
	jr .ceil

.minus4
	ld a, d
	sub 4
	jr .floor

VaryRedByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store red in d
	ld a, [hl]
	and %00011111
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in red
	ld d, a
	ld a, [hl]
	and %11100000
	or d
	ld [hl], a
	ret

VaryGreenByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store green in d
	ld a, [hli]
	and %11100000
	srl a
	swap a
	ld d, a ; d = 00000ggg
	ld a, [hld]
	and %00000011
	swap a
	srl a
	or d
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in green
	sla a
	swap a
	ld d, a
	and %11100000
	ld e, a
	ld a, d
	and %00000011
	ld d, a
	ld a, [hl]
	and %00011111
	or e
	ld [hli], a
	ld a, [hl]
	and %11111100
	or d
	ld [hld], a
	ret

VaryBlueByDV:
;;; e = DV
;;; [hl+0] = gggr:rrrr
;;; [hl+1] = 0bbb:bbgg
; store blue in d
	inc hl
	ld a, [hl]
	and %01111100
	srl a
	srl a
	ld d, a
; vary d according to e
	call GetColorChannelVariedByDV
; store a back in blue
	ld d, a
	sla d
	sla d
	ld a, [hl]
	and %10000011
	or d
	ld [hld], a
	ret

VaryColorsByDVs::
; hl = colors
; [hl+0] = gggr:rrrr
; [hl+1] = 0bbb:bbgg
; [hl+2] = GGGR:RRRR
; [hl+3] = 0BBB:BBGG

; DVs in wColorVaryDVs
; [bc+0] = hhhh:aaaa
; [bc+1] = dddd:ssss
; [bc+2] = pppp:qqqq

; [wColorVarySpecies] = species
; [wColorVaryShiny] = shiny

;if DEF(MONOCHROME) || DEF(NOIR)
;	ret
;endc

	ldh a, [rSVBK]
	push af
	ld a, $5
	ldh [rSVBK], a

	ld bc, wColorVaryDVs

;;; LiteRed ~ HPDV, aka, rrrrr ~ hhhh
; store HPDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary LiteRed by e
	call VaryRedByDV

;;; LiteGrn ~ AtkDV, aka, ggggg ~ aaaa
; store AtkDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary LiteGrn by e
	call VaryGreenByDV

;;; advance from HP/Atk DV to Def/Spd DV
	inc bc

;;; LiteBlu ~ DefDV, aka, bbbbb ~ dddd
; store DefDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary LiteBlu by e
	call VaryBlueByDV

;;; advance from Lite color to Dark color
	inc hl
	inc hl

.Finish:
;;; DarkRed ~ SpdDV, aka, RRRRR ~ ssss
; store SpdDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary DarkRed by e
	call VaryRedByDV

;;; move from Def/Spd DV to SAt/SDf DV
	inc bc

;;; DarkGrn ~ SAtDV, aka, GGGGG ~ pppp
; store SAtDV in e
	ld a, [bc]
	swap a
	and %1111
	ld e, a
; vary DarkGrn by e
	call VaryGreenByDV

;;; DarkBlu ~ SDfDV, aka, BBBBB ~ qqqq
; store SDfDV in e
	ld a, [bc]
	and %1111
	ld e, a
; vary DarkBlu by e
	call VaryBlueByDV

	pop af
	ldh [rSVBK], a
	ret

VaryBGPal0ForShadows:
	ld hl, wBGPals1 palette 0 + 2
	jr VaryBGPalForShadows
VaryBGPal1ForShadows:
	ld hl, wBGPals1 palette 1 + 2
VaryBGPalForShadows:
	push hl
;	ld a, [wTempMonShadow]
;	and a
;	jr nz, .notShadow
	ld hl, wTempMonDVs
	ld a, [wTempMonSpecies]
	ld b, a
	call CopyDVsToColorVaryDVs
	pop hl
	jr VaryColorsByDVs
;.notShadow
;	pop hl
;	ret
