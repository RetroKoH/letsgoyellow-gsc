; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; TRAINERTYPE_NORMAL:      level, species (2 bytes)
		; TRAINERTYPE_ITEM:        item (1 byte)
		; TRAINERTYPE_EVS:         EVs (1 byte, marks the setting of all EVs)
		; TRAINERTYPE_DVS:         DVs (3 bytes)
		; TRAINERTYPE_PERSONALITY: personality (2 bytes)
		; TRAINERTYPE_NICKNAME:    nickname (max 10 bytes)
		; TRAINERTYPE_MOVES:       moves (4 bytes)
	; Party
		; Up to six monsters following the data type
	; $ff

; Do not use the byte $ff in trainer data, since it's the end marker.
; That means:
; * DVs cannot be $ff -- use $00 instead (ReadTrainerParty converts it to $ff)
; * "9" cannot be used in nicknames

; TODO: boss trainers need better movesets, held items, ZUBATres, and abilities
; TODO: swap ABILITY_1 and ABILITY_2 in base data as need so that ABILITY_1 is the better one for default NPCs (e.g. NPCs should have Sturdy when possible)


SECTION "Enemy Trainer Parties 1", ROMX


RedGroup:
; ================================
; ================

	; RED - Post-Mewtwo
	db "RED@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 80, PIKACHU, LIGHT_BALL
		db THUNDERBOLT, ROCK_SMASH, IRON_TAIL, REFLECT
	db 80, MACHAMP, BLACK_BELT
		db DYNAMICPUNCH, FIRE_PUNCH, EARTHQUAKE, BULK_UP
	db 80, ARCANINE, QUICK_CLAW
		db FIRE_BLAST, CRUNCH, WILL_O_WISP, ROAR
	db 80, LAPRAS, BRIGHTPOWDER
		db ICE_BEAM, WATERFALL, MEGAHORN, BODY_SLAM
	db 80, SNORLAX, LEFTOVERS
		db CONFUSE_RAY, CURSE, FEINT_ATTACK, PROTECT
	db 80, VENUSAUR, BLACK_SLUDGE
		db SLUDGE_BOMB, MEGA_DRAIN, LEECH_SEED, AMNESIA
	db -1 ; end

	; RED - Mt. Silver
	db "RED@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 90, PIKACHU, LIGHT_BALL, HIDDEN_ABILITY | NAIVE, MALE | PIKACHU_RED_FORM
		db THUNDERBOLT, SURF, IRON_TAIL, WILD_CHARGE
	db 84, ESPEON, TWISTEDSPOON, HIDDEN_ABILITY | MODEST, MALE
		db PSYCHIC_M, RECOVER, REFLECT, SHADOW_BALL
	db 85, SNORLAX, LEFTOVERS, HIDDEN_ABILITY | ADAMANT, MALE
		db CURSE, REST, EARTHQUAKE, GYRO_BALL
	db 87, OMASTAR, WISE_GLASSES, HIDDEN_ABILITY | MODEST, MALE
		db SURF, ANCIENTPOWER, EARTH_POWER, ICE_BEAM
	db 87, GYARADOS, QUICK_CLAW, SHINY_MASK | HIDDEN_ABILITY | ADAMANT, MALE
		db DRAGON_DANCE, WATERFALL, EARTHQUAKE, CRUNCH
	db 88, CHARIZARD, MUSCLE_BAND, HIDDEN_ABILITY | ADAMANT, MALE
		db FLARE_BLITZ, SWORDS_DANCE, EARTHQUAKE, AERIAL_ACE
	db -1 ; end

; ================
; ================================


LeafGroup:
GreenGroup:
; ================================
; ================

	; GREEN - Post-Mewtwo
	db "GREEN@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 80, PIKACHU, LIGHT_BALL
		db THUNDERBOLT, ROCK_SMASH, IRON_TAIL, REFLECT
	db 80, MACHAMP, BLACK_BELT
		db DYNAMICPUNCH, FIRE_PUNCH, EARTHQUAKE, BULK_UP
	db 80, ARCANINE, QUICK_CLAW
		db FIRE_BLAST, CRUNCH, WILL_O_WISP, ROAR
	db 80, LAPRAS, BRIGHTPOWDER
		db ICE_BEAM, WATERFALL, MEGAHORN, BODY_SLAM
	db 80, SNORLAX, LEFTOVERS
		db CONFUSE_RAY, CURSE, FEINT_ATTACK, PROTECT
	db 80, VENUSAUR, BLACK_SLUDGE
		db SLUDGE_BOMB, MEGA_DRAIN, LEECH_SEED, AMNESIA
	db -1 ; end

	; GREEN - Mt. Silver
	db "GREEN@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 95, PIKACHU, LIGHT_BALL
		db THUNDERBOLT, ROCK_SMASH, IRON_TAIL, REFLECT
	db 95, MACHAMP, BLACK_BELT
		db DYNAMICPUNCH, FIRE_PUNCH, EARTHQUAKE, BULK_UP
	db 95, ARCANINE, QUICK_CLAW
		db FIRE_BLAST, CRUNCH, WILL_O_WISP, ROAR
	db 95, LAPRAS, BRIGHTPOWDER
		db ICE_BEAM, WATERFALL, MEGAHORN, BODY_SLAM
	db 95, SNORLAX, LEFTOVERS
		db CONFUSE_RAY, CURSE, FEINT_ATTACK, PROTECT
	db 95, VENUSAUR, BLACK_SLUDGE
		db SLUDGE_BOMB, MEGA_DRAIN, LEECH_SEED, AMNESIA
	db -1 ; end

; ================
; ================================


ProfOakGroup:
; ================================
; ================

	; PROF_OAK
	db "OAK@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 78, TAUROS, SILK_SCARF
		db THRASH, ZEN_HEADBUTT, BULK_UP, SUBSTITUTE
	db 76, DODRIO, SHARP_BEAK
		db DRILL_PECK, TRI_ATTACK, BULLDOZE, DOUBLE_TEAM
	db 80, VENUSAUR, MIRACLE_SEED
		db MEGA_DRAIN, SLUDGE_BOMB, GROWTH, SLEEP_POWDER
	db 80, CHARIZARD, CHARCOAL
		db FLAMETHROWER, CRUNCH, WING_ATTACK, SLASH
	db 80, BLASTOISE, MYSTIC_WATER
		db SURF, BODY_SLAM, ICE_BEAM, DARK_PULSE
	db 82, NIDOKING, POISON_BARB
		db EARTHQUAKE, RETURN, POISON_JAB, ROCK_SMASH
	db -1 ; end

; ================
; ================================


BugsyGroup:
; ================================
; ================

	; BUGSY
	db "BUGSY@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, BUTTERFREE
	db 50, BEEDRILL
	db 50, SCYTHER
	db 50, PINSIR
	db -1 ; end

; ================
; ================================


ChuckGroup:
; ================================
; ================

	; CHUCK
	db "CHUCK@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, PRIMEAPE
	db 50, HITMONLEE
	db 50, HITMONCHAN
	db 50, HITMONTOP
	db -1 ; end

; ================
; ================================


JasmineGroup:
; ================================
; ================

	; JASMINE
	db "JASMINE@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, GOLEM
	db 50, CLEFABLE
	db 50, MAGNETON
	db 50, STEELIX
	db -1 ; end

; ================
; ================================


ClairGroup:
; ================================
; ================

	; CLAIR
	db "CLAIR@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, EXEGGUTOR
	db 50, KINGDRA
	db 50, GYARADOS
	db 50, DRAGONAIR
	db -1 ; end

; ================
; ================================


LoreleiGroup:
; ================================
; ================

	; LORELEI
	db "LORELEI@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 39, GLACEON, NO_ITEM, 120
		db ICE_BEAM, BARRIER, RECOVER, QUICK_ATTACK
	db 41, DEWGONG, NO_ITEM, 120
		db WATERFALL, AURORA_BEAM, HEADBUTT, REST
	db 40, CLOYSTER, NO_ITEM, 120
		db DEFENSE_CURL, ROLLOUT, AURORA_BEAM, EXPLOSION
	db 41, SLOWBRO, NO_ITEM, 120
		db PSYCHIC_M, WATER_PULSE, HEADBUTT, DISABLE
	db 44, JYNX, SITRUS_BERRY, 120
		db PSYCHIC_M, SING, AVALANCHE, PETAL_DANCE
	db 43, LAPRAS, NO_ITEM, 120
		db ICE_BEAM, ANCIENTPOWER, CONFUSE_RAY, SURF
	db -1 ; end

; ================
; ================================


BrunoGroup:
; ================================
; ================

	; BRUNO - E4 I
	db "BRUNO@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS |  TRAINERTYPE_MOVES
	; party
	db 51, HITMONTOP, QUICK_CLAW, 220
		db PURSUIT, CLOSE_COMBAT, DIG, PROTECT
	db 53, HERACROSS, SILVERPOWDER, 220
		db SWORDS_DANCE, EARTHQUAKE, MEGAHORN, CLOSE_COMBAT
	db 51, HITMONLEE, FOCUS_BAND, 220
		db SUCKER_PUNCH, DOUBLE_KICK, HI_JUMP_KICK, LEER
	db 51, HITMONCHAN, NEVERMELTICE, 220
		db THUNDERPUNCH, ICE_PUNCH, POISON_JAB, MACH_PUNCH
	db 53, ONIX, HARD_STONE, 220
		db BODY_SLAM, EARTHQUAKE, CRUNCH, ROCK_SLIDE
	db 55, MACHAMP, LEFTOVERS, 220
		db ROCK_SLIDE, LEER, CROSS_CHOP, SWORDS_DANCE
	db -1 ; end

