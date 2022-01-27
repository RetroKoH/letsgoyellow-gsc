SoftLullFunction:
	ld hl, .SoftLull
	call QueueScript
	ld a, $1
	ld [wFieldMoveSucceeded], a
	ret

.SoftLull:
	reloadmappart
	special UpdateTimePals
	callasm GetPartyNickname
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
	ld [hScriptVar], a
	ret

.no_lullaby
	xor a
	ld [hScriptVar], a
	ret

SoftLullUsedText:
	text_far _UseSoftLullText
	text_end

SoftLullFailText:
	text_far _SoftLullNothingText
	text_end
