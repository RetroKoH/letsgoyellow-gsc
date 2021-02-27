_TitleScreen: ; 10ed67

	call ClearBGPalettes
	call ClearSprites
	call ClearTileMap

; Turn BG Map update off
	xor a
	ld [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wIntroSceneFrameCounter
	ld [hli], a ; wTitleScreenTimerLo
	ld [hl], a  ; wTitleScreenTimerHi

; Turn LCD off
	call DisableLCD


; VRAM bank 1
	ld a, 1
	ld [rVBK], a

; Decompress LGY logo
	ld hl, TitleLGYGFX
	ld de, VTiles0
	call Decompress

; Decompress Pikachu/Eevee gfx
	ld hl, TitlePikachuGFX
	ld de, VTiles1
	call Decompress

; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, SCREEN_WIDTH * BG_MAP_WIDTH
	xor a
	call ByteFill

; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	hlbgcoord 0, 0, VBGMap1
	ld bc, BG_MAP_WIDTH
	ld a, 7 ; palette
	call ByteFill

; BG Map 0:

; Apply logo gradient:

; lines 1-2
	hlbgcoord 0, 1
	ld bc, 2 * BG_MAP_WIDTH
	ld a, 2
	call ByteFill
; line 3
	hlbgcoord 0, 3
	ld bc, BG_MAP_WIDTH
	ld a, 3
	call ByteFill
; line 4
	hlbgcoord 0, 4
	ld bc, BG_MAP_WIDTH
	ld a, 4
	call ByteFill
; line 5
	hlbgcoord 0, 5
	ld bc, BG_MAP_WIDTH
	ld a, 5
	call ByteFill
; lines 6-7
	hlbgcoord 0, 6
	ld bc, 2 * BG_MAP_WIDTH
	ld a, 6
	call ByteFill

; 'Let's Go Yellow
	hlbgcoord 0, 8
	ld bc, BG_MAP_WIDTH ; length of version text
	ld a, 8
	call ByteFill

; Pikachu/Eevee gfx
	hlbgcoord 1, 11
	ld bc, 3 * BG_MAP_WIDTH ; start the gfx
	ld a, 8
	call ByteFill

	hlbgcoord 1, 14
	ld bc, BG_MAP_WIDTH ; Give Pikachu red cheeks
	ld a, 9
	call ByteFill

	hlbgcoord 1, 15
	ld bc, 3 * BG_MAP_WIDTH ; the rest of the screen
	ld a, 8
	call ByteFill

; Back to VRAM bank 0
	xor a
	ld [rVBK], a

; Decompress logo
	ld hl, TitleLogoGFX
	ld de, VTiles1
	call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 * BG_MAP_WIDTH
	ld a, " "
	call ByteFill

; Draw Pokemon logo
	hlcoord 0, 1
	lb bc, 7, SCREEN_WIDTH
	lb de, $80, SCREEN_WIDTH
	call DrawTitleGraphic

; Draw LG Yellow
	hlcoord 4, 8
	lb bc, 5, 13
	lb de, 0, 10
	call DrawTitleGraphic

; Draw Pikachu / Eevee
	hlcoord 6, 10
	lb bc, 10, 10
	lb de, $80, 10
	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 4, 0, VBGMap1
	lb bc, 1, 13
	lb de, $0c, 0
	call DrawTitleGraphic

; Initialize LG Yellow Title
;	call InitializeBackground

; Save WRAM bank
	ld a, [rSVBK]
	push af
; WRAM bank 5
	ld a, 5
	ld [rSVBK], a

; Update palette colors
	ld hl, TitleScreenPalettes
	ld de, wUnknBGPals
	ld bc, 16 palettes
	rst CopyBytes

	ld hl, TitleScreenPalettes
	ld de, wBGPals
	ld bc, 16 palettes
	rst CopyBytes

; Restore WRAM bank
	pop af
	ld [rSVBK], a


; LY/SCX trickery starts here

	ld a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ld [rSVBK], a

; Make sure the LYOverrides buffer is empty
	ld hl, wLYOverrides
	xor a
	ld bc, wLYOverridesEnd - wLYOverrides
	call ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, rSCX - rJOYP
	ld [hLCDCPointer], a

	pop af
	ld [rSVBK], a


; Reset audio
	call ChannelsOff
	call EnableLCD

	ld a, [rLCDC]
	set 2, a ; 8x16 sprites
	ld [rLCDC], a

	ld a, +112
	ld [hSCX], a
	ld a, 8
	ld [hSCY], a
	ld a, 7
	ld [hWX], a
	ld a, -112
	ld [hWY], a

	ld a, $1
	ld [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ld [hBGMapMode], a

	xor a
	ld [wUnknBGPals palette 0 + 2], a

; Play starting sound effect
	call SFXChannelsOff
	ld de, SFX_TITLE_SCREEN_ENTRANCE
	call PlaySFX

	ret
; 10eea7

;SuicuneFrameIterator: ; 10eea7
;	ld hl, wUnknBGPals palette 0 + 2
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
; 10eece

;.Frames: ; 10eece
;	db $80 ; VTiles4 tile $00
;	db $88 ; VTiles4 tile $08
;	db $00 ; VTiles5 tile $00
;	db $08 ; VTiles5 tile $08
; 10eed2


;LoadSuicuneFrame: ; 10eed2
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
;	ld a, SCREEN_WIDTH - 8
;	add l
;	ld l, a
;	ld a, 0 ; not xor a; preserve carry flag
;	adc h
;	ld h, a
;	ld a, 8
;	add d
;	ld d, a
;	dec b
;	jr nz, .bgrows
;	ret
; 10eeef

DrawTitleGraphic: ; 10eeef
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
; 10ef06

InitializeBackground: ; 10ef06
	ld hl, wSprites
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
; 10ef1c

.InitColumn: ; 10ef1c
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
; 10ef32


AnimateTitleLGY: ; 10ef32
; Move the title screen sub-logo downward until it's fully visible

; Stop at y=6
; y is really from the bottom of the sprite, which is two tiles high
	ld hl, wSprites
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
; 10ef46

TitlePikachuGFX: ; 10ef46
INCBIN "gfx/title/pikaeeveesilhouette.2bpp.lz"
; 10f326

TitleLogoGFX: ; 10f326
INCBIN "gfx/title/logo.2bpp.lz"
; 10fcee

TitleLGYGFX: ; 10fcee
INCBIN "gfx/title/lgyellow.2bpp.lz"
; 10fede

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