; ================

	; BRUNO - E4 II
	db "BRUNO@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 70, HITMONTOP, QUICK_CLAW
		db BULK_UP, SUCKER_PUNCH, COUNTER, HI_JUMP_KICK
	db 71, HERACROSS, SILVERPOWDER
		db SWORDS_DANCE, EARTHQUAKE, MEGAHORN, CLOSE_COMBAT
	db 70, HITMONLEE, FOCUS_BAND
		db BULK_UP, SUCKER_PUNCH, HI_JUMP_KICK, FLAIL
	db 70, HITMONCHAN, NEVERMELTICE
		db THUNDERPUNCH, ICE_PUNCH, POISON_JAB, MACH_PUNCH
	db 72, STEELIX, LEFTOVERS
		db CURSE, EARTHQUAKE, STONE_EDGE, IRON_HEAD
	db 74, MACHAMP, MUSCLE_BAND
		db BULK_UP, STONE_EDGE, BODY_SLAM, CROSS_CHOP
	db -1 ; end

; ================
; ================================

AgathaGroup:
; ================================
; ================

	; AGATHA
	db "AGATHA@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 62, GENGAR, SPELL_TAG, 180, ABILITY_1 | QUIRKY, FEMALE
		db SHADOW_BALL, WILL_O_WISP, ICE_BEAM, HEX
	db 62, CROBAT, POISON_BARB, 180, ABILITY_1 | QUIRKY, FEMALE
		db AIR_SLASH, CRUNCH, X_SCISSOR, POISON_JAB
	db 61, GASTLY, EVIOLITE, 180, ABILITY_1 | QUIRKY, FEMALE
		db SHADOW_BALL, FLAMETHROWER, DAZZLINGLEAM, POWER_GEM
	db 61, MAROWAK, THICK_CLUB, 180, ABILITY_1 | QUIRKY, FEMALE
		db SWORDS_DANCE, BONEMERANG, FIRE_PUNCH, SHADOW_CLAW
	db 63, ARBOK, KINGS_ROCK, 180, ABILITY_1 | QUIRKY, FEMALE | ARBOK_AGATHA_FORM
		db SLUDGE_BOMB, GLARE, CRUNCH, BODY_SLAM
	db 65, GENGAR, QUICK_CLAW, 180, ABILITY_1 | QUIRKY, FEMALE
		db SHADOW_BALL, THUNDERBOLT, WILL_O_WISP, HEX
	db -1 ; end

; ================
; ================================


LanceGroup:
; ================================
; ================

	; E4
	db "LANCE@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 57, GYARADOS, MUSCLE_BAND, ABILITY_1 | JOLLY, MALE
		db DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	db 58, DRAGONITE, WIDE_LENS, HIDDEN_ABILITY | MODEST, MALE
		db FIRE_BLAST, BLIZZARD, THUNDER, HYPER_BEAM
	db 58, KINGDRA, SCOPE_LENS, ABILITY_2 | MODEST, MALE
		db FOCUS_ENERGY, DRAGON_PULSE, SURF, HYPER_BEAM
	db 57, AERODACTYL, KINGS_ROCK, HIDDEN_ABILITY | ADAMANT, MALE
		db AERIAL_ACE, ANCIENTPOWER, ROCK_SLIDE, GIGA_IMPACT
	db 57, CHARIZARD, WISE_GLASSES, ABILITY_2 | MODEST, MALE
		db FLAMETHROWER, HYPER_BEAM, FOCUS_BLAST, AIR_SLASH
	db 60, DRAGONITE, LEFTOVERS, SHINY_MASK | HIDDEN_ABILITY | ADAMANT, MALE
		db SUBSTITUTE, DRAGON_DANCE, FLY, EXTREMESPEED
	db -1 ; end

; ================
; ================================


WillGroup:
; ================================
; ================

	; WILL
	db "Will@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, KADABRA
	db -1 ; end

; ================
; ================================


KogaGroup:
; ================================
; ================

	; KOGA
	db "KOGA@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, CROBAT
	db -1 ; end

; ================
; ================================


Koga2Group:
; ================================
; ================

	; ELITE 4 KOGA
	db "KOGA@"
	db TRAINERTYPE_NORMAL
	; party
	db 50, CROBAT
	db -1 ; end

; ================
; ================================


KarenGroup:
; ================================
; ================

	; KAREN
	db "Karen@"
	db TRAINERTYPE_NORMAL
	; party
	db 53, UMBREON
	db -1 ; end

; ================
; ================================


ChampionGroup:
; ================================
; ================

	; CHAMPION II
	db "LANCE@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_MOVES
	; party
	db 75, GYARADOS, FIGY_BERRY, ABILITY_1 | JOLLY, MALE
		db RAIN_DANCE, SUBSTITUTE, WATERFALL, EARTHQUAKE
	db 77, DRAGONITE, LEFTOVERS, HIDDEN_ABILITY | MODEST, MALE
		db THUNDER_WAVE, BLIZZARD, THUNDER, HURRICANE
	db 77, KINGDRA, CHOICE_SPECS, ABILITY_1 | MODEST, MALE
		db HYDRO_PUMP, SCALD, ICE_BEAM, DRAGON_PULSE
	db 76, AERODACTYL, CHOICE_BAND, HIDDEN_ABILITY | ADAMANT, MALE
		db STONE_EDGE, EARTHQUAKE, IRON_HEAD, CRUNCH
	db 75, CHARIZARD, LIFE_ORB, ABILITY_2 | MODEST, MALE
		db FIRE_BLAST, AIR_SLASH, FOCUS_BLAST, DRAGON_PULSE
	db 80, DRAGONITE, WEAK_POLICY, SHINY_MASK | HIDDEN_ABILITY | ADAMANT, MALE
		db DRAGON_DANCE, EXTREMESPEED, OUTRAGE, IRON_HEAD
	db -1 ; end

; ================
; ================================


BrockGroup:
; ================================
; ================

	; BROCK
	db "BROCK@"
	db TRAINERTYPE_MOVES
	; party
	db 12, GEODUDE
		db TACKLE, DEFENSE_CURL, ROLLOUT, SAND_ATTACK
	db 14, ONIX
		db TACKLE, WRAP, ROCK_THROW, SANDSTORM
	db -1 ; end

; ================

	; BROCK
	db "BROCK@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 74, ONIX, SOFT_SAND
		db IRON_HEAD, ROCK_SLIDE, EARTHQUAKE, SANDSTORM
	db 73, RHYPERIOR, KINGS_ROCK
		db AVALANCHE, ROCK_SLIDE, EARTHQUAKE, MEGAHORN
	db 72, OMASTAR, MYSTIC_WATER
		db ANCIENTPOWER, SURF, EARTH_POWER, SPIKES
	db 72, KABUTOPS, MIRACLE_SEED
		db SLASH, SURF, GRASS_KNOT, MEGA_DRAIN
	db 73, AERODACTYL, QUICK_CLAW
		db STONE_EDGE, EARTHQUAKE, AERIAL_ACE, CRUNCH
	db 75, GOLEM, LEFTOVERS
		db EXPLOSION, BODY_SLAM, STONE_EDGE, EARTHQUAKE
	db -1 ; end

; ================
; ================================


MistyGroup:
; ================================
; ================

	; MISTY
	db "MISTY@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, STARMIE
	db -1 ; end

; ================

	; MISTY
	db "MISTY@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 73, GOLDUCK, TWISTEDSPOON
		db PSYCHIC_M, SCALD, ICE_BEAM, CALM_MIND
	db 72, POLITOED, NO_ITEM
		db EARTHQUAKE, SCALD, RECOVER, TOXIC
	db 72, KINGLER, KINGS_ROCK
		db SWORDS_DANCE, CRABHAMMER, X_SCISSOR, ROCK_SLIDE
	db 73, SEAKING, NEVERMELTICE
		db SURF, THUNDERBOLT, ICE_BEAM, CONFUSE_RAY
	db 74, TENTACRUEL, CHARCOAL
		db FIRE_BLAST, ICE_BEAM, HYDRO_PUMP, POWER_WHIP
	db 75, STARMIE, LEFTOVERS
		db RECOVER, PSYCHIC_M, THUNDERBOLT, SURF
	db -1 ; end

; ================
; ================================


LtSurgeGroup:
; ================================
; ================

	; LT_SURGE
	db "LT.SURGE@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, RAICHU
	db -1 ; end

; ================

	; LT_SURGE
	db "LT.SURGE@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 58, ELECTABUZZ, EVIOLITE, 144
		db QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, WILD_CHARGE
	db 56, ELECTRODE, NO_ITEM, 144
		db SCREECH, DOUBLE_TEAM, THUNDERBOLT, EXPLOSION
	db 57, MAGNEZONE, NO_ITEM, 144
		db LIGHT_SCREEN, DOUBLE_TEAM, WILD_CHARGE, ZAP_CANNON
	db 56, ELECTRODE, NO_ITEM, 144
		db SCREECH, DOUBLE_TEAM, WILD_CHARGE, EXPLOSION
	db 58, JOLTEON, NO_ITEM, 144
		db WILD_CHARGE, THUNDER_WAVE, AGILITY, THUNDER
	db 60, RAICHU, SITRUS_BERRY, 144
		db THUNDER_WAVE, QUICK_ATTACK, WILD_CHARGE, THUNDER
	db -1 ; end

; ================
; ================================


