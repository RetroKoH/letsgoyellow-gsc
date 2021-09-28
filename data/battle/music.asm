PlayBattleMusic: ; 2ee6c
	push hl
	push de
	push bc

	call SaveMusic
	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jr nz, .trainermusic

	ld a, [wTempEnemyMonSpecies]
	ld hl, .legendaries
	call .loadfromarray
	jr c, .done

	; Are we in the Safari Game?
	ld a, [wBattleType]
	cp BATTLETYPE_SAFARI
	ld de, MUSIC_WILD_BATTLE_GO
	jr z, .done

	ld hl, .regional_wilds
	call .getregionmusicfromarray
	jr .done

.trainermusic
	ld a, [wOtherTrainerClass]
	cp RIVAL2
	jr nz, .not_rival2_4
	ld a, [wOtherTrainerID]
	cp 4 ; Rival in Indigo Plateau
	jr c, .not_rival2_4
	ld de, MUSIC_CHAMPION_BATTLE
	jr .done

.not_rival2_4
	ld a, [wOtherTrainerClass]
	cp GIOVANNI
	jr nz, .othertrainer
	ld a, [wOtherTrainerID]
	cp 1 ; Armored Mewtwo
	jr nz, .othertrainer
	ld de, MUSIC_MOTHER_BEAST_BATTLE_SM
	jr .done

.othertrainer
	ld a, [wOtherTrainerClass]
	ld hl, .trainers
	call .loadfromarray
	jr c, .done

	ld de, MUSIC_TRAINER_BATTLE_BW
	ld a, [wInBattleTowerBattle]
	bit 0, a
	jr nz, .done

	ld de, MUSIC_KANTO_GYM_LEADER_BATTLE
	farcall IsKantoGymLeader
	jr c, .done

	ld de, MUSIC_JOHTO_GYM_LEADER_BATTLE
	farcall IsJohtoGymLeader
	jr c, .done

	ld a, [wLinkMode]
	and a
	ld de, MUSIC_JOHTO_TRAINER_BATTLE
	jr nz, .done

	ld hl, .regional_trainers
	call .getregionmusicfromarray

.done
	call PlayMusic

	pop bc
	pop de
	pop hl
	ret

.loadfromarray
	ld e, 3
	call IsInArray
	ret nc
	inc hl
	jr .found

.getregionmusicfromarray
	push hl
	call RegionCheck
	pop hl
	ld a, e
	and a ; Johto
	jr nz, .ok
	ld a, [wTimeOfDay]
	cp NITE
	jr nz, .ok
	ld e, 3 ; Johto at night
.ok
	ld d, 0
	add hl, de
	add hl, de
.found
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ret

.trainers
	dbw WILL,             MUSIC_ELITE_FOUR_BATTLE_SM
	dbw KOGA,             MUSIC_ELITE_FOUR_BATTLE_SM
	dbw BRUNO,            MUSIC_ELITE_FOUR_BATTLE_SM
	dbw KAREN,            MUSIC_ELITE_FOUR_BATTLE_SM
	dbw CHAMPION,         MUSIC_CHAMPION_BATTLE
	dbw RED,              MUSIC_WCS_BATTLE_BW
	dbw GREEN,            MUSIC_CHAMPION_BATTLE_B2W2
	dbw RIVAL0,           MUSIC_RIVAL_BATTLE
	dbw RIVAL1,           MUSIC_RIVAL_BATTLE
	dbw RIVAL2,           MUSIC_RIVAL_BATTLE
	dbw YELLOW,           MUSIC_RIVAL_BATTLE_XY
	dbw YELLOW2,          MUSIC_WALLY_BATTLE_ORAS
	dbw GRUNTM,           MUSIC_ROCKET_BATTLE
	dbw GRUNTF,           MUSIC_ROCKET_BATTLE
	dbw ROCKET_SCIENTIST, MUSIC_ROCKET_BATTLE
	dbw ARCHER,           MUSIC_ROCKET_BATTLE
	dbw GIOVANNI,         MUSIC_ROCKET_BATTLE
	dbw TOWERTYCOON,      MUSIC_FRONTIER_BRAIN_BATTLE_RSE
	dbw JESSIE_JAMES,     MUSIC_ROCKET_BATTLE
	dbw LORELEI,          MUSIC_KANTO_GYM_LEADER_BATTLE
	dbw AGATHA,           MUSIC_KANTO_GYM_LEADER_BATTLE
	db -1

.legendaries
	dbw ARTICUNO, MUSIC_KANTO_LEGEND_BATTLE_XY
	dbw ZAPDOS,   MUSIC_KANTO_LEGEND_BATTLE_XY
	dbw MOLTRES,  MUSIC_KANTO_LEGEND_BATTLE_XY
	dbw MEWTWO,   MUSIC_MEWTWO_BATTLE_STADIUM
	dbw MEW,      MUSIC_KANTO_LEGEND_BATTLE_XY
	db -1

.regional_trainers
	dw MUSIC_JOHTO_TRAINER_BATTLE
	dw MUSIC_KANTO_TRAINER_BATTLE
	dw MUSIC_TRAINER_BATTLE_SM
	dw MUSIC_JOHTO_TRAINER_BATTLE

.regional_wilds
	dw MUSIC_JOHTO_WILD_BATTLE
	dw MUSIC_KANTO_WILD_BATTLE
	dw MUSIC_WILD_BATTLE_SM
	dw MUSIC_JOHTO_WILD_BATTLE_NIGHT
