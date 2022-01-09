_SacredAsh: ; 507e6
	ret

SoftLullFunction:
	ld hl, .SoftLull
	call QueueScript
	ld a, $1
	ld [wFieldMoveSucceeded], a
	ret

.SoftLull:
	reloadmappart
	special UpdateTimePals
	callasm GetPartyNick
	writetext SoftLullUsedText
	waitbutton
	callasm SoftLullWildSleep
	iffalse SoftLullNothing
	waitbutton
	closetext
	end

SoftLullNothing:
	writetext SoftLullFailText
	waitbutton
	closetext
	end

SoftLullWildSleep:
	scall FieldMovePokepicScript
	farcall CanUseSweetScent ; Works in the same environment
	jr nc, .no_lullaby
	ld de, MUSIC_POKEMON_LULLABY
	farcall RadioMusicRestartDE
	ld a, $1
	ld [wScriptVar], a
	ret

.no_lullaby
	xor a
	ld [wScriptVar], a
	ret

SoftLullUsedText:
	text_jump _UseSoftLullText
	db "@"

SoftLullFailText:
	text_jump _SoftLullNothingText
	db "@"