ErikaGroup:
; ================================
; ================

	; ERIKA
	db "ERIKA@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, TANGELA
	db -1 ; end

; ================

	; ERIKA
	db "ERIKA@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, VENUSAUR, NO_ITEM, 192
		db SUNNY_DAY, SYNTHESIS, MEGA_DRAIN, EARTH_POWER
	db 62, TANGELA, EVIOLITE, 192
		db GROWTH, SYNTHESIS, MEGA_DRAIN, SLEEP_POWDER
	db 61, PARASECT, NO_ITEM, 192
		db SPORE, SLASH, GROWTH, MEGA_DRAIN
	db 64, VICTREEBEL, NO_ITEM, 192
		db SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
	db 65, VILEPLUME, NO_ITEM, 192
		db SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLAR_BEAM
	db 65, BELLOSSOM, SITRUS_BERRY, 192
		db SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLAR_BEAM
	db -1 ; end

; ================
; ================================


JanineGroup:
; ================================
; ================

	; JANINE
	db "JANINE@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, VENOMOTH
	db -1 ; end

; ================

	; JANINE
	db "JANINE@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 64, CROBAT, NO_ITEM, 208
		db SCREECH, TOXIC, CONFUSE_RAY, AERIAL_ACE
	db 61, NIDOKING, NO_ITEM, 208
		db AGILITY, POISON_JAB, EARTH_POWER, PSYCHIC_M
	db 62, TENTACRUEL, NO_ITEM, 208
		db AQUA_TAIL, POISON_JAB, SPIKES, MINIMIZE
	db 64, NIDOQUEEN, NO_ITEM, 208
		db TOXIC, SYNTHESIS, SLUDGE_BOMB, ICE_BEAM
	db 63, WEEZING, NO_ITEM, 208
		db SLUDGE_BOMB, THUNDER, FIRE_BLAST, EXPLOSION
	db 66, VENOMOTH, SITRUS_BERRY, 208
		db SLUDGE_BOMB, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

; ================
; ================================


SabrinaGroup:
; ================================
; ================

	; SABRINA
	db "SABRINA@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, KADABRA
	db -1 ; end

; ================

	; SABRINA
	db "SABRINA@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 61, ESPEON, NO_ITEM, 160
		db SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 59, NINETALES, NO_ITEM, 160
		db PSYCHIC_M, CRUNCH, AGILITY, CALM_MIND
	db 60, MR__MIME, NO_ITEM, 160
		db BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 59, HYPNO, NO_ITEM, 160
		db HYPNOSIS, DREAM_EATER, NASTY_PLOT, PSYCHIC_M
	db 58, JYNX, NO_ITEM, 160
		db COUNTER, MIRROR_COAT, AURORA_BEAM, HEX
	db 62, ALAKAZAM, SITRUS_BERRY, 160
		db RECOVER, DAZZLINGLEAM, PSYCHIC_M, REFLECT
	db -1 ; end

; ================
; ================================


BlaineGroup:
; ================================
; ================

	; BLAINE
	db "BLAINE@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, MAGMAR
	db -1 ; end

; ================

	; BLAINE
	db "BLAINE@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_MOVES
	; party
	db 65, CHARIZARD, NO_ITEM, 240
		db CURSE, WILL_O_WISP, FLAMETHROWER, ROCK_SLIDE
	db 68, MAGMAR, EVIOLITE, 240
		db SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, FOCUS_BLAST
	db 66, ARCANINE, NO_ITEM, 240
		db CRUNCH, FLAME_WHEEL, FLARE_BLITZ, TAKE_DOWN
	db 66, NINETALES, NO_ITEM, 240
		db CONFUSE_RAY, FIRE_SPIN, FLAMETHROWER, WILL_O_WISP
	db 65, FLAREON, NO_ITEM, 240
		db WILL_O_WISP, FLARE_BLITZ, QUICK_ATTACK, FIRE_BLAST
	db 69, RAPIDASH, SITRUS_BERRY, 240
		db QUICK_ATTACK, FIRE_SPIN, PLAY_ROUGH, FIRE_BLAST
	db -1 ; end

; ================
; ================================


BlueGroup:
; ================================
; ================

	; BLUE
	db "Blue@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 69, UMBREON, LEFTOVERS
		db CONFUSE_RAY, TOXIC, FEINT_ATTACK, PROTECT
	db 66, MACHAMP, BLACK_BELT
		db DYNAMICPUNCH, EARTHQUAKE, STONE_EDGE, THUNDERPUNCH
	db 67, KABUTOPS, HARD_STONE
		db SLASH, SURF, STONE_EDGE, MEGA_DRAIN
	db 68, EXEGGUTOR, MIRACLE_SEED
		db PSYCHIC_M, LEECH_SEED, STOMP, MEGA_DRAIN
	db 68, ARCANINE, CHARCOAL
		db ROAR, FLAME_WHEEL, FLAMETHROWER, EXTREMESPEED
	db 70, BLASTOISE, MYSTIC_WATER
		db SURF, ICE_BEAM, BODY_SLAM, EARTHQUAKE
	db -1 ; end

; ================
; ================================


Rival0Group:
; ================================
; ================
; Oak's Lab
	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, EEVEE
	db -1 ; end

; ================

	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_NORMAL
	; party
	db 5, PIKACHU
	db -1 ; end

; ================
; ================================

; ================================
; ================
; Route 22 (Early)
	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 9, SPEAROW, ORAN_BERRY
	db 9, EEVEE, ORAN_BERRY
	db -1 ; end

; ================

	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 9, PIDGEY, ORAN_BERRY
	db 9, PIKACHU, ORAN_BERRY
	db -1 ; end

; ================
; ================================

; ================================
; ================
; Cerulean City
	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 17, SPEAROW, ORAN_BERRY
	db 16, SANDSHREW, ORAN_BERRY
	db 16, RATTATA, ORAN_BERRY
	db 18, EEVEE, ORAN_BERRY
	db -1 ; end

; ================

	; RIVAL0
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 17, PIDGEY, ORAN_BERRY
	db 16, ABRA, ORAN_BERRY
	db 16, RATTATA, ORAN_BERRY
	db 18, PIKACHU, ORAN_BERRY
	db -1 ; end

; ================
; ================================

Rival1Group:
; ================================
; ================

; SS Anne
	; RIVAL1
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 19, SPEAROW, ORAN_BERRY
	db 18, SANDSHREW, ORAN_BERRY
	db 16, RATTATA, ORAN_BERRY
	db 20, EEVEE, ORAN_BERRY
	db -1 ; end

; ================

	; RIVAL1
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM
	; party
	db 19, PIDGEOTTO, ORAN_BERRY
	db 18, KADABRA, ORAN_BERRY
	db 16, RATTATA, ORAN_BERRY
	db 20, PIKACHU, ORAN_BERRY
	db -1 ; end

; ================
; ================================


Rival2Group: ; CHAMPION BLUE
; ================================
; ================

	; RIVAL2 - JOLTEON TEAM
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 61, SANDSLASH, KINGS_ROCK, 228
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
	db 62, EXEGGUTOR, EVIOLITE, 228
	db 61, CLOYSTER, MAGNET, 228
	db 63, NINETALES, SPELL_TAG, 228
	db 65, JOLTEON, MIRACLE_SEED, 228
	db -1 ; end

; ================

	; RIVAL2 - FLAREON TEAM
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 61, SANDSLASH, KINGS_ROCK, 228
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
	db 62, EXEGGUTOR, EVIOLITE, 228
	db 61, CLOYSTER, MAGNET, 228
	db 63, NINETALES, SPELL_TAG, 228
	db 65, FLAREON, MIRACLE_SEED, 228
	db -1 ; end

; ================

	; RIVAL2 - VAPOREON TEAM
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 61, SANDSLASH, KINGS_ROCK, 228
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
	db 62, EXEGGUTOR, EVIOLITE, 228
	db 61, CLOYSTER, MAGNET, 228
	db 63, NINETALES, SPELL_TAG, 228
	db 65, VAPOREON, MIRACLE_SEED, 228
	db -1 ; end

; ================

	; RIVAL2 - RAICHU TEAM
	db "<RIVAL>@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS
	; party
	db 61, PIDGEOT, KINGS_ROCK, 228
	db 63, ALAKAZAM, BRIGHTPOWDER, 228
	db 62, EXEGGUTOR, EVIOLITE, 228
	db 61, RHYDON, MAGNET, 228
	db 63, GYARADOS, SPELL_TAG, 228
	db 65, RAICHU, MIRACLE_SEED, 228
	db -1 ; end

; ================
; ================================


; TODO: give Lyra custom movesets
Lyra1Group:
Lyra2Group:
YellowGroup:
Yellow2Group:
; ================================
; ================

	; YELLOW
	db "Yellow@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_EVS | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 41, RATTATA, SITRUS_BERRY, 120, HIDDEN_ABILITY | ADAMANT, FEMALE, "Ratty@"
		db SUCKER_PUNCH, QUICK_ATTACK, HYPER_FANG, SWORDS_DANCE
	db 39, BUTTERFREE, SITRUS_BERRY, 120, HIDDEN_ABILITY | MODEST, FEMALE, "Kitty@"
		db BUG_BUZZ, SUPERSONIC, STUN_SPORE, PSYCHIC_M
	db 42, DODUO, NO_ITEM, 120, HIDDEN_ABILITY | HASTY, FEMALE, "Dody@"
		db SWORDS_DANCE, QUICK_ATTACK, RETURN, SAND_ATTACK
	db 41, GRAVELER, EVIOLITE, 120, HIDDEN_ABILITY | ADAMANT, FEMALE, "Gravvy@"
		db ROLLOUT, DEFENSE_CURL, EARTHQUAKE, ROCK_BLAST
	db 40, OMANYTE, SITRUS_BERRY, 120, HIDDEN_ABILITY | QUIRKY, FEMALE, "Omny@"
		db SURF, PROTECT, ANCIENTPOWER, AURORA_BEAM
	db 44, PIKACHU, LIGHT_BALL, 120, HIDDEN_ABILITY | HASTY, FEMALE | PIKACHU_YELLOW_FORM, "Chuchu@"
		db SURF, FLY, THUNDERBOLT, QUICK_ATTACK
	db -1 ; end

