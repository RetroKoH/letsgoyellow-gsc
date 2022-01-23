_TitleScreen:

	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wIntroSceneFrameCounter
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer+1

; Turn LCD off
	call DisableLCD

; VRAM bank 1
	ld a, 1
	ldh [rVBK], a

; Decompress Pikachu/Eevee gfx
	ld hl, TitlePikachuGFX
	ld de, vTiles1
	call Decompress

; Decompress LGY logo
	ld hl, TitleLetsGoGFX
	ld de, vTiles1+$400
	call Decompress

; Decompress LGY logo
	ld hl, TitleLGYGFX
	ld de, vTiles1+$500
	call Decompress

; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, SCREEN_WIDTH * BG_MAP_WIDTH
	xor a
	rst ByteFill

; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	hlbgcoord 0, 0, vBGMap1
	ld bc, BG_MAP_WIDTH
	ld a, 7 ; palette
	rst ByteFill

; BG Map 0:

; Apply logo gradient:

; lines 1-2
	hlbgcoord 0, 1
	ld bc, 2 * BG_MAP_WIDTH
	ld a, 2
	rst ByteFill
; line 3
	hlbgcoord 0, 3
	ld bc, BG_MAP_WIDTH
	ld a, 3
	rst ByteFill
; line 4
	hlbgcoord 0, 4
	ld bc, BG_MAP_WIDTH
	ld a, 4
	rst ByteFill
; line 5
	hlbgcoord 0, 5
	ld bc, BG_MAP_WIDTH
	ld a, 5
	rst ByteFill
; lines 6-7
	hlbgcoord 0, 6
	ld bc, 2 * BG_MAP_WIDTH
	ld a, 6
	rst ByteFill

; 'Let's Go
	hlbgcoord 6, 7
	ld bc, 8 ; start the gfx
	ld a, 8
	rst ByteFill

; Pikachu/Eevee gfx
	hlbgcoord 0, 8
	ld bc, 6 * BG_MAP_WIDTH ; start the gfx
	ld a, 8
	rst ByteFill

	hlbgcoord 0, 14
	ld bc, BG_MAP_WIDTH ; Give Pikachu red cheeks
	ld a, 9
	call ByteFill

	hlbgcoord 0, 15
	ld bc, 3 * BG_MAP_WIDTH ; the rest of the screen
	ld a, 8
	call ByteFill

; Back to VRAM bank 0
	xor a
	ldh [rVBK], a

; Decompress logo
	ld hl, TitleLogoGFX
	ld de, vTiles1
	call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 * BG_MAP_WIDTH
	ld a, " "
	rst ByteFill

; Draw Pokemon logo
	hlcoord 0, 1
	lb bc, 7, SCREEN_WIDTH
	lb de, $80, SCREEN_WIDTH
	call DrawTitleGraphic

; Draw Pikachu / Eevee
	hlcoord 5, 12
	lb bc, 6, 10
	lb de, $80, 10
	call DrawTitleGraphic

; Draw YELLOW text
	hlcoord 4, 8
	lb bc, 4, 13
	lb de, $D0, 13
	call DrawTitleGraphic

; Draw Let's Go
	hlcoord 6, 7
	lb bc, 2, 8
	lb de, $C0, 8
	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 3, 0, vBGMap1
	lb bc, 1, 14
	lb de, $0c, 0
	call DrawTitleGraphic

; Initialize LG Yellow Title
;	call InitializeBackground

; Save WRAM bank
	ldh a, [rSVBK]
	push af
; WRAM bank 5
	ld a, 5
	ldh [rSVBK], a

; Update palette colors
	ld hl, TitleScreenPalettes
	ld de, wBGPals1
	ld bc, 16 palettes
	rst CopyBytes

	ld hl, TitleScreenPalettes
	ld de, wBGPals2
	ld bc, 16 palettes
	rst CopyBytes

; Restore WRAM bank
	pop af
	ldh [rSVBK], a

; LY/SCX trickery starts here

	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

; Make sure the LYOverrides buffer is empty
	ld hl, wLYOverrides
	xor a
	ld bc, wLYOverridesEnd - wLYOverrides
	rst ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, rSCX - rJOYP
	ldh [hLCDCPointer], a

	pop af
	ldh [rSVBK], a

