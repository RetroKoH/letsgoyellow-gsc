GetTrainerEVsDVsAndPersonality: ; 270c4
; Return the EVs, DVs and Personality of wOtherTrainerClass in bc
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerClassDVsAndPersonality
rept 6
	add hl, bc
endr

	ld a, [hli]
rept 6
	ld [de], a
	inc de
endr
	ld a, [hli]
	ld [wDVAndPersonalityBuffer], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 1], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 2], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 3], a
	ld a, [hli]
	ld [wDVAndPersonalityBuffer + 4], a
	ret
; 270d6

TrainerClassDVsAndPersonality: ; 270d6
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; red
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; green
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; prof oak
	db 252, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; chuck
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; jasmine
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; clair
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; lorelei
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; bruno
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; agatha
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; lance
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; will
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; koga
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; koga2
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; karen
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; champion
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; brock
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; misty
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; lt surge
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; erika
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; janine
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; sabrina
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; blaine
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; blue
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; rival0
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; rival1
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; rival2
	db   0, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; yellow
	db 252, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; yellow2
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; youngster
	db   0, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; bug catcher
	db   8, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; camper
	db   8, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; picnicker
	db  16, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; fisher
	db  16, $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; bird keeper
	db  24, $99, $99, $99, ABILITY_1 | QUIRKY, MALE   ; hiker
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; gruntm
	db  32, $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; gruntf
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; pokemaniac
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; super nerd
	db  40, $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lass
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; beauty
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; juggler
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; schoolboy
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; schoolgirl
	db  48, $AA, $CC, $EE, ABILITY_1 | QUIRKY, MALE   ; psychic
	db  48, $AA, $CC, $EE, ABILITY_1 | QUIRKY, FEMALE ; hex maniac
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; medium
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; gentleman
	db 100, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; rich boy (high EVs from vitamins)
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; lady
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; sailor
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; swimmerm
	db  48, $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; swimmerf
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; burglar
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; pi
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; scientist
	db  56, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; rocket scientist
	db  64, $FF, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; blackbelt
	db  64, $FF, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; battle girl
	db  72, $DF, $DF, $DD, ABILITY_1 | QUIRKY, MALE   ; dragon tamer
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; engineer
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; teacher
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; biker
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; roughneck
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; tamer
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; artist
	db  72, $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; aroma lady
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; cooltrainerm
	db  64, $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; cooltrainerf
	db 128, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; archer
	db 160, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; giovanni
	db  88, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; karate king
	db 252, PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; towertycoon
	db  88, $BB, $B8, $BB, ABILITY_1 | QUIRKY, MALE   ; jessie&james
; 2715c