; ================

	; YELLOW
	db "Yellow@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 72, OMASTAR, WISE_GLASSES, HIDDEN_ABILITY | QUIRKY, FEMALE, "Omny@"
		db SCALD, ANCIENTPOWER, SPIKES, ICE_BEAM
	db 73, RATICATE, KINGS_ROCK, HIDDEN_ABILITY | ADAMANT, FEMALE, "Ratty@"
		db SWORDS_DANCE, QUICK_ATTACK, SUPER_FANG, CRUNCH
	db 71, BUTTERFREE, BRIGHTPOWDER, HIDDEN_ABILITY | MODEST, FEMALE, "Free@"
		db PSYCHIC_M, BUG_BUZZ, SLEEP_POWDER, STUN_SPORE
	db 74, DODRIO, SHARP_BEAK, HIDDEN_ABILITY | HASTY, FEMALE, "Dody@"
		db DRILL_PECK, TRI_ATTACK, DOUBLE_TEAM, PURSUIT
	db 73, GOLEM, MUSCLE_BAND, HIDDEN_ABILITY | ADAMANT, FEMALE, "Gravvy@"
		db ROLLOUT, DEFENSE_CURL, EARTHQUAKE, STONE_EDGE
	db 75, PIKACHU, LIGHT_BALL, HIDDEN_ABILITY | HASTY, FEMALE | PIKACHU_YELLOW_FORM, "Chuchu@"
		db SURF, FLY, THUNDERBOLT, EXTREMESPEED
	db -1 ; end

; ================
; ================================


YoungsterGroup:
; ================================
; ================


; YOUNGSTER - Route 3
	db "BEN@"
	db TRAINERTYPE_NORMAL
	; party
	db 11, RATTATA
	db 11, EKANS
	db -1 ; end

	db "CALVIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, SPEAROW
	db -1 ; end

; ================

; YOUNGSTER - Mt Moon
	db "JOSH@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, RATTATA, 10, RATTATA, 10, ZUBAT
	db -1 ; end

; ================

; YOUNGSTER - Route 24
	db "TIMMY@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, RATTATA, 14, EKANS, 14, ZUBAT
	db -1 ; end

; ================

; YOUNGSTER - Route 25
	db "JOEY@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, RATTATA
	db 15, SPEAROW
	db -1 ; end

	db "DAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, SLOWPOKE
	db -1 ; end

	db "CHAD@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, EKANS
	db 14, SANDSHREW
	db -1 ; end

; ================

; Route 11
	db "EDDIE@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, EKANS
	db -1 ; end

	db "DILLON@"
	db TRAINERTYPE_NORMAL
	; party
	db 19, SANDSHREW
	db 19, ZUBAT
	db -1 ; end

	db "YASU@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, RATTATA
	db 18, RATTATA
	db 20, RATICATE
	db -1 ; end

	db "DAVE@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, NIDORAN_M
	db 18, NIDORINO
	db -1 ; end

; ================
; ================================


BugCatcherGroup:
; ================================
; ================

; Viridian Forest
	db "RICK@", TRAINERTYPE_NORMAL
	db 6, WEEDLE
	db 6, CATERPIE
	db -1 ; end

	db "DOUG@", TRAINERTYPE_NORMAL
	db 7, WEEDLE
	db 7, KAKUNA
	db 7, WEEDLE
	db -1 ; end

	db "ANTONY@", TRAINERTYPE_NORMAL
	db 6, METAPOD
	db 6, CATERPIE
	db 6, METAPOD
	db -1 ; end

	db "CHARLY@", TRAINERTYPE_NORMAL
	db 6, WEEDLE
	db 6, CATERPIE
	db -1 ; end

	db "SAMMY@", TRAINERTYPE_NORMAL
	db 9, WEEDLE
	db -1 ; end

; ================

; Route 3
	db "COLTON@"
	db TRAINERTYPE_NORMAL
	db 10, CATERPIE
	db 10, WEEDLE
	db 10, CATERPIE
	db -1 ; end

	db "GREG@"
	db TRAINERTYPE_NORMAL
	db 9, WEEDLE
	db 9, KAKUNA
	db 9, CATERPIE
	db 9, METAPOD
	db -1 ; end

	db "JAMES@"
	db TRAINERTYPE_NORMAL
	db 11, CATERPIE
	db 11, METAPOD
	db -1 ; end

; ================

; Mt. Moon 1F
	db "KENT@", TRAINERTYPE_NORMAL
	db 11, WEEDLE
	db 11, KAKUNA
	db -1 ; end

	db "ROBBY@", TRAINERTYPE_NORMAL
	db 10, CATERPIE
	db 10, METAPOD
	db 10, CATERPIE
	db -1 ; end

; ================

; Route 24
	db "CALE@", TRAINERTYPE_NORMAL
	db 14, CATERPIE
	db 14, WEEDLE
	db -1 ; end

; ================

; Route 6
	db "KEIGO@", TRAINERTYPE_NORMAL
	db 16, WEEDLE
	db 16, CATERPIE
	db 16, WEEDLE
	db -1 ; end

	db "ELIJAH@", TRAINERTYPE_NORMAL
	db 20, BUTTERFREE
	db -1 ; end

; ================

; Route 9
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19, BEEDRILL
	db 19, BEEDRILL
	db -1 ; end

	db "CONNER@", TRAINERTYPE_NORMAL
	db 20, CATERPIE
	db 20, WEEDLE
	db 20, VENONAT
	db -1 ; end

; ================
; ================================


CamperGroup:
; ================================
; ================

; Pewter Gym
	db "LIAM@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, GEODUDE
	db 10, SANDSHREW
	db -1 ; end

; ================

; Route 24
	db "SHANE@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, RATTATA
	db 14, EKANS
	db -1 ; end

	db "ETHAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, MANKEY
	db -1 ; end

; ================

; Route 25
	db "FLINT@"
	db TRAINERTYPE_NORMAL
	; party
	db 14, RATTATA
	db 14, EKANS
	db -1 ; end

; ================

; Route 6
	db "RICKY@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, SQUIRTLE
	db -1 ; end

	db "JEFF@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, SPEAROW
	db 16, RATICATE
	db -1 ; end

; ================

; Route 9
	db "CHRIS@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, SQUIRTLE
	db -1 ; end

	db "DREW@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, SPEAROW
	db 16, RATICATE
	db -1 ; end

; ================

; Route 12
	db "JUSTIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, SQUIRTLE
	db -1 ; end

; ================
; ================================


PicnickerGroup:
; ================================
; ================

; Pewter Gym
	db "AMARA@"
	db TRAINERTYPE_NORMAL
	; party
	db 9, GEODUDE
	db -1 ; end

; ================

; Cerulean Gym
	db "DIANA@"
	db TRAINERTYPE_NORMAL
	; party
	db 19, GOLDEEN
	db -1 ; end

; ================

; Celadon Gym
	db "TINA@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, BULBASAUR
	db 24, IVYSAUR
	db -1 ; end

; ================

; Route 6
	db "NANCY@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, RATTATA
	db 16, PIKACHU
	db -1 ; end

	db "BELLE@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, PIDGEY
	db 16, PIDGEY
	db 16, PIDGEY
	db -1 ; end

; ================

; Route 9
	db "LISHA@"
	db TRAINERTYPE_NORMAL
	; party
	db 18, ODDISH
	db 18, BELLSPROUT
	db 18, ODDISH
	db 18, BELLSPROUT
	db -1 ; end

	db "CAITLIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, MEOWTH
	db -1 ; end

; ================

; Route 10
	db "HEIDI@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, PIKACHU
	db 20, CLEFAIRY
	db -1 ; end

	db "CAROL@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, PIDGEOTTO
	db -1 ; end

; ================

; Rock Tunnel B1F
	db "SOFIA@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, JIGGLYPUFF
	db 21, MEOWTH
	db -1 ; end

	db "MARTHA@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, ODDISH
	db 22, BULBASAUR
	db -1 ; end

; ================

; Rock Tunnel 1F
	db "LEAH@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, JIGGLYPUFF
	db 22, MEOWTH
	db -1 ; end

	db "DANA@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, ODDISH
	db 20, BULBASAUR
	db -1 ; end

	db "ANA@"
	db TRAINERTYPE_NORMAL
	; party
	db 19, ODDISH
	db 19, BULBASAUR
	db -1 ; end

; ================

; Route 13
	db "SUZI@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, PIKACHU
	db 25, CLEFAIRY
	db -1 ; end

	db "VALERI@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, PIDGEOTTO
	db -1 ; end

	db "GWEN@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, PIKACHU
	db 27, CLEFAIRY
	db -1 ; end

	db "ALMA@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, PIDGEOTTO
	db -1 ; end

; ================