; Reset audio
	call ChannelsOff
	call EnableLCD

	ldh a, [rLCDC]
	set 2, a ; 8x16 sprites
	ldh [rLCDC], a

	ld a, +112
	ldh [hSCX], a
	ld a, 8
	ldh [hSCY], a
	ld a, 7
	ldh [hWX], a
	ld a, -112
	ldh [hWY], a

	ld a, $1
	ldh [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ldh [hBGMapMode], a

	xor a
	ld [wBGPals1 palette 0 + 2], a

; Play starting sound effect
	call SFXChannelsOff
	ld de, SFX_TITLE_SCREEN_ENTRANCE
	jmp PlaySFX

;SuicuneFrameIterator:
;	ld hl, wBGPals1 palette 0 + 2
;	ld a, [hl]
;	ld c, a
;	inc [hl]

; Only do this once every eight frames
;	and (1 << 3) - 1
;	ret nz

;	ld a, c
;	and 3 << 3
;	sla a
;	swap a
;	ld e, a
;	ld d, $0
;	ld hl, .Frames
;	add hl, de
;	ld d, [hl]
;	xor a
;	ld [hBGMapMode], a
;	call LoadSuicuneFrame
;	ld a, $1
;	ld [hBGMapMode], a
;	ld [hBGMapHalf], a
;	ret

;.Frames:
;	db $80 ; vTiles4 tile $00
;	db $88 ; vTiles4 tile $08
;	db $00 ; vTiles5 tile $00
;	db $08 ; vTiles5 tile $08

;LoadSuicuneFrame:
;	hlcoord 6, 12
;	ld b, 6
;.bgrows
;	ld c, 8
;.col
;	ld a, d
;	ld [hli], a
;	inc d
;	dec c
;	jr nz, .col
; "add hl, SCREEN_WIDTH - 8"
; 6 bytes, 12 cycles
;	push de
;	ld de, SCREEN_WIDTH - 8
;	add hl, de
;	pop de
;; 8 bytes, 8 cycles
;	ld a, SCREEN_WIDTH - 8
;	add l
;	ld l, a
;	ld a, 0
;	adc h
;	ld h, a
;	ld a, 8
;	add d
;	ld d, a
;	dec b
;	jr nz, .bgrows
;	ret

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

InitializeBackground:
	ld hl, wVirtualOAM
	lb de, -$22, $0
	ld c, 12
.loop
	push bc
	call .InitColumn
	pop bc
	ld a, $10
	add d
	ld d, a
	dec c
	jr nz, .loop
	ret

.InitColumn:
	lb bc, $40, $4
.loop2
	ld a, d
	ld [hli], a
	ld a, b
	ld [hli], a
	add $8
	ld b, a
	ld a, e
	ld [hli], a
	inc e
	inc e
	ld a, $80
	ld [hli], a
	dec c
	jr nz, .loop2
	ret

AnimateTitleLGY:
; Move the title screen crystal downward until it's fully visible

; Stop at y=6
; y is really from the bottom of the sprite, which is two tiles high
	ld hl, wVirtualOAM
	ld a, [hl]
	cp 6 + $10
	ret z

; Move all 30 parts of the crystal down by 2
	ld c, 30
.loop
	ld a, [hl]
	add 2
	ld [hli], a
	inc hl
	inc hl
	inc hl
	dec c
	jr nz, .loop

	ret

TitlePikachuGFX:
INCBIN "gfx/title/pikaeeveesilhouette.2bpp.lz"

TitleLogoGFX:
INCBIN "gfx/title/logo.2bpp.lz"

TitleLetsGoGFX:
INCBIN "gfx/title/letsgo.2bpp.lz"

TitleLGYGFX:
INCBIN "gfx/title/lgyellow.2bpp.lz"

TitleScreenPalettes:
; BG
if !DEF(MONOCHROME)
; 0. Background/Pikachu/Eevee text
	RGB 31, 31, 31
	RGB 29, 26, 05
	RGB 17, 10, 08
	RGB 02, 02, 02
; 1. Pikachu/Eevee (w/ Pika cheeks)
	RGB 31, 31, 31
	RGB 29, 26, 05
	RGB 17, 10, 08
	RGB 26, 06, 00
; 2. POKEMON LOGO Gradient (Top layer)
	RGB 31, 31, 31
	RGB 02, 02, 02
	RGB 31, 31, 31
	RGB 02, 03, 30
; 3. POKEMON LOGO Gradient (Second layer)
	RGB 31, 31, 31
	RGB 02, 02, 02
	RGB 31, 31, 18
	RGB 02, 03, 30
; 4. POKEMON LOGO Gradient (Third layer)
	RGB 31, 31, 31
	RGB 02, 02, 02
	RGB 29, 28, 12
	RGB 02, 03, 30
; 5. POKEMON LOGO Gradient (Fourth layer)
	RGB 31, 31, 31
	RGB 02, 02, 02
	RGB 28, 25, 06
	RGB 02, 03, 30
; 6. POKEMON LOGO Gradient (Fifth layer)
	RGB 31, 31, 31
	RGB 02, 02, 02
	RGB 26, 21, 00
	RGB 02, 03, 30
; 7. Copyright Text
	RGB 31, 31, 31
	RGB 07, 07, 07
	RGB 02, 03, 03
	RGB 00, 00, 00
; -----------------------------------------------------------------------
; OBJ - LET'S GO YELLOW logo
	RGB 31, 31, 31
	RGB 29, 26, 05
	RGB 17, 10, 08
	RGB 02, 02, 02

; PAL_REDBAR for Sprite pokeball
	RGB 31, 31, 31
	RGB 29, 25, 15
	RGB 26, 10, 06
	RGB 00, 00, 00

; Unused Palettes
	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00

	RGB 31, 31, 31
	RGB 00, 00, 00
	RGB 00, 00, 00
	RGB 00, 00, 00
else
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_DARK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_DARK
	RGB_MONOCHROME_LIGHT
	RGB_MONOCHROME_WHITE

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK

	RGB_MONOCHROME_WHITE
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
	RGB_MONOCHROME_BLACK
endc
