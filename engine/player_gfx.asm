GetPlayerIcon:
; Get the player icon corresponding to gender
; Modify this later to allow for character class outfits
	push hl
	call _GetPlayerIcon
	call FarDecompressWRA6InB
	pop hl
	ld de, wDecompressScratch
	ret

_GetPlayerIcon:
; Male
	ld hl, RedSpriteGFX
	ld b, BANK(RedSpriteGFX)

	ld a, [wPlayerGender]
	bit 0, a
	ret z

; Female
	ld hl, GreenSpriteGFX
	ld b, BANK(GreenSpriteGFX)
	ret

GetCardPic: ; 8833e
	ld hl, RedCardPic
	ld a, [wPlayerGender]
	bit 0, a
	jr z, .GotClass
	ld hl, GreenCardPic
.GotClass:
	ld de, VTiles2 tile $00
	ld bc, $23 tiles
	ld a, BANK(RedCardPic) ; BANK(GreenCardPic)
	jp FarCopyBytes

RedCardPic: ; 88365
INCBIN "gfx/trainer_card/red_card.5x7.2bpp"

GreenCardPic: ; 88595
INCBIN "gfx/trainer_card/green_card.5x7.2bpp"


GetPlayerBackpic: ; 88825
	ld hl, RedBackpic
	ld a, [wPlayerGender]
	bit 0, a
	jr z, .ok
	ld hl, GreenBackpic
.ok
	ld de, VTiles2 tile $31
	lb bc, BANK(RedBackpic), 6 * 6 ; dimensions
	predef DecompressPredef
	ret

RedBackpic: ; 2ba1a
INCBIN "gfx/player/red_back.6x6.2bpp.lz"

GreenBackpic: ; 88ed6
INCBIN "gfx/player/green_back.6x6.2bpp.lz"

YellowBackpic: ; 2bbaa
INCBIN "gfx/battle/yellow_back.6x6.2bpp.lz"

OldManBackpic: ; 2bbaa
INCBIN "gfx/battle/old_man_back.6x6.2bpp.lz"

OakBackpic: ; 2bbaa
INCBIN "gfx/battle/oak_back.6x6.2bpp.lz"

HOF_LoadTrainerFrontpic: ; 88840
	call ApplyTilemapInVBlank
	xor a
	ld [hBGMapMode], a
	ld e, 0
	ld a, [wPlayerGender]
	bit 0, a
	jr z, .GotClass
	ld e, 1

.GotClass:
	ld a, e
	ld [wTrainerClass], a
	ld de, RedCardPic
	ld a, [wPlayerGender]
	bit 0, a
	jr z, .GotPic
	ld de, GreenCardPic

.GotPic:
	ld hl, VTiles2
	lb bc, BANK(RedCardPic), 5 * 7 ; BANK(GreenCardPic)
	call Get2bpp
	call ApplyTilemapInVBlank
	ld a, $1
	ld [hBGMapMode], a
	ret