; Route 15
	db "KENDRA@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, PIKACHU
	db 25, CLEFAIRY
	db -1 ; end

	db "BECKY@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, PIDGEOTTO
	db -1 ; end

	db "CELIA@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, PIKACHU
	db 27, CLEFAIRY
	db -1 ; end

	db "YAZMIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, PIDGEOTTO
	db -1 ; end

; ================

; Route 20
	db "IRENE@"
	db TRAINERTYPE_NORMAL
	; party
	db 30, HORSEA
	db 30, SEEL
	db -1 ; end

	db "MISSY@"
	db TRAINERTYPE_NORMAL
	; party
	db 31, SEAKING
	db -1 ; end

; ================
; ================================


FisherGroup:
; ================================
; ================

; SS ANNE 2F
	db "DALE@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, GOLDEEN
	db -1 ; end

; ================

; SS ANNE B1F
	db "BARNY@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, SHELLDER
	db -1 ; end

; ================

; Route 12
	db "NED@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, GYARADOS
	db -1 ; end

	; FISHER
	db "CHIP@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, POLIWAG
	db -1 ; end

	; FISHER
	db "HANK@"
	db TRAINERTYPE_NORMAL
	; party
	db 27, GOLDEEN
	db -1 ; end

	; FISHER
	db "ELLIOT@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, POLIWHIRL
	db 21, SHELLDER
	db -1 ; end

	; FISHER
	db "ANDREW@"
	db TRAINERTYPE_NORMAL
	; party
	db 24, POLIWAG
	db 24, POLIWAG
	db -1 ; end

; ================

; Route 21
	db "RONALD@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

	db "CLAUDE@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

	db "WADE@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

	db "NOLAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 32, GYARADOS
	db -1 ; end

; ================
; ================================


BirdKeeperGroup:
; ================================
; ================

; Route 13
	db "SEBBY@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

	db "PERRY@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SPEAROW
	db 25, PIDGEY
	db -1 ; end

	db "ROBERT@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

; ================

; Route 14
	db "DONALD@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

	db "BENNY@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SPEAROW
	db 25, PIDGEY
	db -1 ; end

	db "CARTER@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

	db "MITCH@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

	db "BECK@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

	db "MARLON@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

; ================

; Route 15
	db "EDWIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

	db "CHET@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SPEAROW
	db 25, PIDGEY
	db -1 ; end

; ================

; Route 18
	db "WILTON@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

	db "RAMIRO@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SPEAROW
	db 25, PIDGEY
	db -1 ; end

	db "JACOB@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SPEAROW
	db 25, PIDGEY
	db -1 ; end

; ================

; Route 20
	db "ROGER@"
	db TRAINERTYPE_NORMAL
	; party
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

; ================
; ================================


HikerGroup:
; ================================
; ================

; Mt Moon 1F
	db "MARCOS@"
	db TRAINERTYPE_NORMAL
	; party
	db 10, GEODUDE
	db 10, GEODUDE
	db 10, ONIX
	db -1 ; end

; ================

; Route 25
	db "FRANKLIN@"
	db TRAINERTYPE_NORMAL
	; party
	db 15, MACHOP
	db 15, GEODUDE
	db -1 ; end

	db "NOB@"
	db TRAINERTYPE_NORMAL
	; party
	db 13, GEODUDE
	db 13, MACHOP
	db -1 ; end

	db "WAYNE@"
	db TRAINERTYPE_NORMAL
	; party
	db 17, ONIX
	db -1 ; end

; ================

; Route 9
	db "ALAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

	db "BRICE@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

	db "JEREMY@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

; ================

; Route 10
	db "CLARK@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

	db "TRENT@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

; ================

; Rock Tunnel B1F
	db "DUDLEY@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

	db "ALLEN@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

	db "ERIC@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

; ================

; Rock Tunnel 1F
	db "LENNY@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

	db "OLIVER@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

	db "LUCAS@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

; ================
; ================================


GruntMGroup:
; ================================
; ================

	; GRUNTM
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db 7, RATTATA
	db 9, ZUBAT
	db 9, GASTLY
	db -1 ; end

; ================
; ================================


GruntFGroup:
; ================================
; ================

	; GRUNTF
	db "Grunt@"
	db TRAINERTYPE_NORMAL
	; party
	db 9, ZUBAT
	db 11, EKANS
	db -1 ; end

; ================
; ================================


PokemaniacGroup:
; ================================
; ================

; Route 10
	db "MARK@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, RHYHORN
	db -1 ; end

	db "HERMAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, SLOWPOKE
	db -1 ; end

; ================

; Rock Tunnel B1F
	db "COOPER@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, SLOWPOKE
	db 20, SLOWPOKE
	db 20, SLOWPOKE
	db -1 ; end

	db "STEVE@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, CHARMANDER
	db 22, CUBONE
	db -1 ; end

	db "WINSTON@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, SLOWPOKE
	db -1 ; end

; ================

; Rock Tunnel 1F
	db "ASHTON@"
	db TRAINERTYPE_NORMAL
	; party
	db 23, SLOWPOKE
	db -1 ; end

; ================

; VICTORY ROAD 2F
	db "DAWSON@"
	db TRAINERTYPE_NORMAL
	; party
	db 40, MAROWAK
	db -1 ; end

; ================
; ================================


SuperNerdGroup:
; ================================
; ================

; Mt Moon 1F
	db "JOVAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 11, GRIMER
	db -1 ; end

; ================

; Mt Moon 2F
	db "MIGUEL@"
	db TRAINERTYPE_NORMAL
	; party
	db 11, GRIMER
	db 12, PORYGON
	db -1 ; end

; ================

; Route 8
	db "AIDAN@"
	db TRAINERTYPE_NORMAL
	; party
	db 20, VOLTORB
	db -1 ; end

	db "GLENN@"
	db TRAINERTYPE_NORMAL
	; party
	db 22, GRIMER
	db -1 ; end

	db "LESLIE@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, KOFFING
	db -1 ; end

; ================

; CINNABAR GYM
	db "ERIK@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, MAGNEMITE
	db 46, MUK
	db 45, MAGNETON
	db -1 ; end

	db "AVERY@"
	db TRAINERTYPE_NORMAL
	; party
	db 44, MAGNEMITE
	db 46, MUK
	db 45, MAGNETON
	db -1 ; end

	db "DEREK@"
	db TRAINERTYPE_NORMAL
	; party
	db 41, RAPIDASH
	db -1 ; end

	db "ZAC@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, GROWLITHE
	db 37, VULPIX
	db -1 ; end

; ================
; ================================


LassGroup:
; ================================
; ================

; Viridian Forest
	db "BRITTANY@", TRAINERTYPE_NORMAL
	db 6, NIDORAN_F
	db 6, NIDORAN_M
	db -1 ; end

; ================

; Route 3
	db "JANICE@", TRAINERTYPE_NORMAL
	db 9, PIDGEY
	db 9, PIDGEY
	db -1 ; end

	db "SALLY@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db 10, NIDORAN_M
	db -1 ; end

	db "ROBIN@", TRAINERTYPE_NORMAL
	db 14, JIGGLYPUFF
	db -1 ; end

; ================

; Route 4
	db "CRISSY@", TRAINERTYPE_NORMAL
	db 31, PARAS
	db 31, PARAS
	db 31, PARASECT
	db -1 ; end

; ================

; Mt. Moon 1F
	db "MIRIAM@", TRAINERTYPE_NORMAL
	db 11, ODDISH
	db 11, BELLSPROUT
	db -1 ; end

	db "IRIS@", TRAINERTYPE_NORMAL
	db 14, CLEFAIRY
	db -1 ; end

; ================

; Route 24
	db "RELI@", TRAINERTYPE_NORMAL
	db 16, PIDGEY
	db 16, NIDORAN_F
	db -1 ; end

	db "ALI@", TRAINERTYPE_NORMAL
	db 12, PIDGEY
	db 12, ODDISH
	db 12, BELLSPROUT
	db -1 ; end

; ================

; Route 25
	db "KELSEY@", TRAINERTYPE_NORMAL
	db 15, NIDORAN_M
	db 15, NIDORAN_F
	db -1 ; end

	db "HALEY@", TRAINERTYPE_NORMAL
	db 13, ODDISH
	db 13, PIDGEY
	db 13, ODDISH
	db -1 ; end

; ================

; SS Anne 1F Rooms
;	db "ANN@", TRAINERTYPE_NORMAL
;	db 18, TOGETIC
;	db 18, ESPEON
;	db -1 ; end

; SS Anne 2F Rooms
;	db "DAWN@", TRAINERTYPE_NORMAL
;	db 18, RATTATA
;	db 18, PIKACHU
;	db -1 ; end

; ================

; Route 8
	db "PAIGE@", TRAINERTYPE_NORMAL
	db 23, NIDORAN_F
	db 23, NIDORINA
	db -1 ; end

	db "ANDREA@", TRAINERTYPE_NORMAL
	db 24, MEOWTH
	db 24, MEOWTH
	db 24, MEOWTH
	db -1 ; end

	db "MEGAN@", TRAINERTYPE_NORMAL
	db 19, PIDGEY
	db 19, RATTATA
	db 19, NIDORAN_M
	db 19, MEOWTH
	db 19, PIKACHU
	db -1 ; end

	db "JULIA@", TRAINERTYPE_NORMAL
	db 22, CLEFAIRY
	db 22, CLEFAIRY
	db -1 ; end

; ================

; Celadon Gym
	db "KAY@", TRAINERTYPE_NORMAL
	db 23, BELLSPROUT
	db 23, WEEPINBELL
	db -1 ; end

	db "LISA@", TRAINERTYPE_NORMAL
	db 23, ODDISH
	db 23, GLOOM
	db -1 ; end

