Music_SuccessfulCapture: ; f4602
	musicheader 3, 1, Music_SuccessfulCapture_Ch1
	musicheader 1, 2, Music_SuccessfulCapture_Ch2
	musicheader 1, 3, Music_SuccessfulCapture_Ch3
; f460b

Music_SuccessfulCapture_Ch1: ; f460b
	tempo 126
	volume $77
	dutycycle $3
	tone $0001
	notetype $c, $a1
	jumpchannel Music_WildPokemonVictory_branch_23b8b
; f461b

Music_SuccessfulCapture_Ch2: ; f461b
	vibrato $12, $24
	notetype $c, $c1
	dutycycle $2
	jumpchannel Music_WildPokemonVictory_branch_23bce
; f4626

Music_SuccessfulCapture_Ch3: ; f4626
	notetype $c, $25
	jumpchannel Music_WildPokemonVictory_branch_23c21
; f462c