; ================
; ================================


BeautyGroup:
; ================================
; ================

; Celadon Gym
	db "TAMIA@", TRAINERTYPE_NORMAL
	db 24, ODDISH
	db 24, GLOOM
	db 24, BELLOSSOM
	db -1 ; end

	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 24, BELLSPROUT
	db 24, WEEPINBELL
	db -1 ; end

	db "LORI@", TRAINERTYPE_NORMAL
	db 26, EXEGGCUTE
	db -1 ; end

; ================

; Route 13
	db "LOLA@", TRAINERTYPE_NORMAL
	db 27, RATTATA
	db 27, PIKACHU
	db 27, RATTATA
	db -1 ; end

	db "SHEILA@", TRAINERTYPE_NORMAL
	db 29, CLEFAIRY
	db 29, MEOWTH
	db -1 ; end

; ================

; Route 15
	db "GRACE@", TRAINERTYPE_NORMAL
	db 29, PIDGEOTTO
	db 29, WIGGLYTUFF
	db -1 ; end

	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 29, BULBASAUR
	db 29, IVYSAUR
	db -1 ; end

; ================
; ================================


JugglerGroup:
; ================================
; ================

; Fuchsia Gym
	db "NATE@", TRAINERTYPE_NORMAL
	db 31, GRIMER
	db 31, MUK
	db 31, KOFFING
	db -1 ; end

	db "KIRK@", TRAINERTYPE_NORMAL
	db 34, GRIMER
	db 34, MUK
	db 34, TENTACRUEL
	db -1 ; end

	db "KAYDEN@", TRAINERTYPE_NORMAL
	db 38, CROBAT
	db 38, MUK
	db -1 ; end

	db "SHAWN@", TRAINERTYPE_NORMAL
	db 34, GOLBAT
	db 34, WEEZING
	db 34, MUK
	db -1 ; end

; Silph Co. 5F
	db "DALTON@", TRAINERTYPE_NORMAL
	db 29, KADABRA
	db 29, MR__MIME
	db -1 ; end

; Victory Road 2F
	db "NELSON@", TRAINERTYPE_NORMAL
	db 41, DROWZEE
	db 41, HYPNO
	db 41, KADABRA
	db 41, KADABRA
	db -1 ; end

	db "GREGORY@", TRAINERTYPE_NORMAL
	db 48, MR__MIME
	db -1 ; end

; ================
; ================================


SchoolboyGroup:
; ================================
; ================

	; SCHOOLBOY
	db "JACK@"
	db TRAINERTYPE_NICKNAME
	; party
	db 8, ODDISH, "RADISH@"
	db 10, VOLTORB, "ORB@"
	db -1 ; end

; ================
; ================================


SchoolgirlGroup:
; ================================
; ================

	; SCHOOLGIRL
	db "MOLLY@"
	db TRAINERTYPE_NICKNAME
	; party
	db 6, CLEFAIRY, "TEDDY@"
	db -1 ; end

; ================
; ================================


PsychicGroup:
; ================================
; ================

; Saffron Gym
	db "JOHAN@", TRAINERTYPE_NORMAL
	db 31, KADABRA
	db 31, SLOWPOKE
	db 31, MR__MIME
	db 31, KADABRA
	db -1 ; end

	db "TYRON@", TRAINERTYPE_NORMAL
	db 34, MR__MIME
	db 34, KADABRA
	db -1 ; end

	db "CAMERON@", TRAINERTYPE_NORMAL
	db 33, SLOWPOKE
	db 33, SLOWBRO
	db 33, SLOWKING
	db -1 ; end

	db "PRESTON@", TRAINERTYPE_NORMAL
	db 38, SLOWKING
	db -1 ; end

; ================
; ================================


HexManiacGroup:
; ================================
; ================

	; HEX_MANIAC - Venustoise sidequest
	db "TAMARA@"
	db TRAINERTYPE_NORMAL
	; party
	db 16, GASTLY
	db 18, GASTLY
	db -1 ; end

; Saffron Gym
	db "AMANDA@", TRAINERTYPE_NORMAL
	db 34, GASTLY
	db 34, HAUNTER
	db -1 ; end

	db "STACY@", TRAINERTYPE_NORMAL
	db 38, HAUNTER
	db -1 ; end

	db "TASHA@", TRAINERTYPE_NORMAL
	db 33, GASTLY
	db 33, GASTLY
	db 33, HAUNTER
	db -1 ; end

; ================
; ================================


MediumGroup:
; ================================
; ================

; Pokemon Tower 3F
	db "HOPE@", TRAINERTYPE_NORMAL
	db 23, GASTLY
	db -1 ; end

	db "CARLY@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "PATRICIA@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

; Pokemon Tower 4F
	db "PAULA@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "LAUREL@", TRAINERTYPE_NORMAL
	db 23, GASTLY
	db 23, GASTLY
	db -1 ; end

	db "JODY@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

; Pokemon Tower 5F
	db "TAMMY@", TRAINERTYPE_NORMAL
	db 23, HAUNTER
	db -1 ; end

	db "RUTH@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

	db "KARINA@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "JANAE@", TRAINERTYPE_NORMAL
	db 22, HAUNTER
	db -1 ; end

; Pokemon Tower 6F
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db 22, GASTLY
	db 22, GASTLY
	db -1 ; end

	db "JENNIFER@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "EMILIA@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

; ================
; ================================


GentlemanGroup:
; ================================
; ================

; Vermilion Gym
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 23, PIKACHU
	db -1 ; end

; SS Anne 1F Rooms
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 18, GROWLITHE
	db 18, GROWLITHE
	db -1 ; end

	db "ARTHUR@", TRAINERTYPE_NORMAL
	db 19, NIDORAN_M
	db 19, NIDORAN_F
	db -1 ; end

; SS Anne 2F Rooms
	db "BROOKS@", TRAINERTYPE_NORMAL
	db 18, HOUNDOUR
	db -1 ; end

	db "LAMAR@", TRAINERTYPE_NORMAL
	db 17, GROWLITHE
	db 17, PONYTA
	db -1 ; end

; ================
; ================================


RichBoyGroup:
; ================================
; ================

	; RICH BOY - SS Anne
	db "TYLER@"
	db TRAINERTYPE_NORMAL
	; party
	db 21, NIDORAN_M
	db -1 ; end

; ================
; ================================


LadyGroup:
; ================================
; ================

; SS Anne 1F Rooms
	db "ANN@", TRAINERTYPE_NORMAL
	db 18, TOGETIC
	db 18, ESPEON
	db -1 ; end

; SS Anne 2F Rooms
	db "DAWN@", TRAINERTYPE_NORMAL
	db 18, RATTATA
	db 18, PIKACHU
	db -1 ; end

; ================
; ================================


SailorGroup:
; ================================
; ================

; SS Anne Deck
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 18, MACHOP
	db 18, SHELLDER
	db -1 ; end

	db "TREVOR@", TRAINERTYPE_NORMAL
	db 17, MACHOP
	db 17, TENTACOOL
	db -1 ; end

; SS Anne B1F Rooms
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 21, SHELLDER
	db -1 ; end

	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 17, HORSEA
	db 17, SHELLDER
	db 17, TENTACOOL
	db -1 ; end

	db "HUEY@", TRAINERTYPE_NORMAL
	db 18, TENTACOOL
	db 18, STARYU
	db -1 ; end

	db "DYLAN@", TRAINERTYPE_NORMAL
	db 17, HORSEA
	db 17, HORSEA
	db 17, HORSEA
	db -1 ; end

	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 20, MACHOP
	db -1 ; end

; Vermilion Gym
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 21, PIKACHU
	db 21, PIKACHU
	db -1 ; end

; ================
; ================================


SwimmerMGroup:
; ================================
; ================

; Cerulean Gym
	db "LUIS@", TRAINERTYPE_NORMAL
	db 16, HORSEA
	db 16, SHELLDER
	db -1 ; end

; Route 19
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 30, TENTACOOL
	db 30, SHELLDER
	db -1 ; end

	db "REECE@", TRAINERTYPE_NORMAL
	db 29, GOLDEEN
	db 29, HORSEA
	db 29, STARYU
	db -1 ; end

	db "MATTHEW@", TRAINERTYPE_NORMAL
	db 30, POLIWAG
	db 30, POLIWHIRL
	db -1 ; end

	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 27, HORSEA
	db 27, TENTACOOL
	db 27, TENTACOOL
	db 27, GOLDEEN
	db -1 ; end

	db "DAVID@", TRAINERTYPE_NORMAL
	db 29, GOLDEEN
	db 29, SHELLDER
	db 29, SEAKING
	db -1 ; end

	db "TONY@", TRAINERTYPE_NORMAL
	db 30, HORSEA
	db 30, HORSEA
	db -1 ; end

	db "AXLE@", TRAINERTYPE_NORMAL
	db 27, TENTACOOL
	db 27, TENTACOOL
	db 27, STARYU
	db 27, HORSEA
	db 27, TENTACRUEL
	db -1 ; end

; Route 20
	db "BARRY@", TRAINERTYPE_NORMAL
	db 31, SHELLDER
	db 31, CLOYSTER
	db -1 ; end

	db "DEAN@", TRAINERTYPE_NORMAL
	db 35, STARYU
	db -1 ; end

	db "DARRIN@", TRAINERTYPE_NORMAL
	db 28, HORSEA
	db 28, HORSEA
	db 28, SEADRA
	db 28, HORSEA
	db -1 ; end

; Route 21
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 33, SEADRA
	db 33, TENTACRUEL
	db -1 ; end

	db "JACK@", TRAINERTYPE_NORMAL
	db 37, STARMIE
	db -1 ; end

	db "JEROME@", TRAINERTYPE_NORMAL
	db 33, STARYU
	db 33, WARTORTLE
	db -1 ; end

	db "ROLAND@", TRAINERTYPE_NORMAL
	db 32, CHINCHOU
	db 32, LANTURN
	db 32, STARMIE
	db -1 ; end

	db "JOSIAH@", TRAINERTYPE_NORMAL
	db 31, TENTACOOL
	db 31, TENTACOOL
	db 31, TENTACRUEL
	db -1 ; end

; ================
; ================================


SwimmerFGroup:
; ================================
; ================

; Cerulean Gym
	db "COLBY@", TRAINERTYPE_NORMAL
	db 19, GOLDEEN
	db -1 ; end

; Route 19
	db "ANYA@", TRAINERTYPE_NORMAL
	db 27, POLIWAG
	db 27, GOLDEEN
	db 27, SEAKING
	db 27, GOLDEEN
	db 27, POLIWAG
	db -1 ; end

	db "ALICE@", TRAINERTYPE_NORMAL
	db 30, GOLDEEN
	db 30, SEAKING
	db -1 ; end

	db "CONNIE@", TRAINERTYPE_NORMAL
	db 29, STARYU
	db 29, STARYU
	db 29, STARYU
	db -1 ; end

; Route 20
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 30, SEADRA
	db 30, HORSEA
	db 30, SEADRA
	db -1 ; end

	db "DEBRA@", TRAINERTYPE_NORMAL
	db 30, TENTACOOL
	db 30, HORSEA
	db 30, SEEL
	db -1 ; end

	db "MELISSA@", TRAINERTYPE_NORMAL
	db 31, GOLDEEN
	db 31, SEAKING
	db -1 ; end

	db "TIFFANY@", TRAINERTYPE_NORMAL
	db 35, SEAKING
	db -1 ; end

	db "NORA@", TRAINERTYPE_NORMAL
	db 30, SHELLDER
	db 30, SHELLDER
	db 30, CLOYSTER
	db -1 ; end

	db "MINA@", TRAINERTYPE_NORMAL
	db 31, POLIWAG
	db 31, SEAKING
	db -1 ; end

; ================
; ================================


BurglarGroup:
; ================================
; ================

; Cinnabar Gym
	db "QUINN@", TRAINERTYPE_NORMAL
	db 36, GROWLITHE
	db 36, VULPIX
	db 36, NINETALES
	db -1 ; end

	db "RAMON@", TRAINERTYPE_NORMAL
	db 41, NINETALES
	db -1 ; end

	db "DUSTY@", TRAINERTYPE_NORMAL
	db 37, VULPIX
	db 37, GROWLITHE
	db -1 ; end

; Mansion 2F
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 34, CHARMANDER
	db 34, CHARMELEON
	db -1 ; end

; Mansion 3F
	db "SIMON@", TRAINERTYPE_NORMAL
	db 38, NINETALES
	db -1 ; end

; Mansion B1F
	db "LEWIS@", TRAINERTYPE_NORMAL
;	db 34, HOUNDOUR
	db 34, PONYTA
	db -1 ; end

; ================
; ================================


PIGroup:
; ================================
; ================

	; PI
	db "LOOKER@"
	db TRAINERTYPE_NORMAL
	; party
	db 48, ARCANINE
	db 48, ELECTABUZZ
	db 50, POLITOED
	db -1 ; end

; ================
; ================================


ScientistGroup:
; ================================
; ================

; Mansion 1F
	db "TED@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, WEEZING
	db -1 ; end

; Mansion 3F
	db "BRAYDON@", TRAINERTYPE_NORMAL
	db 33, MAGNEMITE
	db 33, MAGNETON
	db 33, VOLTORB
	db -1 ; end

; Mansion B1F
	db "IVAN@", TRAINERTYPE_NORMAL
	db 34, MAGNEMITE
	db 34, ELECTRODE
	db -1 ; end

; ================
; ================================


RocketScientistGroup:
; ================================
; ================

; Silph Co 2F
	db "CONNOR@", TRAINERTYPE_NORMAL
	db 26, GRIMER
	db 26, WEEZING
	db 26, KOFFING
	db 26, WEEZING
	db -1 ; end

	db "JERRY@", TRAINERTYPE_NORMAL
	db 28, MAGNEMITE
	db 28, VOLTORB
	db 28, MAGNETON
	db -1 ; end

; Silph Co 3F
	db "JOSE@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, WEEZING
	db -1 ; end

; Silph Co 4F
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 33, ELECTRODE
	db -1 ; end

; Silph Co 5F
	db "BEAU@", TRAINERTYPE_NORMAL
	db 26, MAGNETON
	db 26, KOFFING
	db 26, WEEZING
	db 26, MAGNEMITE
	db -1 ; end

; Silph Co 6F
	db "TAYLOR@", TRAINERTYPE_NORMAL
	db 25, VOLTORB
	db 25, KOFFING
	db 25, MAGNETON
	db 25, MAGNEMITE
	db 25, KOFFING
	db -1 ; end

; Silph Co 7F
	db "JOSHUA@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, MUK
	db -1 ; end

; Silph Co 8F
	db "PARKER@", TRAINERTYPE_NORMAL
	db 29, GRIMER
	db 29, ELECTRODE
	db -1 ; end

; Silph Co 9F
	db "ED@", TRAINERTYPE_NORMAL
	db 28, VOLTORB
	db 28, KOFFING
	db 28, MAGNETON
	db -1 ; end

; Silph Co 10F
	db "TRAVIS@", TRAINERTYPE_NORMAL
	db 29, MAGNEMITE
	db 29, KOFFING
	db -1 ; end

; ================
; ================================


BlackbeltGroup:
; ================================
; ================

; Fighting Dojo
	db "MIKE@", TRAINERTYPE_NORMAL
	db 31, MANKEY
	db 31, MANKEY
	db 31, PRIMEAPE
	db -1 ; end

	db "HIDEKI@", TRAINERTYPE_NORMAL
	db 32, MACHOP
	db 32, MACHOKE
	db -1 ; end

	db "AARON@", TRAINERTYPE_NORMAL
	db 36, PRIMEAPE
	db -1 ; end

	db "HITOSHI@", TRAINERTYPE_NORMAL
	db 31, MACHOP
	db 31, MANKEY
	db 31, PRIMEAPE
	db -1 ; end

; Viridian Gym
	db "ATSUSHI@", TRAINERTYPE_NORMAL
	db 40, MACHOP
	db 40, MACHOKE
	db -1 ; end

	db "KENJI@", TRAINERTYPE_NORMAL
	db 43, MACHOKE
	db -1 ; end

	db "TAKASHI@", TRAINERTYPE_NORMAL
	db 38, MACHOKE
	db 38, MACHOP
	db 38, MACHOKE
	db -1 ; end

; Victory Road 2F
	db "DAISUKE@", TRAINERTYPE_NORMAL
	db 43, MACHOKE
	db 43, MACHOP
	db 43, MACHOKE
	db -1 ; end

; ================
; ================================


BattleGirlGroup:
; ================================
; ================

	; BATTLE_GIRL
	db "SUBARU@"
	db TRAINERTYPE_NORMAL
	; party
	db 26, MACHOP
	db 27, MACHOKE
	db 28, PRIMEAPE
	db -1 ; end

; ================
; ================================


DragonTamerGroup:
; ================================
; ================

	; DRAGON_TAMER
	db "PAUL@"
	db TRAINERTYPE_NORMAL
	; party
	db 37, DRATINI
	db 37, DRATINI
	db 38, DRAGONAIR
	db -1 ; end

; ================
; ================================


EngineerGroup:
; ================================
; ================

; Route 11
	db "BRAXTON@", TRAINERTYPE_NORMAL
	db 21, MAGNEMITE
	db 21, PIKACHU
	db -1 ; end

	db "BERNIE@", TRAINERTYPE_NORMAL
	db 18, MAGNEMITE
	db 18, PIKACHU
	db -1 ; end

; ================
; ================================


TeacherGroup:
; ================================
; ================

	; TEACHER
	db "COLETTE@"
	db TRAINERTYPE_NORMAL
	; party
	db 60, CLEFAIRY
	db -1 ; end

; ================
; ================================


BikerGroup:
; ================================
; ================

; Route 13
	db "JARED@", TRAINERTYPE_NORMAL
	db 28, KOFFING
	db 28, GRIMER
	db 28, EKANS
	db -1 ; end

; Route 14
	db "MALIK@", TRAINERTYPE_NORMAL
	db 29, KOFFING
	db 29, GRIMER
	db -1 ; end

	db "LUKAS@", TRAINERTYPE_NORMAL
	db 26, KOFFING
	db 26, KOFFING
	db 26, GRIMER
	db 26, KOFFING
	db -1 ; end

	db "ISAAC@", TRAINERTYPE_NORMAL
	db 28, GRIMER
	db 28, GRIMER
	db 28, KOFFING
	db -1 ; end

	db "GERALD@", TRAINERTYPE_NORMAL
	db 29, FEAROW
	db 29, MUK
	db -1 ; end

; Route 15
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 25, KOFFING
	db 25, GRIMER
	db -1 ; end

	db "ALEX@", TRAINERTYPE_NORMAL
	db 28, GRIMER
	db 28, GRIMER
	db -1 ; end

; Route 16
	db "LAO@", TRAINERTYPE_NORMAL
	db 29, GRIMER
	db 29, KOFFING
	db -1 ; end

	db "HIDEO@", TRAINERTYPE_NORMAL
	db 33, WEEZING
	db -1 ; end

	db "RUBEN@", TRAINERTYPE_NORMAL
	db 28, WEEZING
	db 28, KOFFING
	db 28, WEEZING
	db -1 ; end

; Route 17
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 28, WEEZING
	db 28, KOFFING
	db 28, WEEZING
	db -1 ; end

	db "BILLY@", TRAINERTYPE_NORMAL
	db 33, MUK
	db -1 ; end

	db "NIKOLAS@", TRAINERTYPE_NORMAL
	db 29, VOLTORB
	db 29, MAGNEMITE
	db -1 ; end

	db "JAXON@", TRAINERTYPE_NORMAL
;	db 29, HOUNDOUR
	db 29, WEEZING
	db -1 ; end

	db "WILLIAM@", TRAINERTYPE_NORMAL
	db 25, KOFFING
	db 25, WEEZING
	db 25, KOFFING
	db 25, KOFFING
	db 25, WEEZING
	db -1 ; end

; ================
; ================================


RoughneckGroup:
; ================================
; ================

; Route 16
	db "KOJI@", TRAINERTYPE_NORMAL
	db 28, MACHOP
	db 28, MANKEY
	db 28, MACHOP
	db -1 ; end

	db "LUKE@", TRAINERTYPE_NORMAL
	db 29, MANKEY
	db 29, MACHOP
	db -1 ; end

	db "CHAD@", TRAINERTYPE_NORMAL
	db 33, MACHOP
	db -1 ; end

; Route 17
	db "RAUL@", TRAINERTYPE_NORMAL
	db 29, MANKEY
	db 29, PRIMEAPE
	db -1 ; end

	db "ISAIAH@", TRAINERTYPE_NORMAL
	db 29, MACHOP
	db 29, MACHOKE
	db -1 ; end

	db "ZEEK@", TRAINERTYPE_NORMAL
	db 33, MACHOKE
	db -1 ; end

	db "JAMAL@", TRAINERTYPE_NORMAL
	db 26, MANKEY
	db 26, MANKEY
	db 26, MACHOKE
	db 26, MACHOP
	db -1 ; end

	db "COREY@", TRAINERTYPE_NORMAL
	db 29, PRIMEAPE
	db 29, MACHOKE
	db -1 ; end

; ================
; ================================


TamerGroup:
; ================================
; ================

	; TAMER - Can be found near Safari Zone
	db "BRETT@"
	db TRAINERTYPE_NORMAL
	; party
	db 39, ARBOK
	db 39, TAUROS
	db 41, KANGASKHAN
	db -1 ; end

; ================
; ================================


ArtistGroup:
; ================================
; ================

	; ARTIST - Battled near Fan Club
	db "REINA@"
	db TRAINERTYPE_NORMAL
	; party
	db 25, MR__MIME
	db 25, CLEFABLE
	db -1 ; end

; ================
; ================================


AromaLadyGroup:
; ================================
; ================

	; AROMA_LADY - CELADON GYM
	db "DAHLIA@"
	db TRAINERTYPE_NORMAL
	; party
	db 38, VILEPLUME
	db 38, BELLOSSOM
	db -1 ; end

; ================
; ================================


CooltrainerMGroup:
; ================================
; ================

; Viridian Gym
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 37, SANDSLASH
	db 37, SANDSLASH
	db 38, RHYHORN
	db 39, NIDORINO
	db 39, NIDOKING
	db -1 ; end

	db "YUJI@", TRAINERTYPE_NORMAL
	db 38, SANDSLASH
	db 38, GRAVELER
	db 38, ONIX
	db 38, GRAVELER
	db 38, MAROWAK
	db -1 ; end

	db "WARREN@", TRAINERTYPE_NORMAL
	db 37, MAROWAK
	db 37, MAROWAK
	db 38, RHYHORN
	db 39, NIDORINA
	db 39, NIDOQUEEN
	db -1 ; end

; Victory Road 1F
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 42, IVYSAUR
	db 42, WARTORTLE
	db 42, CHARMELEON
	db 42, CHARIZARD
	db -1 ; end

; Victory Road 3F
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 43, EXEGGUTOR
	db 43, CLOYSTER
	db 43, ARCANINE
	db -1 ; end

	db "CODY@", TRAINERTYPE_NORMAL
	db 43, KINGLER
	db 43, TENTACRUEL
	db 43, BLASTOISE
	db -1 ; end

; ================
; ================================


SECTION "Enemy Trainer Parties 2", ROMX


CooltrainerFGroup:
; ================================
; ================

; Celadon Gym
	db "BETH@", TRAINERTYPE_NORMAL
	db 24, WEEPINBELL
	db 24, GLOOM
	db 24, IVYSAUR
	db -1 ; end

; Victory Road 1F
	db "NAOMI@", TRAINERTYPE_NORMAL
	db 42, PERSIAN
	db 42, PONYTA
	db 44, RAPIDASH
	db 42, VULPIX
	db 44, NINETALES
	db -1 ; end

; Victory Road 3F
	db "CHRISTY@", TRAINERTYPE_NORMAL
	db 42, BELLSPROUT
	db 42, WEEPINBELL
	db 43, VICTREEBEL
	db 42, PARAS
	db 43, PARASECT
	db -1 ; end

	db "ALEXA@", TRAINERTYPE_NORMAL
	db 42, CLEFABLE
	db 42, WIGGLYTUFF
	db 43, PERSIAN
	db 42, DEWGONG
	db 42, CHANSEY
	db -1 ; end

; ================
; ================================


ArcherGroup:
; ================================
; ================

	; ARCHER
	db "ARCHER@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 43, RATICATE, BLACKGLASSES
		db CRUNCH, SUPER_FANG, HYPER_FANG, DOUBLE_EDGE
	db 41, GENGAR, SPELL_TAG
		db HYPNOSIS, CONFUSE_RAY, PAIN_SPLIT, SHADOW_BALL
	db 42, WEEZING, BRIGHTPOWDER
		db SMOKESCREEN, WILL_O_WISP, PAIN_SPLIT, SLUDGE_BOMB
	db -1 ; end

; ================
; ================================


GiovanniGroup:
; ================================
; ================

	; Hideout
	db "GIOVANNI@", TRAINERTYPE_NORMAL
	db 25, ONIX
	db 24, RHYHORN
	db 29, KANGASKHAN
	db -1 ; end

	; Silph Co
	db "GIOVANNI@", TRAINERTYPE_NORMAL
	db 35, ONIX
	db 37, RHYHORN
	db 37, NIDORINO
	db 41, NIDOQUEEN
	db -1 ; end

	; ARMORED MEWTWO
	db "GIOVANNI@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_PERSONALITY | TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	; party
	db 70, MEWTWO, ARMOR_SUIT, ABILITY_2 | MODEST, MALE, "???@"
		db SHADOW_BALL, PSYCHIC_M, NASTY_PLOT, FOCUS_BLAST
	db -1 ; end

	; Viridian Gym
	db "GIOVANNI@", TRAINERTYPE_NORMAL
	db 45, RHYDON
	db 42, STEELIX
	db 44, NIDOQUEEN
	db 45, NIDOKING
	db 50, RHYPERIOR
	db -1 ; end

	; GIOVANNI - POST-GAME FINAL
	db "GIOVANNI@"
	db TRAINERTYPE_ITEM
	; party
	; TODO: movesets, etc
	db 64, NIDOKING, KINGS_ROCK
	db 62, DUGTRIO, METAL_COAT
	db 60, DODRIO, BLACKGLASSES
	db 60, KANGASKHAN, SILK_SCARF
	db 62, RHYDON, HARD_STONE
	db 64, NIDOQUEEN, SOFT_SAND
	db -1 ; end

; ================
; ================================


KarateKingGroup:
; ================================
; ================

	; KARATE_KING
	db "KIYO@"
	db TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	; party
	db 42, HITMONLEE, BLACK_BELT
		db BULK_UP, FOCUS_ENERGY, HI_JUMP_KICK, LEER
	db 42, HITMONCHAN, KINGS_ROCK
		db THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	db 42, HITMONTOP, FOCUS_BAND
		db BULK_UP, DOUBLE_KICK, RAPID_SPIN, COUNTER
	db -1 ; end

; ================
; ================================


TowerTycoonGroup:
; ================================
; ================

	; unused
	; TOWERTYCOON
	db "PALMER@"
	db TRAINERTYPE_NORMAL

	; party
	db 50, GYARADOS
	db 50, RHYPERIOR
	db 50, DRAGONITE
	db -1 ; end

; ================
; ================================


JessieJamesGroup:
; ================================
; ================

	; JESSIE_JAMES
	db "& JAMES@"
	db TRAINERTYPE_PERSONALITY
	; party
	; TODO: movesets, etc
	db 26, WEEZING, ABILITY_1 | QUIRKY, MALE
	db 26, ARBOK, ABILITY_1 | QUIRKY, FEMALE | ARBOK_KANTO_FORM
	db 24, VICTREEBEL, ABILITY_1 | QUIRKY, FEMALE
	db 24, WOBBUFFET, ABILITY_1 | QUIRKY, MALE
	db 28, MEOWTH, ABILITY_1 | QUIRKY, MALE
	db -1 ; end

; ================
; ================================
