INCLUDE "data/trainers/party_pointers.asm"
INCLUDE "data/trainers/macros.asm"

; All trainers follow a basic structure (<> is mandatory, [] is optional):
	; def_trainer <TRAINER_CONSTANT>, <Name>
	; tr_mon <LEVEL>, [Nickname], <SPECIES/SPECIES @ ITEM>, [GENDER+FORM]
		; tr_extra [ABILITY], [NATURE], [SHINY]
		; tr_dvs <SPREAD>
		; tr_evs <SPREAD>
		; tr_moves <MOVE1>, [MOVE2], [MOVE3], [MOVE4]
	; end_trainer
	; def_trainer, tr_mon and end_trainer are required. Other fields are
	; optional and can be skipped. For full information about what each
	; parameter does, see data/trainers/macros.asm.

; TODO: boss trainers need better movesets, held items, natures, and abilities

	def_trainer_class TRAINER_NONE


SECTION "RedGroup", ROMX
RedGroup:

	def_trainer_class RED
	def_trainer 1, "Red"
	tr_mon 60, TYPHLOSION @ QUICK_CLAW
		tr_moves SUNNY_DAY, THUNDERPUNCH, FLAMETHROWER, SUBSTITUTE
	end_trainer


SECTION "GreenGroup", ROMX
GreenGroup:

	def_trainer_class GREEN
	def_trainer 1, "Green"
	tr_mon 60, MEGANIUM @ SITRUS_BERRY
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	end_trainer


SECTION "ChaseGroup", ROMX
ChaseGroup:

	def_trainer_class CHASE
	def_trainer 1, "Chase"
	tr_mon 60, FERALIGATR @ LUM_BERRY
		tr_moves SURF, CRUNCH, ICE_PUNCH, ROCK_SLIDE
	end_trainer


SECTION "ElaineGroup", ROMX
ElaineGroup:

	def_trainer_class ELAINE
	def_trainer 1, "Elaine"
	tr_mon 60, MEGANIUM @ SITRUS_BERRY
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, TOXIC
	end_trainer


SECTION "FalknerGroup", ROMX
FalknerGroup:

	def_trainer_class FALKNER
	def_trainer 1, "Falkner"
	tr_mon 10, NATU, MALE
		tr_extra SYNCHRONIZE
		tr_evs 32 HP
		tr_moves PECK, LEER, NIGHT_SHADE, MUD_SLAP
	tr_mon 11, HOOTHOOT, MALE
		tr_extra INSOMNIA
		tr_evs 32 HP
		tr_moves TACKLE, HYPNOSIS, PECK, CONFUSION
	tr_mon 13, PIDGEOTTO @ PECHA_BERRY, MALE
		tr_extra KEEN_EYE
		tr_evs 32 HP
		tr_moves GUST, MUD_SLAP, QUICK_ATTACK, ROOST
	end_trainer

	def_trainer 2, "Falkner"
	tr_mon 73, NOCTOWL @ WIDE_LENS, MALE
		tr_extra TINTED_LENS, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
if DEF(FAITHFUL)
		tr_moves AIR_SLASH, HYPER_VOICE, HYPNOSIS, DREAM_EATER
else
		tr_moves AIR_SLASH, SHADOW_BALL, HYPNOSIS, DREAM_EATER
endc
	tr_mon 70, GLISCOR @ TOXIC_ORB, MALE
		tr_extra POISON_HEAL, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves KNOCK_OFF, EARTHQUAKE, TOXIC, U_TURN
	tr_mon 72, DODRIO @ CHOICE_BAND, MALE
		tr_extra TANGLED_FEET, ATK_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves THRASH, HI_JUMP_KICK, PURSUIT, BRAVE_BIRD
	tr_mon 70, TOGEKISS @ LEFTOVERS, MALE
		tr_extra SERENE_GRACE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves ANCIENTPOWER, AIR_SLASH, THUNDER_WAVE, ROOST
	tr_mon 72, HONCHKROW @ LIFE_ORB, MALE
		tr_extra MOXIE, ATK_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves BRAVE_BIRD, NIGHT_SLASH, SUCKER_PUNCH, ROOST
	tr_mon 75, PIDGEOT @ FOCUS_SASH, MALE
		tr_extra NO_GUARD, SPE_UP_ATK_DOWN
		tr_evs 4 HP, 252 SAt, 252 Spe
		tr_moves HURRICANE, HYPER_BEAM, FOCUS_BLAST, ROOST
	end_trainer


SECTION "BugsyGroup", ROMX
BugsyGroup:

	def_trainer_class BUGSY
	def_trainer 1, "Bugsy"
	tr_mon 14, BUTTERFREE, MALE
		tr_evs 32 SAt, 32 Spe
		tr_moves TACKLE, POISONPOWDER, SLEEP_POWDER, CONFUSION
	tr_mon 14, BEEDRILL, MALE
		tr_extra SNIPER
		tr_evs 32 Atk, 32 Spe
		tr_moves POISON_STING, STRING_SHOT, DEFENSE_CURL, FURY_STRIKES
	tr_mon 14, YANMA, FEMALE
		tr_extra SPEED_BOOST
		tr_evs 64 Atk
		tr_moves FORESIGHT, QUICK_ATTACK, DOUBLE_TEAM, SONIC_BOOM
	tr_mon 17, SCYTHER, FEMALE
		tr_extra SWARM
		tr_evs 64 Atk
		tr_moves QUICK_ATTACK, LEER, PURSUIT, U_TURN
	end_trainer

	def_trainer 2, "Bugsy"
	tr_mon 71, LEDIAN @ LIGHT_CLAY, FEMALE
		tr_extra IRON_FIST, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves REFLECT, LIGHT_SCREEN, U_TURN, DRAIN_PUNCH
	tr_mon 73, HERACROSS @ CHOICE_SCARF, MALE
		tr_extra SKILL_LINK, ATK_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves PIN_MISSILE, CLOSE_COMBAT, EARTHQUAKE, ROCK_BLAST
	tr_mon 70, YANMEGA @ LIFE_ORB, FEMALE
		tr_extra SPEED_BOOST, SATK_UP_ATK_DOWN
		tr_evs 4 HP, 252 SAt, 252 Spe
if DEF(FAITHFUL)
		tr_moves BUG_BUZZ, AIR_SLASH, PROTECT, GIGA_DRAIN
else
		tr_moves BUG_BUZZ, DRAGON_PULSE, PROTECT, GIGA_DRAIN
endc
	tr_mon 72, PARASECT @ FOCUS_SASH, MALE
		tr_extra DRY_SKIN, SDEF_UP_SPE_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves SPORE, HEALINGLIGHT, LEECH_SEED, LEECH_LIFE
	tr_mon 75, PINSIR @ LEFTOVERS, MALE
		tr_extra MOXIE, SPE_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves MEGAHORN, SWORDS_DANCE, CLOSE_COMBAT, EARTHQUAKE
	tr_mon 75, SCYTHER @ EVIOLITE, FEMALE
		tr_extra TECHNICIAN, SPE_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves SWORDS_DANCE, CUT, BUG_BITE, AERIAL_ACE
	end_trainer


SECTION "WhitneyGroup", ROMX
WhitneyGroup:

	def_trainer_class WHITNEY
	def_trainer 1, "Whitney"
	tr_mon 19, CLEFAIRY, FEMALE
		tr_extra CUTE_CHARM
		tr_evs 96 HP
		tr_moves METRONOME, DISARM_VOICE, DOUBLE_SLAP, ATTRACT
	tr_mon 20, TEDDIURSA, FEMALE
		tr_extra PICKUP
		tr_evs 32 HP, 32 Atk, 32 Spe
		tr_moves SCRATCH, ATTRACT, LICK, FEINT_ATTACK
	tr_mon 19, MUNCHLAX, FEMALE
		tr_extra THICK_FAT
		tr_evs 64 Def, 32 SDf
		tr_moves ATTRACT, METRONOME, DEFENSE_CURL, ROLLOUT
	tr_mon 21, "Milky", MILTANK @ LUM_BERRY, FEMALE
		tr_extra SCRAPPY
		tr_evs 48 Atk, 48 Spe
		tr_moves DEFENSE_CURL, STOMP, FRESH_SNACK, ROLLOUT
	end_trainer

	def_trainer 2, "Whitney"
	tr_mon 71, LICKILICKY @ LEFTOVERS, FEMALE
		tr_extra OBLIVIOUS, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves KNOCK_OFF, ATTRACT, BODY_SLAM, SWORDS_DANCE
	tr_mon 72, GRANBULL @ ASSAULT_VEST, FEMALE
		tr_extra INTIMIDATE, ATK_UP_SATK_DOWN
		tr_evs 132 HP, 252 Atk, 124 SDf
		tr_moves PLAY_ROUGH, EARTHQUAKE, STONE_EDGE, BODY_SLAM
	tr_mon 74, CLEFABLE @ LIFE_ORB, FEMALE
		tr_extra MAGIC_GUARD, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves CALM_MIND, MOONBLAST, FRESH_SNACK, THUNDER_WAVE
	tr_mon 70, CHANSEY @ EVIOLITE, FEMALE
		tr_extra NATURAL_CURE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves TOXIC, SEISMIC_TOSS, FRESH_SNACK, PROTECT
	tr_mon 72, WIGGLYTUFF @ THROAT_SPRAY, FEMALE
		tr_extra COMPETITIVE, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves NASTY_PLOT, HYPER_VOICE, MOONBLAST, FIRE_BLAST
	tr_mon 75, MILTANK @ METRONOME_I, FEMALE
		tr_extra SCRAPPY, ATK_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves DEFENSE_CURL, ROLLOUT, FRESH_SNACK, BODY_SLAM
	end_trainer


SECTION "MortyGroup", ROMX
MortyGroup:

	def_trainer_class MORTY
	def_trainer 1, "Morty"
	tr_mon 24, HAUNTER, MALE
		tr_extra LEVITATE
		tr_evs 64 Atk, 64 Spe
		tr_moves HYPNOSIS, ICE_PUNCH, NIGHT_SHADE, SHADOW_CLAW
if DEF(FAITHFUL)
	tr_mon 24, HAUNTER, MALE
		tr_extra LEVITATE
		tr_evs 64 SAt, 64 Spe
		tr_moves HYPNOSIS, CONFUSE_RAY, DISABLE, SHADOW_BALL
else
	tr_mon 24, NOCTOWL, MALE
		tr_extra INSOMNIA
		tr_evs 64 HP, 64 Spe
		tr_moves HYPNOSIS, FORESIGHT, CONFUSION, HEX
endc
	tr_mon 25, MISDREAVUS, MALE
		tr_extra LEVITATE
		tr_evs 64 SAt, 64 Spe
		tr_moves DISARM_VOICE, DARK_PULSE, NASTY_PLOT, SHADOW_BALL
	tr_mon 26, GENGAR @ WIDE_LENS, MALE
if DEF(FAITHFUL)
		tr_extra CURSED_BODY
else
		tr_extra LEVITATE
endc
		tr_evs 64 SAt, 64 Spe
		tr_moves HYPNOSIS, THUNDERBOLT, SHADOW_BALL, DREAM_EATER
	end_trainer

	def_trainer 2, "Morty"
	tr_mon 70, CURSOLA @ EJECT_BUTTON, MALE
		tr_extra PERISH_BODY, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves SCALD, SHADOW_BALL, POWER_GEM, PERISH_SONG
	tr_mon 72, NINETALES @ LEFTOVERS, MALE
		tr_extra FLASH_FIRE, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves CONFUSE_RAY, WILL_O_WISP, HEX, FLAMETHROWER
	tr_mon 71, MAROWAK @ THICK_CLUB, MALE | ALOLAN_FORM
		tr_extra ROCK_HEAD, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 252 Atk, 4 SDf
		tr_moves BONEMERANG, FLARE_BLITZ, ICE_PUNCH, SHADOW_CLAW
	tr_mon 73, MISMAGIUS @ LIFE_ORB, MALE
		tr_extra LEVITATE, SPE_UP_ATK_DOWN
		tr_evs 4 HP, 252 SAt, 252 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, DAZZLINGLEAM, NASTY_PLOT
if DEF(FAITHFUL)
	tr_mon 74, HAUNTER @ FOCUS_SASH, MALE
		tr_extra LEVITATE, SPE_UP_ATK_DOWN
		tr_evs 4 HP, 252 SAt, 252 Spe
		tr_moves DISABLE, SHADOW_BALL, DESTINY_BOND, PAIN_SPLIT
else
	tr_mon 74, NOCTOWL @ CHOICE_SPECS, MALE
		tr_extra TINTED_LENS, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves MOONBLAST, AIR_SLASH, SHADOW_BALL, HURRICANE
endc
	tr_mon 75, GENGAR @ SPELL_TAG, MALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves DISABLE, SHADOW_BALL, SLUDGE_BOMB, DESTINY_BOND
	end_trainer


SECTION "ChuckGroup", ROMX
ChuckGroup:

	def_trainer_class CHUCK
	def_trainer 1, "Chuck"
	tr_mon 30, PRIMEAPE, MALE
		tr_extra DEFIANT
		tr_evs 160 Atk
		tr_moves KARATE_CHOP, SEISMIC_TOSS, FEINT_ATTACK, DYNAMICPUNCH
	tr_mon 29, FARFETCH_D, MALE | GALARIAN_FORM
		tr_extra STEADFAST
		tr_evs 160 Atk
if DEF(FAITHFUL)
		tr_moves ROCK_SMASH, BODY_SLAM, FEINT_ATTACK, SWORDS_DANCE
else
		tr_moves REVERSAL, BODY_SLAM, FEINT_ATTACK, SWORDS_DANCE
endc
	tr_mon 28, HITMONTOP, MALE
		tr_extra INTIMIDATE
		tr_evs 160 Atk
		tr_moves BULK_UP, SUCKER_PUNCH, DOUBLE_KICK, RAPID_SPIN
	tr_mon 31, POLIWRATH @ ZOOM_LENS, MALE
		tr_extra WATER_ABSORB
		tr_evs 160 Atk
		tr_moves ICE_PUNCH, HYPNOSIS, WATERFALL, DYNAMICPUNCH
	end_trainer

	def_trainer 2, "Chuck"
	tr_mon 71, ANNIHILAPE @ CHOICE_SCARF, MALE
if DEF(FAITHFUL)
		tr_extra DEFIANT, ATK_UP_SATK_DOWN
else
		tr_extra GORILLA_TACTICS, ATK_UP_SATK_DOWN
endc
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SHADOW_CLAW, CLOSE_COMBAT, STONE_EDGE, U_TURN
	tr_mon 73, SIRFETCH_D @ LEEK, MALE
		tr_extra SCRAPPY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 252 Atk, 4 SDf
		tr_moves CLOSE_COMBAT, BRAVE_BIRD, NIGHT_SLASH, POISON_JAB
	tr_mon 72, HITMONCHAN @ PUNCHINGLOVE, MALE
		tr_extra IRON_FIST, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 252 Atk, 4 Def
		tr_moves THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	tr_mon 72, HITMONLEE @ MIRROR_HERB, MALE
		tr_extra UNBURDEN, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves SWAGGER, EARTHQUAKE, KNOCK_OFF, HI_JUMP_KICK
	tr_mon 72, HITMONTOP @ FOCUS_SASH, MALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 4 HP, 252 Atk, 252 Spe
		tr_moves RAPID_SPIN, STONE_EDGE, CLOSE_COMBAT, SUCKER_PUNCH
	tr_mon 75, POLIWRATH @ LEFTOVERS, MALE
		tr_extra WATER_ABSORB, SDEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves WATERFALL, BULK_UP, BULLDOZE, DRAIN_PUNCH
	end_trainer


SECTION "JasmineGroup", ROMX
JasmineGroup:

	def_trainer_class JASMINE
	def_trainer 1, "Jasmine"
	tr_mon 34, SKARMORY, FEMALE
		tr_extra STURDY
		tr_evs 192 HP
		tr_moves MUD_SLAP, DRILL_PECK, SPIKES, STEEL_WING
	tr_mon 33, MAGNETON
		tr_extra MAGNET_PULL
		tr_evs 192 HP
		tr_moves SUPERSONIC, THUNDER_WAVE, THUNDERBOLT, TRI_ATTACK
	tr_mon 34, FORRETRESS, FEMALE
		tr_extra STURDY
		tr_evs 192 HP
		tr_moves SPIKES, GYRO_BALL, DEFENSE_CURL, ROLLOUT
	tr_mon 33, SCIZOR, FEMALE
		tr_extra TECHNICIAN
		tr_evs 192 HP
		tr_moves PURSUIT, AERIAL_ACE, METAL_CLAW, SLASH
	tr_mon 37, STEELIX @ LEFTOVERS, FEMALE
		tr_extra STURDY
		tr_evs 192 HP
		tr_moves BODY_SLAM, BULLDOZE, ROCK_SLIDE, IRON_TAIL
	end_trainer

	def_trainer 2, "Jasmine"
	tr_mon 73, FORRETRESS @ LIGHT_CLAY, FEMALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves TOXIC_SPIKES, LIGHT_SCREEN, EXPLOSION, REFLECT
	tr_mon 74, SKARMORY @ LEFTOVERS, FEMALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves SPIKES, ROAR, ROOST, BRAVE_BIRD
	tr_mon 72, MAGNEZONE @ ASSAULT_VEST
		tr_extra ANALYTIC, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves THUNDERBOLT, HP_GRASS, FLASH_CANNON, VOLT_SWITCH
if DEF(FAITHFUL)
	tr_mon 72, DUGTRIO @ FOCUS_SASH, FEMALE | ALOLAN_FORM
		tr_extra TANGLING_HAIR, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves EARTHQUAKE, STONE_EDGE, IRON_HEAD, REVERSAL
else
	tr_mon 72, RHYPERIOR @ WEAK_POLICY, FEMALE
		tr_extra SOLID_ROCK, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, MEGAHORN, IRON_HEAD
endc
	tr_mon 75, STEELIX @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves EARTHQUAKE, ROCK_SLIDE, CRUNCH, IRON_HEAD
	end_trainer


SECTION "PryceGroup", ROMX
PryceGroup:

	def_trainer_class PRYCE
	def_trainer 1, "Pryce"
	tr_mon 39, DEWGONG @ CHESTO_BERRY, MALE
		tr_extra HYDRATION
		tr_evs 224 HP
		tr_moves WATERFALL, REST, RAIN_DANCE, AURORA_BEAM
	tr_mon 38, SNEASEL, MALE
		tr_extra INNER_FOCUS
		tr_evs 224 Atk
		tr_moves SWORDS_DANCE, ICICLE_CRASH, SCREECH, SLASH
	tr_mon 38, CLOYSTER, MALE
		tr_extra SHELL_ARMOR
		tr_evs 224 HP
		tr_moves DEFENSE_CURL, SUPERSONIC, WATER_PULSE, ICE_SHARD
	tr_mon 40, LAPRAS, MALE
		tr_extra WATER_ABSORB
		tr_evs 224 HP
		tr_moves SING, CONFUSE_RAY, ANCIENTPOWER, ICE_BEAM
	tr_mon 42, MAMOSWINE @ SITRUS_BERRY, MALE
		tr_extra OBLIVIOUS
		tr_evs 224 Atk
		tr_moves MAGNITUDE, ANCIENTPOWER, AVALANCHE, FURY_STRIKES
	end_trainer

	def_trainer 2, "Pryce"
	tr_mon 73, NINETALES @ ICY_ROCK, MALE | ALOLAN_FORM
		tr_extra SNOW_WARNING, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves BLIZZARD, MOONBLAST, DARK_PULSE, NASTY_PLOT
	tr_mon 73, CLOYSTER @ WHITE_HERB, MALE
		tr_extra SKILL_LINK, SPE_UP_SDEF_DOWN
		tr_evs 252 Atk, 4 SAt, 252 Spe
		tr_moves SHELL_SMASH, ICICLE_SPEAR, ROCK_BLAST, SURF
	tr_mon 72, WEAVILE @ LIFE_ORB, MALE
if DEF(FAITHFUL)
		tr_extra PRESSURE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, ICICLE_CRASH, ICE_SHARD, KNOCK_OFF
else
		tr_extra TECHNICIAN, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, ICICLE_CRASH, ICE_SHARD, BITE
endc
	tr_mon 71, GLACEON @ ASSAULT_VEST, MALE
if DEF(FAITHFUL)
		tr_extra SNOW_CLOAK, SATK_UP_ATK_DOWN
else
		tr_extra SNOW_WARNING, SATK_UP_ATK_DOWN
endc
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves BLIZZARD, EARTH_POWER, SHADOW_BALL, MIRROR_COAT
	tr_mon 73, LAPRAS @ LEFTOVERS, MALE
		tr_extra WATER_ABSORB, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves SING, SURF, ICE_BEAM, DREAM_EATER
	tr_mon 75, MAMOSWINE @ FOCUS_SASH, MALE
		tr_extra THICK_FAT, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves EARTHQUAKE, AVALANCHE, STONE_EDGE, KNOCK_OFF
	end_trainer


SECTION "ClairGroup", ROMX
ClairGroup:

	def_trainer_class CLAIR
	def_trainer 1, "Clair"
	tr_mon 43, GYARADOS, FEMALE
		tr_extra INTIMIDATE
		tr_evs 4 Atk, 252 Spe
		tr_moves CRUNCH, THRASH, DRAGON_PULSE, AQUA_TAIL
	tr_mon 45, YANMEGA, FEMALE
		tr_extra SPEED_BOOST
		tr_evs 4 HP, 252 SAt
if DEF(FAITHFUL)
		tr_moves BUG_BUZZ, AIR_SLASH, ANCIENTPOWER, DOUBLE_TEAM
else
		tr_moves BUG_BUZZ, DRAGON_PULSE, ANCIENTPOWER, DOUBLE_TEAM
endc
	tr_mon 44, DRAGONAIR, FEMALE
		tr_extra SHED_SKIN
		tr_evs 128 HP, 128 Spe
		tr_moves THUNDER_WAVE, AQUA_TAIL, FLAMETHROWER, DRAGON_PULSE
	tr_mon 44, AMPHAROS, FEMALE
		tr_extra STATIC
		tr_evs 128 HP, 128 SAt
		tr_moves THUNDER_WAVE, POWER_GEM, THUNDERBOLT, DRAGON_PULSE
	tr_mon 44, DRAGONAIR, FEMALE
		tr_extra SHED_SKIN
		tr_evs 128 HP, 128 SAt
		tr_moves THUNDER_WAVE, THUNDERBOLT, ICE_BEAM, DRAGON_PULSE
	tr_mon 47, KINGDRA @ SHELL_BELL, FEMALE
		tr_extra SNIPER
		tr_evs 252 SAt, 4 Spe
		tr_moves SMOKESCREEN, HYPER_BEAM, DRAGON_PULSE, SURF
	end_trainer

	def_trainer 2, "Clair"
	tr_mon 72, GYARADOS @ LEFTOVERS, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, WATERFALL, FLY, EARTHQUAKE
	tr_mon 74, EXEGGUTOR @ LUM_BERRY, FEMALE | ALOLAN_FORM
		tr_extra HARVEST, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves REST, SLEEP_POWDER, GIGA_DRAIN, DRAGON_PULSE
	tr_mon 73, DRAGONITE @ CHOICE_BAND, FEMALE
		tr_extra MULTISCALE, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves OUTRAGE, EXTREMESPEED, FIRE_PUNCH, IRON_HEAD
if DEF(FAITHFUL)
	tr_mon 73, DRAGONITE @ FOCUS_SASH, FEMALE
		tr_extra INNER_FOCUS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, DRAGON_CLAW, WATERFALL, WING_ATTACK
else
	tr_mon 73, AMPHAROS @ ASSAULT_VEST, FEMALE
		tr_extra MOLD_BREAKER, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves VOLT_SWITCH, POWER_GEM, THUNDERBOLT, DRAGON_PULSE
endc
	tr_mon 74, DRAGONAIR @ EVIOLITE, FEMALE
		tr_extra MARVEL_SCALE
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves DRAGON_DANCE, EXTREMESPEED, OUTRAGE, AQUA_TAIL
	tr_mon 75, KINGDRA @ CHESTO_BERRY, FEMALE
		tr_extra SNIPER, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 Atk, 252 Spe
		tr_moves DRAGON_DANCE, WATERFALL, OUTRAGE, REST
	end_trainer


SECTION "WillGroup", ROMX
WillGroup:

	def_trainer_class WILL
	def_trainer 1, "Will"
	tr_mon 48, WYRDEER @ TWISTEDSPOON, MALE
		tr_extra INTIMIDATE
		tr_evs 252 HP, 36 Spe
		tr_moves PSYCHIC_M, SHADOW_BALL, CALM_MIND, HYPNOSIS
	tr_mon 49, JYNX @ NEVERMELTICE, FEMALE
		tr_extra DRY_SKIN
		tr_evs 144 SAt, 144 Spe
		tr_moves NASTY_PLOT, DRAINING_KISS, ICE_BEAM, PSYCHIC_M
	tr_mon 50, EXEGGUTOR @ MIRACLE_SEED, MALE
		tr_extra CHLOROPHYLL
		tr_evs 144 HP, 144 SAt
		tr_moves REFLECT, LEECH_SEED, SEED_BOMB, PSYCHIC_M
	tr_mon 50, ALAKAZAM @ LUM_BERRY, MALE
		tr_extra SYNCHRONIZE
		tr_evs 144 HP, 144 SAt
		tr_moves CALM_MIND, RECOVER, SHADOW_BALL, PSYCHIC_M
	tr_mon 49, SLOWBRO @ SITRUS_BERRY, MALE
		tr_extra OWN_TEMPO
		tr_evs 144 HP, 144 SDf
		tr_moves SURF, CALM_MIND, FLAMETHROWER, PSYCHIC_M
	tr_mon 51, XATU @ LEFTOVERS, MALE
		tr_extra SYNCHRONIZE
		tr_evs 4 HP, 252 SAt
		tr_moves AIR_SLASH, CONFUSE_RAY, GIGA_DRAIN, FUTURE_SIGHT
	end_trainer

	def_trainer 2, "Will"
	tr_mon 67, WYRDEER @ ASSAULT_VEST, MALE
		tr_extra INTIMIDATE, SATK_UP_SPE_DOWN
		tr_evs 252 HP, 4 Atk, 252 SAt
		tr_moves SHADOW_BALL, MEGAHORN, EARTHQUAKE, PSYCHIC_M
	tr_mon 68, JYNX @ FOCUS_SASH, FEMALE
		tr_extra DRY_SKIN, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves NASTY_PLOT, DRAINING_KISS, ICE_BEAM, PSYCHIC_M
	tr_mon 68, EXEGGUTOR @ ROOM_SERVICE, MALE
		tr_extra HARVEST, SATK_UP_SPE_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves TRICK_ROOM, GIGA_DRAIN, SLEEP_POWDER, PSYCHIC_M
	tr_mon 69, ALAKAZAM @ LIFE_ORB, MALE
		tr_extra SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HP_FIRE, FOCUS_BLAST, SHADOW_BALL, PSYCHIC_M
	tr_mon 69, SLOWBRO @ ROCKY_HELMET, MALE
		tr_extra DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SAt, 252 Def
		tr_moves SURF, PSYCHIC_M, CALM_MIND, RECOVER
	tr_mon 70, XATU @ LEFTOVERS, MALE
		tr_extra SPE_UP_ATK_DOWN
		tr_evs 252 HP, 4 SAt, 252 Spe
		tr_moves RECOVER, FUTURE_SIGHT, DAZZLINGLEAM, CALM_MIND
	end_trainer


SECTION "JanineGroup", ROMX
JanineGroup:

	def_trainer_class JANINE
	def_trainer 1, "Janine"
	tr_mon 50, VENOMOTH @ SILVERPOWDER, MALE
		tr_extra TINTED_LENS
		tr_evs 252 SAt, 68 Spe
		tr_moves SUPERSONIC, BUG_BUZZ, PSYCHIC_M, TOXIC
	tr_mon 50, CLODSIRE @ SITRUS_BERRY, MALE
		tr_extra WATER_ABSORB
		tr_evs 160 Def, 160 SDf
		tr_moves POISON_JAB, TOXIC_SPIKES, EARTHQUAKE, MEGAHORN
	tr_mon 52, FORRETRESS @ SILK_SCARF, MALE
		tr_extra STURDY
		tr_evs 252 HP, 68 SDf
		tr_moves PROTECT, EXPLOSION, SPIKES, IRON_HEAD
	tr_mon 51, MUK @ BRIGHTPOWDER, MALE
		tr_extra STENCH
		tr_evs 252 Atk, 68 Spe
		tr_moves MINIMIZE, FIRE_PUNCH, GUNK_SHOT, TOXIC
	tr_mon 51, WEEZING @ POISON_BARB, MALE
		tr_extra LEVITATE
		tr_evs 252 HP, 68 Spe
		tr_moves FLAMETHROWER, TOXIC, SLUDGE_BOMB, EXPLOSION
	tr_mon 53, CROBAT @ LEFTOVERS, MALE
		tr_extra INNER_FOCUS
		tr_evs 252 HP, 68 Atk
		tr_moves DOUBLE_TEAM, POISON_JAB, SUPER_FANG, TOXIC
	end_trainer

	def_trainer 2, "Janine"
	tr_mon 69, TENTACRUEL @ BLACK_SLUDGE, MALE
		tr_extra LIQUID_OOZE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves POWER_WHIP, SWORDS_DANCE, WATERFALL, POISON_JAB
	tr_mon 71, FORRETRESS @ ROCKY_HELMET, MALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Def
		tr_moves PROTECT, TOXIC, EXPLOSION, SPIKES
	tr_mon 69, ARBOK @ FOCUS_SASH, MALE | ARBOK_KOGA_FORM
		tr_extra INTIMIDATE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves GUNK_SHOT, GLARE, EARTHQUAKE, IRON_TAIL
	tr_mon 70, MUK @ BRIGHTPOWDER, MALE
		tr_extra STENCH, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves MINIMIZE, FIRE_PUNCH, GUNK_SHOT, TOXIC
	tr_mon 71, WEEZING @ ASSAULT_VEST, MALE | GALARIAN_FORM
		tr_extra LEVITATE, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves FIRE_BLAST, THUNDER, SLUDGE_BOMB, MOONBLAST
	tr_mon 72, CROBAT @ LEFTOVERS, MALE
		tr_extra INFILTRATOR, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves BRAVE_BIRD, TOXIC, DOUBLE_TEAM, ROOST
	end_trainer


SECTION "BrunoGroup", ROMX
BrunoGroup:

	def_trainer_class BRUNO
	def_trainer 1, "Bruno"
	tr_mon 51, HITMONTOP @ QUICK_CLAW, MALE
		tr_extra INTIMIDATE
		tr_evs 176 Atk, 176 Spe
		tr_moves PURSUIT, CLOSE_COMBAT, DIG, PROTECT
	tr_mon 53, SNEASLER @ SILVERPOWDER, MALE
		tr_extra UNBURDEN
		tr_evs 176 Atk, 176 Spe
		tr_moves SWORDS_DANCE, X_SCISSOR, CLOSE_COMBAT, GUNK_SHOT
	tr_mon 51, HITMONLEE @ FOCUS_BAND, MALE
		tr_extra RECKLESS
		tr_evs 176 Atk, 176 Spe
		tr_moves SUCKER_PUNCH, STONE_EDGE, HI_JUMP_KICK, FOCUS_ENERGY
	tr_mon 51, HITMONCHAN @ NEVERMELTICE, MALE
		tr_extra IRON_FIST
		tr_evs 176 Atk, 176 Spe
		tr_moves THUNDERPUNCH, ICE_PUNCH, POISON_JAB, MACH_PUNCH
	tr_mon 53, ONIX @ HARD_STONE, MALE
		tr_extra STURDY
		tr_evs 100 HP, 252 Atk
		tr_moves BODY_SLAM, EARTHQUAKE, CRUNCH, ROCK_SLIDE
	tr_mon 55, MACHAMP @ LEFTOVERS, MALE
		tr_extra NO_GUARD
		tr_evs 100 HP, 252 Atk
		tr_moves ROCK_SLIDE, FORESIGHT, CROSS_CHOP, BULK_UP
	end_trainer

	def_trainer 2, "Bruno"
	tr_mon 70, HITMONTOP @ QUICK_CLAW, MALE
		tr_extra INTIMIDATE, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves BULK_UP, SUCKER_PUNCH, EARTHQUAKE, HI_JUMP_KICK
	tr_mon 71, SNEASLER @ WHITE_HERB, MALE
		tr_extra UNBURDEN, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, KNOCK_OFF, CLOSE_COMBAT, GUNK_SHOT
	tr_mon 70, HITMONLEE @ LIECHI_BERRY, MALE
		tr_extra UNBURDEN, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves ENDURE, REVERSAL, STONE_EDGE, SUCKER_PUNCH
	tr_mon 70, HITMONCHAN @ ASSAULT_VEST, MALE
		tr_extra IRON_FIST, ATK_UP_SATK_DOWN
		tr_moves DRAIN_PUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	tr_mon 72, STEELIX @ LIFE_ORB, MALE
		tr_extra SHEER_FORCE, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves CRUNCH, BULLDOZE, ROCK_SLIDE, IRON_HEAD
	tr_mon 74, MACHAMP @ LEFTOVERS, MALE
		tr_extra NO_GUARD, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves BULK_UP, STONE_EDGE, KNOCK_OFF, DYNAMICPUNCH
	end_trainer


SECTION "KarenGroup", ROMX
KarenGroup:

	def_trainer_class KAREN
	def_trainer 1, "Karen"
	tr_mon 53, UMBREON @ LEFTOVERS, FEMALE
		tr_extra SYNCHRONIZE
		tr_evs 252 HP, 132 Def
		tr_moves MUD_SLAP, CONFUSE_RAY, FEINT_ATTACK, MEAN_LOOK
	tr_mon 53, PERSIAN @ FAIRYFEATHER, FEMALE | ALOLAN_FORM
		tr_extra TECHNICIAN
		tr_evs 252 HP, 132 Atk
		tr_moves NIGHT_SLASH, FEINT_ATTACK, SCREECH, PLAY_ROUGH
	tr_mon 54, WEAVILE @ KINGS_ROCK, FEMALE
		tr_extra PRESSURE
		tr_evs 252 Atk, 132 Spe
		tr_moves SWORDS_DANCE, SCREECH, NIGHT_SLASH, ICE_PUNCH
	tr_mon 55, GENGAR @ SPELL_TAG, FEMALE
		tr_extra CURSED_BODY
		tr_evs 252 SAt, 132 Spe
		tr_moves SHADOW_BALL, WILL_O_WISP, CURSE, DESTINY_BOND
	tr_mon 55, HONCHKROW @ BLACKGLASSES, FEMALE
		tr_extra SUPER_LUCK
		tr_evs 132 Atk, 252 Spe
		tr_moves DRILL_PECK, SUCKER_PUNCH, PURSUIT, BRAVE_BIRD
	tr_mon 57, HOUNDOOM @ CHARCOAL, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 192 SAt, 192 Spe
		tr_moves ROAR, PURSUIT, FLAMETHROWER, DARK_PULSE
	end_trainer

	def_trainer 2, "Karen"
	tr_mon 71, UMBREON @ LEFTOVERS, FEMALE
if DEF(FAITHFUL)
		tr_extra SYNCHRONIZE, DEF_UP_ATK_DOWN
else
		tr_extra MAGIC_GUARD, DEF_UP_ATK_DOWN
endc
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves DARK_PULSE, CALM_MIND, HEALINGLIGHT, TOXIC
	tr_mon 72, WEAVILE @ NEVERMELTICE, FEMALE
if DEF(FAITHFUL)
		tr_extra PRESSURE, SPE_UP_ATK_DOWN
else
		tr_extra TECHNICIAN, SPE_UP_SATK_DOWN
endc
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, ICE_SHARD, BITE, ICICLE_CRASH
	tr_mon 74, GENGAR @ BLACK_SLUDGE, FEMALE
if DEF(FAITHFUL)
		tr_extra CURSED_BODY, SPE_UP_ATK_DOWN
else
		tr_extra LEVITATE, SPE_UP_ATK_DOWN
endc
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SHADOW_BALL, SLUDGE_BOMB, FOCUS_BLAST, DESTINY_BOND
	tr_mon 73, HONCHKROW @ BLACKGLASSES, FEMALE
		tr_extra MOXIE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves PURSUIT, SUCKER_PUNCH, NIGHT_SLASH, BRAVE_BIRD
	tr_mon 74, TYRANITAR @ ASSAULT_VEST, FEMALE
if DEF(FAITHFUL)
		tr_extra UNNERVE, ATK_UP_SATK_DOWN
else
		tr_extra BATTLE_ARMOR, ATK_UP_SATK_DOWN
endc
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves STONE_EDGE, CRUNCH, EARTHQUAKE, PURSUIT
	tr_mon 76, HOUNDOOM @ FOCUS_SASH, FEMALE
		tr_extra FLASH_FIRE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SLUDGE_BOMB, NASTY_PLOT, FIRE_BLAST, DARK_PULSE
	end_trainer


SECTION "ChampionGroup", ROMX
ChampionGroup:

	def_trainer_class CHAMPION
	def_trainer LANCE, "Lance"
	tr_mon 57, GYARADOS @ MUSCLE_BAND, MALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	tr_mon 58, DRAGONITE @ WIDE_LENS, MALE
		tr_extra INNER_FOCUS, SATK_UP_ATK_DOWN
		tr_evs 164 SAt, 252 Spe
		tr_moves FIRE_BLAST, BLIZZARD, THUNDER, HYPER_BEAM
	tr_mon 58, KINGDRA @ SCOPE_LENS, MALE
		tr_extra SNIPER, SATK_UP_ATK_DOWN
		tr_evs 164 SAt, 252 Spe
		tr_moves FOCUS_ENERGY, DRAGON_PULSE, SURF, HYPER_BEAM
	tr_mon 57, AERODACTYL @ KINGS_ROCK, MALE
		tr_extra TOUGH_CLAWS, ATK_UP_SATK_DOWN
		tr_evs 164 Atk, 252 Spe
		tr_moves AERIAL_ACE, ANCIENTPOWER, ROCK_SLIDE, GIGA_IMPACT
	tr_mon 57, CHARIZARD @ WISE_GLASSES, MALE
		tr_extra SOLAR_POWER, SATK_UP_ATK_DOWN
		tr_evs 164 SAt, 252 Spe
if DEF(FAITHFUL)
		tr_moves FLAMETHROWER, AIR_SLASH, FOCUS_BLAST, HYPER_BEAM
else
		tr_moves FLAMETHROWER, DRAGON_PULSE, FOCUS_BLAST, HYPER_BEAM
endc
	tr_mon 60, DRAGONITE @ LEFTOVERS, MALE
		tr_extra MULTISCALE, ATK_UP_SATK_DOWN, SHINY
		tr_evs 252 HP, 164 Atk
		tr_moves SUBSTITUTE, DRAGON_DANCE, FLY, EXTREMESPEED
	end_trainer

	def_trainer LANCE2, "Lance"
	tr_mon 75, GYARADOS @ LIFE_ORB, MALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, FLY, WATERFALL, EARTHQUAKE
	tr_mon 77, EXEGGUTOR @ LUM_BERRY, MALE | ALOLAN_FORM
		tr_extra HARVEST, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves GIGA_DRAIN, DRAGON_PULSE, FLAMETHROWER, SLUDGE_BOMB
	tr_mon 77, KINGDRA @ CHOICE_SPECS, MALE
		tr_extra SNIPER, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HYDRO_PUMP, SCALD, ICE_BEAM, DRAGON_PULSE
	tr_mon 76, AERODACTYL @ CHOICE_BAND, MALE
		tr_extra TOUGH_CLAWS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves STONE_EDGE, BRAVE_BIRD, CRUNCH, EARTHQUAKE
if DEF(FAITHFUL)
	tr_mon 75, CHARIZARD @ LEFTOVERS, MALE
		tr_extra DROUGHT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FIRE_BLAST, SOLAR_BEAM, FOCUS_BLAST, AIR_SLASH
else
	tr_mon 75, CHARIZARD @ LEFTOVERS, MALE
		tr_extra TOUGH_CLAWS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, OUTRAGE, FLARE_BLITZ, ROOST
endc
	tr_mon 80, DRAGONITE @ WEAK_POLICY, MALE
		tr_extra MULTISCALE, ATK_UP_SATK_DOWN, SHINY
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, EXTREMESPEED, OUTRAGE, IRON_HEAD
	end_trainer


SECTION "BrockGroup", ROMX
BrockGroup:

	def_trainer_class BROCK
	def_trainer 1, "Brock"		; 1st Badge
	tr_mon 12, GEODUDE, MALE
		tr_extra STURDY
		tr_moves TACKLE, DEFENSE_CURL, ROLLOUT
	tr_mon 14, ONIX, MALE
		tr_extra STURDY
		tr_moves HEADBUTT, SCREECH, ROCK_SLIDE, WRAP
	end_trainer

	def_trainer 2, "Brock"		; Post-Game
	tr_mon 74, ONIX @ CUSTAP_BERRY, MALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves EXPLOSION, ROCK_SLIDE, EARTHQUAKE, SANDSTORM
	tr_mon 73, RHYPERIOR @ ASSAULT_VEST, MALE
		tr_extra SOLID_ROCK, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves AVALANCHE, ROCK_SLIDE, EARTHQUAKE, MEGAHORN
	tr_mon 72, OMASTAR @ AIR_BALLOON, MALE
		tr_extra WEAK_ARMOR, SPE_UP_SATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves ICE_BEAM, SURF, EARTH_POWER, SHELL_SMASH
	tr_mon 72, KABUTOPS @ FOCUS_SASH, MALE
		tr_extra WEAK_ARMOR, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves STONE_EDGE, WATERFALL, SWORDS_DANCE, LEECH_LIFE
	tr_mon 73, AERODACTYL @ LIFE_ORB, MALE
		tr_extra ROCK_HEAD, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves ROCK_SLIDE, EARTHQUAKE, BRAVE_BIRD, CRUNCH
	tr_mon 75, GOLEM @ LEFTOVERS, MALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves CURSE, SUCKER_PUNCH, STONE_EDGE, EARTHQUAKE
	end_trainer


SECTION "MistyGroup", ROMX
MistyGroup:

	def_trainer_class MISTY
	def_trainer 1, "Misty"		; 2nd Badge
	tr_mon 18, STARYU, FEMALE
		tr_extra NATURAL_CURE
		tr_moves TACKLE, DEFENSE_CURL, RECOVER, WATER_PULSE
	tr_mon 21, STARMIE, FEMALE
		tr_extra NATURAL_CURE
		tr_moves RAPID_SPIN, SWIFT, RECOVER, SCALD
	end_trainer

	def_trainer 2, "Misty"		; Post-Game
	tr_mon 73, GOLDUCK @ DAMP_ROCK, FEMALE
		tr_extra SWIFT_SWIM, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves PSYCHIC_M, SCALD, ICE_BEAM, RAIN_DANCE
	tr_mon 72, QUAGSIRE @ LEFTOVERS, FEMALE
		tr_extra UNAWARE, DEF_UP_SPE_DOWN
		tr_evs 252 HP, 4 SAt, 252 Def
		tr_moves EARTHQUAKE, SCALD, RECOVER, ICE_BEAM
	tr_mon 72, KINGLER @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 SDf, 252 Spe
		tr_moves AGILITY, CRABHAMMER, X_SCISSOR, ROCK_SLIDE
	tr_mon 73, LANTURN @ ASSAULT_VEST, FEMALE
		tr_extra VOLT_ABSORB, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves SURF, THUNDERBOLT, ICE_BEAM, VOLT_SWITCH
	tr_mon 74, OCTILLERY @ CHOICE_SPECS, FEMALE
		tr_extra SNIPER, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves FIRE_BLAST, ICE_BEAM, HYDRO_PUMP, POWER_WHIP
	tr_mon 75, STARMIE @ EXPERT_BELT
		tr_extra SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves ICE_BEAM, PSYCHIC_M, THUNDERBOLT, SURF
	end_trainer


SECTION "LtSurgeGroup", ROMX
LtSurgeGroup:

	def_trainer_class LT_SURGE
	def_trainer 1, "Lt.Surge"		; 3rd Badge
	tr_mon 25, VOLTORB, MALE
		tr_extra STATIC
		tr_moves SCREECH, DOUBLE_TEAM, WILD_CHARGE, EXPLOSION
	tr_mon 26, MAGNEMITE, MALE
		tr_extra LEVITATE
		tr_moves DOUBLE_TEAM, FLASH_CANNON, WILD_CHARGE, ZAP_CANNON
	tr_mon 28, RAICHU, MALE
		tr_extra STATIC
		tr_moves IRON_TAIL, DOUBLE_EDGE, WILD_CHARGE, DOUBLE_TEAM

	def_trainer 2, "Lt.Surge"		; Post-Game
	tr_mon 74, ELECTIVIRE @ AIR_BALLOON, MALE
		tr_extra VITAL_SPIRIT, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves CLOSE_COMBAT, ICE_PUNCH, FIRE_PUNCH, WILD_CHARGE
	tr_mon 72, ELECTRODE @ LIGHT_CLAY
		tr_extra AFTERMATH, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves REFLECT, LIGHT_SCREEN, WILD_CHARGE, EXPLOSION
	tr_mon 73, JOLTEON @ FLAME_ORB, MALE
		tr_extra QUICK_FEET, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HP_ICE, SHADOW_BALL, VOLT_SWITCH, THUNDERBOLT
	tr_mon 72, MAGNEZONE @ LEFTOVERS
if DEF(FAITHFUL)
		tr_extra STURDY, SATK_UP_ATK_DOWN
else
		tr_extra LEVITATE, SATK_UP_ATK_DOWN
endc
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves THUNDERBOLT, FLASH_CANNON, HP_FIRE, VOLT_SWITCH
	tr_mon 73, LANTURN @ ASSAULT_VEST, MALE
		tr_extra WATER_ABSORB, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves SCALD, ICE_BEAM, HP_GRASS, VOLT_SWITCH
	tr_mon 75, RAICHU @ FOCUS_SASH, MALE
		tr_extra LIGHTNING_ROD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HP_ICE, NASTY_PLOT, THUNDERBOLT, FOCUS_BLAST
	end_trainer


SECTION "ErikaGroup", ROMX
ErikaGroup:

	def_trainer_class ERIKA
	def_trainer 1, "Erika"		; 4th Badge
	tr_mon 29, TANGELA, FEMALE
		tr_extra CHLOROPHYLL
		tr_moves ANCIENTPOWER, HEALINGLIGHT, GIGA_DRAIN, SLEEP_POWDER
	tr_mon 30, WEEPINBELL, FEMALE
		tr_extra CHLOROPHYLL
		tr_moves SUNNY_DAY, HEALINGLIGHT, MOONBLAST, SOLAR_BEAM
	tr_mon 32, VILEPLUME, FEMALE
		tr_extra CHLOROPHYLL
		tr_moves SUNNY_DAY, HEALINGLIGHT, SLUDGE_BOMB, SOLAR_BEAM
	end_trainer

	def_trainer 2, "Erika"		; Post-Game
	tr_mon 72, SUNFLORA @ HEAT_ROCK, FEMALE
		tr_extra CHLOROPHYLL, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
if DEF(FAITHFUL)
		tr_moves SUNNY_DAY, SOLAR_BEAM, SLUDGE_BOMB, EARTH_POWER
else
		tr_moves SUNNY_DAY, SOLAR_BEAM, FLAMETHROWER, EARTH_POWER
endc
	tr_mon 73, TANGROWTH @ LEFTOVERS, FEMALE
		tr_extra CHLOROPHYLL, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves EARTHQUAKE, SWORDS_DANCE, POWER_WHIP, ROCK_SLIDE
	tr_mon 73, VICTREEBEL @ LIFE_ORB, FEMALE
		tr_extra CHLOROPHYLL, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, SUCKER_PUNCH, POISON_JAB, POWER_WHIP
	tr_mon 74, LEAFEON @ CHOICE_BAND, FEMALE
		tr_extra CHLOROPHYLL, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves IRON_TAIL, SEED_BOMB, DOUBLE_EDGE, KNOCK_OFF
	tr_mon 74, VILEPLUME @ ASSAULT_VEST, FEMALE
		tr_extra CHLOROPHYLL, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves GIGA_DRAIN, EARTH_POWER, SLUDGE_BOMB, HP_FIRE
if DEF(FAITHFUL)
	tr_mon 75, BELLOSSOM @ MIRACLE_SEED, FEMALE
		tr_extra CHLOROPHYLL, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves GIGA_DRAIN, HP_FIRE, MOONBLAST, SLEEP_POWDER
else
	tr_mon 75, BELLOSSOM @ FAIRYFEATHER, FEMALE
		tr_extra OWN_TEMPO, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves PETAL_DANCE, HP_FIRE, MOONBLAST, SLEEP_POWDER
endc
	end_trainer


SECTION "KogaGroup", ROMX
KogaGroup:

	def_trainer_class KOGA
	def_trainer 1, "Koga"		; 5th Badge
	tr_mon 39, CROBAT, FEMALE
		tr_extra INNER_FOCUS
		tr_moves SCREECH, TOXIC, CONFUSE_RAY, AERIAL_ACE
	tr_mon 41, WEEZING, MALE
		tr_extra LEVITATE
		tr_moves SLUDGE_BOMB, THUNDER, FIRE_BLAST, EXPLOSION
	tr_mon 41, MUK, MALE
		tr_extra STENCH
		tr_moves MINIMIZE, FIRE_PUNCH, GUNK_SHOT, TOXIC
	tr_mon 43, VENOMOTH, MALE
		tr_extra TINTED_LENS
		tr_moves SLUDGE_BOMB, DOUBLE_TEAM, BUG_BUZZ, PSYCHIC_M
	end_trainer

	def_trainer 2, "Koga"		; Post-Game
	tr_mon 73, CROBAT @ CHOICE_BAND, FEMALE
		tr_extra INNER_FOCUS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves U_TURN, POISON_JAB, BRAVE_BIRD, CRUNCH
	tr_mon 72, ARIADOS @ FOCUS_SASH, FEMALE
		tr_extra SWARM, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves TOXIC_SPIKES, POISON_JAB, SUCKER_PUNCH, LEECH_LIFE
	tr_mon 72, QWILFISH @ LEFTOVERS, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves AQUA_TAIL, POISON_JAB, SPIKES, EXPLOSION
	tr_mon 74, NIDOQUEEN @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves EARTH_POWER, HEALINGLIGHT, SLUDGE_BOMB, ICE_BEAM
	tr_mon 73, WEEZING @ ASSAULT_VEST, FEMALE
		tr_extra LEVITATE
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves SLUDGE_BOMB, FIRE_BLAST, THUNDERBOLT, EXPLOSION
	tr_mon 75, VENOMOTH @ BRIGHTPOWDER, FEMALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SLUDGE_BOMB, DOUBLE_TEAM, SLEEP_POWDER, BUG_BUZZ
	end_trainer


SECTION "SabrinaGroup", ROMX
SabrinaGroup:

	def_trainer_class SABRINA
	def_trainer 1, "Sabrina"		; 6th Badge
	tr_mon 42, MR__MIME, FEMALE
		tr_extra FILTER
		tr_moves BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	tr_mon 43, SLOWBRO, FEMALE
		tr_extra OWN_TEMPO
		tr_moves FIRE_BLAST, ICE_BEAM, HYDRO_PUMP, PSYCHIC_M
	tr_mon 43, HYPNO, FEMALE
		tr_extra INSOMNIA
		tr_moves HYPNOSIS, FOCUS_BLAST, NASTY_PLOT, PSYCHIC_M
	tr_mon 45, ALAKAZAM @ SITRUS_BERRY, FEMALE
		tr_extra MAGIC_GUARD
		tr_moves RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	end_trainer

	def_trainer 2, "Sabrina"		; Post-Game
	tr_mon 74, ESPEON @ LIGHT_CLAY, FEMALE
		tr_extra MAGIC_BOUNCE, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves PSYCHIC_M, BATON_PASS, REFLECT, LIGHT_SCREEN
	tr_mon 73, MR__MIME @ FOCUS_SASH, FEMALE
		tr_extra SOUNDPROOF, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves PSYCHIC_M, DAZZLINGLEAM, NASTY_PLOT, FOCUS_BLAST
	tr_mon 73, FARIGIRAF @ ASSAULT_VEST, FEMALE
		tr_extra ARMOR_TAIL, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves DAZZLINGLEAM, DARK_PULSE, HYPER_VOICE, PSYCHIC_M
	tr_mon 72, HYPNO @ LEFTOVERS, FEMALE
		tr_extra INSOMNIA, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves NASTY_PLOT, PSYCHIC_M, HYPNOSIS, FOCUS_BLAST
	tr_mon 74, SLOWKING @ CHOICE_SPECS, FEMALE
		tr_extra REGENERATOR, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves FIRE_BLAST, ICE_BEAM, HYDRO_PUMP, PSYCHIC_M
	tr_mon 75, ALAKAZAM @ LIFE_ORB, FEMALE
		tr_extra MAGIC_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves RECOVER, SHADOW_BALL, PSYCHIC_M, FOCUS_BLAST
	end_trainer


SECTION "BlaineGroup", ROMX
BlaineGroup:

	def_trainer_class BLAINE
	def_trainer 1, "Blaine"
	tr_mon 47, MAGMAR @ EVIOLITE, MALE
		tr_moves SUNNY_DAY, PSYCHIC_M, FLAMETHROWER, FOCUS_BLAST
	tr_mon 48, RAPIDASH @ SITRUS_BERRY, MALE
		tr_moves EXTREMESPEED, FIRE_SPIN, PLAY_ROUGH, FIRE_BLAST
	tr_mon 49, NINETALES @ HEAT_ROCK, MALE
		tr_extra DROUGHT
		tr_moves FIRE_BLAST, WILL_O_WISP, SOLAR_BEAM, HEX
	tr_mon 50, ARCANINE, MALE
		tr_extra INTIMIDATE
		tr_moves CRUNCH, FLAME_CHARGE, FLARE_BLITZ, TAKE_DOWN
	end_trainer


	def_trainer 2, "Blaine"
	tr_mon 71, MAGCARGO @ FOCUS_SASH, MALE
		tr_extra WEAK_ARMOR, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Speed
		tr_moves FIRE_BLAST, SHELL_SMASH, EARTH_POWER, ANCIENTPOWER
	tr_mon 72, MAGMORTAR @ ASSAULT_VEST, MALE
		tr_extra FLAME_BODY, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves PSYCHIC_M, FOCUS_BLAST, FIRE_BLAST, THUNDERBOLT
	tr_mon 73, ARCANINE @ EXPERT_BELT, MALE
		tr_extra INTIMIDATE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, WILD_CHARGE, CLOSE_COMBAT, EXTREMESPEED
if DEF(FAITHFUL)
	tr_mon 74, NINETALES @ HEAT_ROCK, MALE
		tr_extra DROUGHT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves FIRE_BLAST, HEX, SOLAR_BEAM, WILL_O_WISP
else
	tr_mon 74, FLAREON @ HEAT_ROCK, MALE
		tr_extra DROUGHT, ATK_UP_SPE_DOWN
		tr_evs 252 HP, 4 SAt, 252 Atk
		tr_moves SOLAR_BEAM, FLARE_BLITZ, DOUBLE_EDGE, ZAP_CANNON
endc
	tr_mon 72, TYPHLOSION @ CHOICE_SPECS, MALE
		tr_extra FLASH_FIRE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FIRE_BLAST, EARTH_POWER, FOCUS_BLAST, HP_ICE
	tr_mon 75, RAPIDASH @ LIFE_ORB, MALE
		tr_extra SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves PLAY_ROUGH, SWORDS_DANCE, FLARE_BLITZ, WILD_CHARGE
	end_trainer


SECTION "BlueGroup", ROMX
BlueGroup:

	def_trainer_class BLUE
; After Rival becomes new Gym Leader (sans Starter)
	def_trainer 1, "<RIVAL>"
	tr_mon 70, PIDGEOT
	tr_mon 70, MACHAMP
	tr_mon 71, GYARADOS
	tr_mon 71, ARCANINE
	tr_mon 72, EXEGGUTOR
	tr_mon 73, TYRANITAR
	end_trainer


SECTION "NintenGroup", ROMX
NintenGroup:

	def_trainer_class NINTEN
	def_trainer 1, "Ninten"
	tr_mon 5, CHARMANDER
	end_trainer


SECTION "LeafGroup", ROMX
LeafGroup:

	def_trainer_class LEAF
	def_trainer 1, "Leaf"
	tr_mon 5, BULBASAUR
	end_trainer


SECTION "Rival0Group", ROMX
Rival0Group:

	def_trainer_class RIVAL0

; Oak Lab
	def_trainer RIVAL0_1, "<RIVAL>"
	tr_mon 5, PIKACHU
	end_trainer

	def_trainer RIVAL0_2, "<RIVAL>"
	tr_mon 5, EEVEE
	end_trainer

; Route 22 (First)
	def_trainer RIVAL0_3, "<RIVAL>"
	tr_mon 8, PIDGEY
	tr_mon 9, PIKACHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL0_4, "<RIVAL>"
	tr_mon 8, SPEAROW
	tr_mon 9, EEVEE @ ORAN_BERRY
	end_trainer

; Cerulean City
	def_trainer RIVAL0_5, "<RIVAL>"
	tr_mon 15, RATTATA
	tr_mon 16, ABRA
	tr_mon 16, PIDGEOTTO
	tr_mon 18, PIKACHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL0_6, "<RIVAL>"
	tr_mon 15, RATTATA
	tr_mon 16, SANDSHREW
	tr_mon 16, SPEAROW
	tr_mon 18, EEVEE @ ORAN_BERRY
	end_trainer


SECTION "Rival1Group", ROMX
Rival1Group:

	def_trainer_class RIVAL1

; SS ANNE
	def_trainer RIVAL1_1, "<RIVAL>"
	tr_mon 20, RATICATE
	tr_mon 21, KADABRA
	tr_mon 22, PIDGEOTTO
	tr_mon 23, PIKACHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL1_2, "<RIVAL>"
	tr_mon 20, RATICATE
	tr_mon 21, SANDSHREW
	tr_mon 22, FEAROW
	tr_mon 23, EEVEE @ ORAN_BERRY
	end_trainer

; Lavender Tower
	def_trainer RIVAL1_3, "<RIVAL>"
	tr_mon 28, PIDGEOTTO
	tr_mon 26, EXEGGCUTE
	tr_mon 28, GROWLITHE
	tr_mon 30, KADABRA
	tr_mon 32, RAICHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL1_4, "<RIVAL>"
	tr_mon 28, FEAROW
	tr_mon 26, SHELLDER
	tr_mon 28, GROWLITHE
	tr_mon 30, KADABRA
	tr_mon 32, JOLTEON @ ORAN_BERRY
	end_trainer

; Silph Co (7F)
	def_trainer RIVAL1_5, "<RIVAL>"
	tr_mon 43, PIDGEOT
	tr_mon 44, GYARADOS
	tr_mon 44, ARCANINE
	tr_mon 45, ALAKAZAM
	tr_mon 46, RAICHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL1_6, "<RIVAL>"
	tr_mon 43, SANDSLASH
	tr_mon 44, CLOYSTER
	tr_mon 44, ARCANINE
	tr_mon 45, ALAKAZAM
	tr_mon 46, JOLTEON @ ORAN_BERRY
	end_trainer

; Route 22 (Second)
	def_trainer RIVAL1_7, "<RIVAL>"
	tr_mon 54, PIDGEOT
	tr_mon 52, EXEGGUTOR
	tr_mon 53, GYARADOS
	tr_mon 55, ARCANINE
	tr_mon 55, ALAKAZAM
	tr_mon 56, RAICHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL1_8, "<RIVAL>"
	tr_mon 54, SANDSLASH
	tr_mon 52, EXEGGUTOR
	tr_mon 53, CLOYSTER
	tr_mon 55, ARCANINE
	tr_mon 55, ALAKAZAM
	tr_mon 56, JOLTEON @ ORAN_BERRY
	end_trainer


SECTION "Rival2Group", ROMX
Rival2Group:

	def_trainer_class RIVAL2

; Champion
	def_trainer RIVAL2_1, "<RIVAL>"
	tr_mon 62, PIDGEOT
	tr_mon 62, RHYDON
	tr_mon 63, GYARADOS
	tr_mon 63, ARCANINE
	tr_mon 64, ALAKAZAM
	tr_mon 65, RAICHU @ ORAN_BERRY
	end_trainer

	def_trainer RIVAL2_2, "<RIVAL>"
	tr_mon 62, SANDSLASH
	tr_mon 62, EXEGGUTOR
	tr_mon 63, CLOYSTER
	tr_mon 63, ARCANINE
	tr_mon 64, ALAKAZAM
	tr_mon 65, JOLTEON @ ORAN_BERRY
	end_trainer


SECTION "Lyra1Group", ROMX
Lyra1Group:

	def_trainer_class LYRA1
; Route 2
	def_trainer LYRA1_1, "<RIVAL>"
	tr_mon 8, RATTATA
	tr_mon 9, CLEFAIRY @ ORAN_BERRY
	end_trainer

; Route 25 (Cerulean Cape)
	def_trainer LYRA1_2, "<RIVAL>"
	tr_mon 15, RATTATA
	tr_mon 16, MEOWTH
	tr_mon 16, BELLSPROUT
	tr_mon 18, CLEFAIRY @ ORAN_BERRY
	end_trainer

; Vermilion City
	def_trainer LYRA1_3, "<RIVAL>"
	tr_mon 20, MEOWTH
	tr_mon 20, VULPIX
	tr_mon 21, BELLSPROUT
	tr_mon 23, CLEFAIRY @ ORAN_BERRY
	end_trainer

; Lavender Town
	def_trainer LYRA1_4, "<RIVAL>"
	tr_mon 23, GASTLY
	tr_mon 26, VULPIX
	tr_mon 26, WEEPINBELL
	tr_mon 28, PERSIAN
	tr_mon 32, CLEFABLE @ ORAN_BERRY
	end_trainer

; Fuchsia City
	def_trainer LYRA1_5, "<RIVAL>"
	tr_mon 34, HAUNTER
	tr_mon 35, NINETALES
	tr_mon 35, KANGASKHAN
	tr_mon 37, VICTREEBEL
	tr_mon 39, CLEFABLE @ ORAN_BERRY
	end_trainer

; Route 23
	def_trainer LYRA1_6, "<RIVAL>"
	tr_mon 53, NINETALES
	tr_mon 53, GENGAR
	tr_mon 54, KANGASKHAN
	tr_mon 55, LAPRAS
	tr_mon 56, VICTREEBEL
	tr_mon 57, CLEFABLE @ ORAN_BERRY
	end_trainer


SECTION "Lyra2Group", ROMX
Lyra2Group:

	def_trainer_class LYRA2

; Cerulean Cave
	def_trainer 1, "<RIVAL>"
	tr_mon 66, NINETALES
	tr_mon 68, GENGAR
	tr_mon 68, KANGASKHAN
	tr_mon 69, LAPRAS
	tr_mon 69, VICTREEBEL
	tr_mon 70, CLEFABLE @ ORAN_BERRY
	end_trainer


SECTION "YoungsterGroup", ROMX
YoungsterGroup:

	def_trainer_class YOUNGSTER

; Route 1 (LGPE)
	def_trainer RONNY, "Ronny"
	tr_mon 5, RATTATA, MALE
	end_trainer

; Route 3 (FRLG)
	def_trainer BEN, "Ben"
	tr_mon 11, RATTATA, MALE
	tr_mon 11, EKANS, MALE
	end_trainer

	def_trainer CALVIN, "Calvin"
	tr_mon 14, SPEAROW, MALE
	end_trainer

; Mt. Moon (FRLG)
	def_trainer JOSH, "Josh"
	tr_mon 10, RATTATA, MALE
	tr_mon 10, SANDSHREW, MALE		; LGPE change; increased level
	tr_mon 10, ZUBAT, MALE
	end_trainer

; Route 24 (RBY)
	def_trainer TIMMY, "Timmy"
	tr_mon 14, RATTATA, MALE
	tr_mon 14, EKANS, MALE
	tr_mon 14, ZUBAT, MALE
	end_trainer

; Route 25 (FRLG)
	def_trainer JOEY, "Joey"
	tr_mon 15, RATTATA, MALE
	tr_mon 15, SPEAROW, MALE
	end_trainer

	def_trainer DAN, "Dan"
	tr_mon 17, SLOWPOKE, MALE
	end_trainer

; SS Anne 1F (LGPE)
	def_trainer TYLER, "Tyler"
	tr_mon 21, MANKEY, MALE			; FRLG change; increased level
	end_trainer

; Route 11 (FRLG)
	def_trainer EDDIE, "Eddie"
	tr_mon 21, EKANS, MALE
	end_trainer

	def_trainer DILLON, "Dillon"
	tr_mon 19, SANDSHREW, MALE
	tr_mon 19, ZUBAT, MALE
	end_trainer

	def_trainer DAVE, "Dave"
	tr_mon 18, NIDORAN_M, MALE
	tr_mon 19, NIDORINO, MALE
	end_trainer

	def_trainer OWEN, "Owen"		; Gen 2 trainer (Yasu is now the sailor from LGPE)
	tr_mon 20, GROWLITHE, MALE
	end_trainer

; Route 9 (Yellow)
	def_trainer AJ, "A.J."			; Anime-reference; Replaces Camper Drew
	tr_mon 24, SANDSHREW, MALE
	end_trainer

; Unused Phone Trainer
	def_trainer JOEY1, "Joey"
	tr_mon 5, RATTATA, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
	end_trainer

	def_trainer JOEY2, "Joey"
	tr_mon 15, RATTATA @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 48 Atk, 48 Spe
	end_trainer

	def_trainer JOEY3, "Joey"
	tr_mon 25, RATICATE @ ORAN_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 80 Atk, 80 Spe
		tr_moves LEER, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	end_trainer

	def_trainer JOEY4, "Joey"
	tr_mon 30, RATICATE @ SITRUS_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 112 Atk, 112 Spe
		tr_moves LEER, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_trainer

	def_trainer JOEY5, "Joey"
	tr_mon 40, RATICATE @ SITRUS_BERRY, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_dvs 15 All
		tr_evs 160 Atk, 160 Spe
		tr_moves HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_trainer


SECTION "BugCatcherGroup", ROMX
BugCatcherGroup:

	def_trainer_class BUG_CATCHER

; Viridian Forest (LGPE; w/ FRLG lineups)
	def_trainer RICK, "Rick"
	tr_mon 6, CATERPIE, MALE
	end_trainer

	def_trainer DOUG, "Doug"
	tr_mon 6, WEEDLE, MALE
	tr_mon 7, KAKUNA, MALE
	tr_mon 6, WEEDLE, MALE
	end_trainer

	def_trainer BRIAN, "Brian"
	tr_mon 6, WEEDLE, MALE
	end_trainer

	def_trainer ANTHONY, "Anthony"
	tr_mon 7, CATERPIE, MALE		; Changed lineup
	tr_mon 8, METAPOD, MALE
	end_trainer

	def_trainer SAMMY, "Sammy"
	tr_mon 10, BEEDRILL, MALE
	end_trainer

; Route 3 (FRLG)
	def_trainer COLTON, "Colton"
	tr_mon 10, CATERPIE, MALE
	tr_mon 10, WEEDLE, MALE
	tr_mon 10, CATERPIE, MALE
	end_trainer

	def_trainer GREG, "Greg"
	tr_mon 9, WEEDLE, MALE
	tr_mon 9, KAKUNA, MALE
	tr_mon 9, CATERPIE, MALE
	tr_mon 9, METAPOD, MALE
	end_trainer

	def_trainer JAMES, "James"
	tr_mon 11, CATERPIE, MALE
	tr_mon 11, METAPOD, MALE
	end_trainer

; Mt. Moon (LGPE/Custom)
	def_trainer KENT, "Kent"
	tr_mon 12, BUTTERFREE, MALE
	end_trainer

	def_trainer ROBBY, "Robby"
	tr_mon 14, PARAS, MALE
	end_trainer

; Route 24 (LGPE; Increased level)
	def_trainer CALE, "Cale"
	tr_mon 15, VENONAT, MALE
	end_trainer

; Route 6 (FRLG; Modified Lineups)
	def_trainer KEIGO, "Keigo"
	tr_mon 20, BEEDRILL, MALE		; Changed lineup
	end_trainer

	def_trainer ELIJAH, "Elijah"
	tr_mon 20, BUTTERFREE, MALE
	end_trainer

; Route 9 (FRLG; Modified lineups)
	def_trainer BRENT, "Brent"
	tr_mon 19, BEEDRILL, MALE
	tr_mon 19, BEEDRILL, MALE
	end_trainer

	def_trainer CONNOR, "Connor"
	tr_mon 20, VENONAT, MALE
	tr_mon 20, BUTTERFREE, MALE		; Changed lineup
	end_trainer

; Unused Phone Trainers
	def_trainer WADE1, "Wade"
	tr_mon 2, CATERPIE
	tr_mon 2, CATERPIE
	tr_mon 3, WEEDLE
	tr_mon 2, CATERPIE
	end_trainer

	def_trainer WADE2, "Wade"
	tr_mon 9, METAPOD
	tr_mon 9, METAPOD
	tr_mon 10, KAKUNA
	tr_mon 9, METAPOD
	end_trainer

	def_trainer WADE3, "Wade"
	tr_mon 14, BUTTERFREE
	tr_mon 14, BUTTERFREE
	tr_mon 15, BEEDRILL
	tr_mon 14, BUTTERFREE
	end_trainer

	def_trainer WADE4, "Wade"
	tr_mon 24, BUTTERFREE
		tr_moves CONFUSION, POISONPOWDER, SUPERSONIC, HEALINGLIGHT
	tr_mon 24, BUTTERFREE
		tr_moves CONFUSION, STUN_SPORE, SUPERSONIC, HEALINGLIGHT
	tr_mon 25, BEEDRILL
		tr_moves FURY_STRIKES, FOCUS_ENERGY, PIN_MISSILE, RAGE
	tr_mon 24, BUTTERFREE
		tr_moves CONFUSION, SLEEP_POWDER, SUPERSONIC, HEALINGLIGHT
	end_trainer

	def_trainer WADE5, "Wade"
	tr_mon 30, BUTTERFREE
		tr_moves CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	tr_mon 30, BUTTERFREE
		tr_moves CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	tr_mon 32, BEEDRILL
		tr_moves FURY_STRIKES, PURSUIT, U_TURN, DOUBLE_TEAM
	tr_mon 34, BUTTERFREE
		tr_moves PSYBEAM, SLEEP_POWDER, GUST, HEALINGLIGHT
	end_trainer

	def_trainer ARNIE1, "Arnie"
	tr_mon 16, VENONAT
	end_trainer

	def_trainer ARNIE2, "Arnie"
	tr_mon 20, VENONAT
	end_trainer

	def_trainer ARNIE3, "Arnie"
	tr_mon 28, VENOMOTH
		tr_moves DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	end_trainer

	def_trainer ARNIE4, "Arnie"
	tr_mon 36, VENOMOTH
		tr_moves GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	end_trainer

	def_trainer ARNIE5, "Arnie"
	tr_mon 40, VENOMOTH
		tr_moves GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	end_trainer


SECTION "CamperGroup", ROMX
CamperGroup:

	def_trainer_class CAMPER

; Pewter Gym (FRLG; Modified lineup)
	def_trainer LIAM, "Liam"
	tr_mon 10, GEODUDE			; Changed from Diglett
	tr_mon 11, SANDSHREW
	end_trainer

; Route 24 (FRLG)
	def_trainer ETHAN, "Ethan"
	tr_mon 18, MANKEY
	end_trainer

	def_trainer SHANE, "Shane"
	tr_mon 14, SPEAROW			; Party Member from LGPE
	tr_mon 14, EKANS
	end_trainer

; Route 25 (FRLG)
	def_trainer FLINT, "Flint"
	tr_mon 14, RATTATA
	tr_mon 14, EKANS
	end_trainer

; Route 6 (FRLG + Y)
	def_trainer RICKY, "Ricky"
	tr_mon 20, SQUIRTLE
	end_trainer

	def_trainer JOE, "Joe"		; (Y) Anime-reference, replaced LGPE Jeff.
	tr_mon 18, WEEPINBELL
	end_trainer

; Route 9 (FRLG; Only 1; The other is a Youngster from Yellow)
	def_trainer CAMPER_CHRIS, "Chris"
	tr_mon 21, GROWLITHE
	tr_mon 21, SANDSHREW
	end_trainer

; Route 12 (FRLG)
	def_trainer JUSTIN, "Justin"
	tr_mon 29, NIDORAN_M
	tr_mon 30, NIDORINO			; Level buffed
	end_trainer

; Unused Phone Trainer
	def_trainer TODD1, "Todd"
	tr_mon 14, PSYDUCK
	end_trainer

	def_trainer TODD2, "Todd"
	tr_mon 17, GEODUDE
	tr_mon 17, GEODUDE
	tr_mon 23, PSYDUCK
	end_trainer

	def_trainer TODD3, "Todd"
	tr_mon 23, GEODUDE
	tr_mon 23, GEODUDE
	tr_mon 26, PSYDUCK
	end_trainer

	def_trainer TODD4, "Todd"
	tr_mon 30, GRAVELER
	tr_mon 30, GRAVELER
	tr_mon 30, SLUGMA
	tr_mon 32, PSYDUCK
	end_trainer

	def_trainer TODD5, "Todd"
	tr_mon 34, GRAVELER
		tr_moves MUD_SLAP, BULLDOZE, SANDSTORM, ROCK_SLIDE
	tr_mon 34, GRAVELER
		tr_moves DEFENSE_CURL, ROLLOUT, MAGNITUDE, ROCK_SLIDE
	tr_mon 36, MAGCARGO
		tr_moves ROCK_THROW, DEFENSE_CURL, CALM_MIND, FLAMETHROWER
	tr_mon 34, GOLDUCK
		tr_moves DISABLE, PSYCHIC_M, SURF, CALM_MIND
	end_trainer


SECTION "PicnickerGroup", ROMX
PicnickerGroup:

	def_trainer_class PICNICKER

; Cerulean Gym (FRLG; Modified lineup)
	def_trainer DIANA, "Diana"
	tr_mon 19, GOLDEEN
	end_trainer

; Route 6 (FRLG + Y)
	def_trainer GISELLE, "Giselle"
	tr_mon 20, CUBONE
	end_trainer

	def_trainer NANCY, "Nancy"
	tr_mon 16, PIDGEY
	tr_mon 16, PIKACHU
	end_trainer

; Route 9 (FRLG)
	def_trainer ALICIA, "Alicia"		; Team truncated down and leveled-up from FRLG
	tr_mon 20, ODDISH
	tr_mon 20, BELLSPROUT
	end_trainer

	def_trainer CAITLIN, "Caitlin"
	tr_mon 21, GOLDEEN					; Addition from LGPE Caitlin
	tr_mon 21, MEOWTH
	end_trainer

; Route 10 (FRLG)
	def_trainer HEIDI, "Heidi"
	tr_mon 20, PIKACHU
	tr_mon 20, CLEFAIRY
	end_trainer

; Rock Tunnel (FRLG)
	def_trainer MARTHA, "Martha"
	tr_mon 22, ODDISH, FEMALE
	tr_mon 22, BULBASAUR, MALE
	end_trainer

	def_trainer SOFIA, "Sofia"
	tr_mon 21, JIGGLYPUFF, FEMALE
	tr_mon 21, PIDGEY, FEMALE
	tr_mon 21, MEOWTH, FEMALE
	end_trainer

	def_trainer LEAH, "Leah"
	tr_mon 22, BELLSPROUT, FEMALE
	tr_mon 22, CLEFAIRY, FEMALE
	end_trainer

	def_trainer ARIANA, "Ariana"
	tr_mon 19, PIDGEY, FEMALE
	tr_mon 19, RATTATA, FEMALE
	tr_mon 19, RATTATA, FEMALE
	tr_mon 19, BELLSPROUT, FEMALE
	end_trainer

	def_trainer DANA, "Dana"
	tr_mon 20, MEOWTH, FEMALE
	tr_mon 20, ODDISH, FEMALE
	tr_mon 20, PIDGEY, FEMALE
	end_trainer

; Route 10 - After Rock Tunnel (FRLG + Y)
	def_trainer CAROL, "Carol"
	tr_mon 21, JIGGLYPUFF					; Added from Yellow's HEIDI, replacing Pidgey
	tr_mon 21, PIDGEOTTO
	end_trainer

; Celadon Gym (FRLG/LGPE)
	def_trainer TINA, "Tina"
	tr_mon 24, GLOOM, FEMALE				; LGPE Addition, leveled-down
	tr_mon 24, IVYSAUR, FEMALE
	end_trainer

; Route 13 (FRLG/LGPE)
	def_trainer ALMA, "Alma"
	tr_mon 28, GOLDEEN, FEMALE
	tr_mon 28, POLIWAG, FEMALE
	tr_mon 28, HORSEA, FEMALE
	end_trainer

	def_trainer SUSIE, "Susie"				; Team is an amalgamation of FRLG/LGPE
	tr_mon 24, PIDGEY, FEMALE
	tr_mon 24, MEOWTH, FEMALE
	tr_mon 24, RATTATA, FEMALE
	tr_mon 24, PIKACHU, FEMALE
	tr_mon 24, JIGGLYPUFF, FEMALE
	end_trainer

	def_trainer VALERIE, "Valerie"
	tr_mon 30, POLIWAG, FEMALE
	tr_mon 30, POLIWAG, FEMALE
	end_trainer

	def_trainer GWEN, "Gwen"				; Team is an amalgamation of FRLG/LGPE
	tr_mon 26, MEOWTH, FEMALE
	tr_mon 26, PSYDUCK, FEMALE
	tr_mon 26, RATICATE, FEMALE
	end_trainer

; Route 15 (FRLG/LGPE)
	def_trainer BECKY, "Becky"
	tr_mon 33, RAICHU, FEMALE
	end_trainer

	def_trainer CELIA, "Celia"
	tr_mon 33, CLEFAIRY, FEMALE
	end_trainer

	def_trainer KINDRA, "Kindra"
	tr_mon 28, ODDISH, FEMALE
	tr_mon 28, ODDISH, FEMALE
	tr_mon 28, GLOOM, FEMALE
	end_trainer

	def_trainer YAZMIN, "Yazmin"
	tr_mon 32, GOLDEEN, FEMALE				; LGPE party member, devolved
	tr_mon 32, TANGELA, FEMALE
	end_trainer

; Route 20 (FRLG/LGPE)
	def_trainer IRENE, "Irene"
	tr_mon 30, TENTACOOL, FEMALE
	tr_mon 30, HORSEA, FEMALE
	tr_mon 30, SEEL, FEMALE
	end_trainer

	def_trainer MISSY, "Missy"
	tr_mon 31, GOLDEEN, FEMALE
	tr_mon 31, SEAKING, FEMALE
	end_trainer

; Unused Phone Trainers
	def_trainer LIZ1, "Liz"
	tr_mon 10, NIDORAN_F
	end_trainer

	def_trainer LIZ2, "Liz"
	tr_mon 15, WEEPINBELL
	tr_mon 15, NIDORINA
	end_trainer

	def_trainer LIZ3, "Liz"
	tr_mon 19, WEEPINBELL
	tr_mon 19, NIDORINO
	tr_mon 21, NIDOQUEEN
	end_trainer

	def_trainer LIZ4, "Liz"
	tr_mon 24, WEEPINBELL
	tr_mon 26, NIDORINO
	tr_mon 26, NIDOQUEEN
	end_trainer

	def_trainer LIZ5, "Liz"
	tr_mon 30, WEEPINBELL
		tr_moves SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	tr_mon 32, NIDOKING
		tr_moves EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	tr_mon 32, NIDOQUEEN
		tr_moves EARTHQUAKE, DOUBLE_KICK, LEER, BODY_SLAM
	end_trainer

	def_trainer GINA1, "Gina"
	tr_mon 9, SUNKERN
	tr_mon 9, HOPPIP
	tr_mon 12, BULBASAUR
	end_trainer

	def_trainer GINA2, "Gina"
	tr_mon 14, SUNKERN
	tr_mon 14, HOPPIP
	tr_mon 17, IVYSAUR
	end_trainer

	def_trainer GINA3, "Gina"
	tr_mon 26, SUNFLORA
	tr_mon 27, SKIPLOOM
	tr_mon 29, IVYSAUR
	end_trainer

	def_trainer GINA4, "Gina"
	tr_mon 30, SUNFLORA
	tr_mon 31, JUMPLUFF
	tr_mon 32, IVYSAUR
	end_trainer

	def_trainer GINA5, "Gina"
	tr_mon 33, SUNFLORA
		tr_moves LEECH_SEED, GIGA_DRAIN, SUNNY_DAY, EARTH_POWER
	tr_mon 34, JUMPLUFF
		tr_moves ACROBATICS, SLEEP_POWDER, STUN_SPORE, MEGA_DRAIN
	tr_mon 38, VENUSAUR
		tr_moves SOLAR_BEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	end_trainer

	def_trainer ERIN1, "Erin"
	tr_mon 18, PONYTA
	tr_mon 16, ODDISH
	end_trainer

	def_trainer ERIN2, "Erin"
	tr_mon 32, PONYTA
	tr_mon 32, GLOOM
	end_trainer

	def_trainer ERIN3, "Erin"
	tr_mon 36, RAPIDASH
		tr_moves DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	tr_mon 34, RAICHU
		tr_moves SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	tr_mon 36, VILEPLUME
		tr_moves SLEEP_POWDER, ACID, HEALINGLIGHT, PETAL_DANCE
	end_trainer

	def_trainer TIFFANY1, "Tiffany"
	tr_mon 31, CLEFAIRY
		tr_moves ENCORE, SING, TRI_ATTACK, MINIMIZE
	end_trainer

	def_trainer TIFFANY2, "Tiffany"
	tr_mon 40, CLEFAIRY
		tr_moves REFLECT, TRI_ATTACK, MINIMIZE, METRONOME
	end_trainer

	def_trainer TIFFANY3, "Tiffany"
	tr_mon 44, CLEFABLE
		tr_moves METRONOME, ENCORE, HEALINGLIGHT, MINIMIZE
	end_trainer

	def_trainer TIFFANY4, "Tiffany"
	tr_mon 49, CLEFABLE
		tr_moves HEALINGLIGHT, TRI_ATTACK, MINIMIZE, METRONOME
	end_trainer


SECTION "TwinsGroup", ROMX
TwinsGroup:

	def_trainer_class TWINS

; Route 8 (FRLG)
	def_trainer ELIANDANNE1, "Eli & Anne"
	tr_mon 22, CLEFAIRY
	tr_mon 22, JIGGLYPUFF
	end_trainer

	def_trainer ELIANDANNE2, "Eli & Anne"
	tr_mon 22, CLEFAIRY
	tr_mon 22, JIGGLYPUFF
	end_trainer

; Route 14 (FRLG)
	def_trainer KIRIANDJAN1, "Kiri & Jan"
	tr_mon 29, CHARMANDER
	tr_mon 29, SQUIRTLE
	end_trainer

	def_trainer KIRIANDJAN2, "Day & Dani"
	tr_mon 29, CHARMANDER
	tr_mon 29, SQUIRTLE
	end_trainer


SECTION "FisherGroup", ROMX
FisherGroup:

	def_trainer_class FISHER

; SS Anne (FRLG)
	def_trainer BARNY, "Barney"
	tr_mon 17, TENTACOOL
	tr_mon 17, STARYU
	tr_mon 17, SHELLDER
	end_trainer

	def_trainer DALE, "Dale"
	tr_mon 17, TENTACOOL
	tr_mon 17, GOLDEEN
	tr_mon 17, TENTACOOL
	end_trainer

; Route 12 (FRLG)
	def_trainer NED, "Ned"
	tr_mon 22, GOLDEEN
	tr_mon 22, POLIWAG
	tr_mon 22, GOLDEEN
	end_trainer

	def_trainer CHIP, "Chip"
	tr_mon 24, TENTACOOL
	tr_mon 24, GOLDEEN
	end_trainer

	def_trainer HANK, "Hank"
	tr_mon 27, GOLDEEN
	end_trainer

	def_trainer ELLIOT, "Elliot"
	tr_mon 21, POLIWAG
	tr_mon 21, SHELLDER
	tr_mon 21, GOLDEEN
	tr_mon 21, HORSEA
	end_trainer

	def_trainer ANDREW, "Andrew"
	tr_mon 24, MAGIKARP
	tr_mon 24, GYARADOS				; minor lineup change
	end_trainer

; Route 21 (FRLG + Custom)
	def_trainer WADE, "Wade"
	tr_mon 32, MAGIKARP				; reeduced from 6 magikarp
	tr_mon 32, MAGIKARP
	tr_mon 32, GYARADOS
	end_trainer

	def_trainer RONALD, "Ronald"
	tr_mon 31, GOLDEEN				; lineup slightly reduced
	tr_mon 31, SEAKING
	tr_mon 31, SEAKING
	end_trainer

	def_trainer CLAUDE, "Claude"
	tr_mon 32, SHELLDER				; lineup slightly reduced
	tr_mon 32, CLOYSTER
	end_trainer

	def_trainer NOLAN, "Nolan"
	tr_mon 33, GOLDEEN
	tr_mon 33, SEAKING
	end_trainer

; Unused Phone Trainers
	def_trainer RALPH1, "Ralph"
	tr_mon 11, GOLDEEN
	end_trainer

	def_trainer RALPH2, "Ralph"
	tr_mon 17, GOLDEEN
	end_trainer

	def_trainer RALPH3, "Ralph"
	tr_mon 17, QWILFISH
	tr_mon 19, GOLDEEN
	end_trainer

	def_trainer RALPH4, "Ralph"
	tr_mon 30, QWILFISH
	tr_mon 32, SEAKING
	end_trainer

	def_trainer RALPH5, "Ralph"
	tr_mon 36, QWILFISH
		tr_moves TOXIC, MINIMIZE, SURF, PIN_MISSILE
	tr_mon 36, LANTURN
		tr_moves REVERSAL, WATERFALL, THUNDERBOLT, CONFUSE_RAY
	tr_mon 39, SEAKING
		tr_moves WATERFALL, AGILITY, FURY_STRIKES, POISON_JAB
	end_trainer

	def_trainer TULLY1, "Tully"
	tr_mon 30, QWILFISH
	end_trainer

	def_trainer TULLY2, "Tully"
	tr_mon 35, GOLDEEN
	tr_mon 35, QWILFISH
	end_trainer

	def_trainer TULLY3, "Tully"
	tr_mon 40, POLIWHIRL
	tr_mon 40, SEAKING
	tr_mon 40, QWILFISH
	end_trainer

	def_trainer TULLY4, "Tully"
	tr_mon 43, POLIWRATH
		tr_moves RAIN_DANCE, HYPNOSIS, WATERFALL, CLOSE_COMBAT
	tr_mon 43, SEAKING
		tr_moves AGILITY, WATERFALL, BODY_SLAM, POISON_JAB
	tr_mon 45, QWILFISH
		tr_moves ROLLOUT, WATERFALL, PIN_MISSILE, TAKE_DOWN
	end_trainer

	def_trainer WILTON1, "Wilton"
	tr_mon 34, GOLDEEN
	tr_mon 36, REMORAID
	tr_mon 36, SEAKING
	end_trainer

	def_trainer WILTON2, "Wilton"
	tr_mon 36, GOLDEEN
	tr_mon 38, REMORAID
	tr_mon 38, SEAKING
	end_trainer

	def_trainer WILTON3, "Wilton"
	tr_mon 38, GOLDEEN
		tr_moves WATERFALL, FURY_STRIKES, POISON_JAB, RAIN_DANCE
	tr_mon 40, SEAKING
		tr_moves WATERFALL, BODY_SLAM, POISON_JAB, AGILITY
	tr_mon 42, OCTILLERY
		tr_moves PSYBEAM, AURORA_BEAM, OCTAZOOKA, HYPER_BEAM
	end_trainer


SECTION "BirdKeeperGroup", ROMX
BirdKeeperGroup:

	def_trainer_class BIRD_KEEPER

; Route 13 (FRLG/LGPE)
	def_trainer BRET, "Bret"					; Name taken from Gen 2 Bird Keeper; Was Sebastian
	tr_mon LEVEL_FROM_BADGES - 1, PIDGEY		; Lv. 29, testing this constant
	tr_mon LEVEL_FROM_BADGES + 1, PIDGEOTTO
	end_trainer

	def_trainer ROB, "Rob"						; Name shortened from Robert
	tr_mon 27, DODUO							; Addition from LGPE Robert
	tr_mon 27, PIDGEY
	tr_mon 27, PIDGEOTTO
	end_trainer

	def_trainer PERRY, "Perry"					; He uses Robert's old FRLG team
	tr_mon 26, PIDGEY
	tr_mon 26, PIDGEOTTO
	tr_mon 26, SPEAROW
	tr_mon 26, FEAROW
	end_trainer

; Route 14 (FRLG)
	def_trainer CARTER, "Carter"
	tr_mon 29, DODUO							; Removed Pidgey
	tr_mon 29, PIDGEOTTO
	end_trainer

	def_trainer MITCH, "Mitch"
	tr_mon 27, PIDGEY
	tr_mon 27, PIDGEOTTO
	tr_mon 27, SPEAROW
	tr_mon 27, FEAROW
	end_trainer

	def_trainer MARLON, "Marlon"
	tr_mon 28, DODUO
	tr_mon 28, SPEAROW
	tr_mon 28, FEAROW
	end_trainer

	def_trainer BECK, "Beck"
	tr_mon 29, PIDGEOTTO
	tr_mon 29, FEAROW
	end_trainer

	def_trainer DON, "Don"						; Name shortened from Donald
	tr_mon 31, DODUO
	tr_mon 31, FARFETCH_D
	end_trainer

	def_trainer BENNY, "Benny"
	tr_mon 29, SPEAROW
	tr_mon 29, FEAROW
	end_trainer

; Route 15 (FRLG)
	def_trainer CHESTER, "Chester"
	tr_mon 28, DODUO
	tr_mon 28, DODUO
	tr_mon 28, DODRIO
	end_trainer

	def_trainer EDWIN, "Edwin"
	tr_mon 28, PIDGEOTTO						; Removed Pidgey
	tr_mon 28, FARFETCH_D
	tr_mon 28, DODUO
	end_trainer

; Route 18 (FRLG/LGPE)
	def_trainer JACOB, "Jacob"
	tr_mon 31, FARFETCH_D
	tr_mon 31, DODRIO
	end_trainer

	def_trainer WILTON, "Wilton"
	tr_mon 31, FEAROW
	tr_mon 31, DODRIO
	end_trainer

	def_trainer RAMIRO, "Ramiro"
	tr_mon 31, PIDGEOTTO
	tr_mon 31, DODRIO
	end_trainer

; Route 20 (Custom; LGPE influenced)
	def_trainer ROGER, "Roger"
	tr_mon 31, FEAROW
	tr_mon 31, DODRIO
	tr_mon 31, PIDGEOTTO
	end_trainer

; Unused Phone Trainers
	def_trainer VANCE1, "Vance"
	tr_mon 36, PIDGEOTTO
	tr_mon 36, PIDGEOTTO
	end_trainer

	def_trainer VANCE2, "Vance"
	tr_mon 40, PIDGEOTTO
	tr_mon 40, PIDGEOTTO
	end_trainer

	def_trainer VANCE3, "Vance"
	tr_mon 45, PIDGEOT
		tr_moves TOXIC, QUICK_ATTACK, ROAR, FLY
	tr_mon 45, PIDGEOT
		tr_moves SWIFT, PROTECT, STEEL_WING, FLY
	end_trainer

	def_trainer JOSE1, "Jose"
	tr_mon 44, FARFETCH_D
	end_trainer

	def_trainer JOSE2, "Jose"
	tr_mon 48, FARFETCH_D
	end_trainer

	def_trainer JOSE3, "Jose"
	tr_mon 55, FARFETCH_D
		tr_moves SWORDS_DANCE, NIGHT_SLASH, PROTECT, BRAVE_BIRD
	end_trainer


SECTION "HikerGroup", ROMX
HikerGroup:

	def_trainer_class HIKER

; Mt. Moon (FRLG)
	def_trainer MARCOS, "Marcos"
	tr_mon 15, GEODUDE					; Level bumped up slightly, removed one Geodude
	tr_mon 15, MACHOP
	end_trainer

; Route 25 (FRLG)
	def_trainer FRANKLIN, "Franklin"
	tr_mon 15, MACHOP
	tr_mon 15, GEODUDE
	end_trainer

	def_trainer WAYNE, "Wayne"
	tr_mon 17, ONIX
	end_trainer

	def_trainer NOB, "Nob"
	tr_mon 14, GEODUDE
	tr_mon 14, GEODUDE
	tr_mon 14, MACHOP
	end_trainer

; Route 9 (FRLG)
	def_trainer JEREMY, "Jeremy"
	tr_mon 20, MACHOP
	tr_mon 20, ONIX
	end_trainer

	def_trainer ALAN, "Alan"
	tr_mon 21, GEODUDE
	tr_mon 21, ONIX
	end_trainer

	def_trainer BRICE, "Brice"			; slightly altered team w/ Onix addition
	tr_mon 20, GEODUDE
	tr_mon 20, MACHOP
	tr_mon 20, ONIX
	end_trainer

; Rock Tunnel (FRLG/LGPE)
	def_trainer ALLEN, "Allen"
	tr_mon 25, GRAVELER					; evolved his Geodude
	end_trainer

	def_trainer ERIC, "Eric"
	tr_mon 23, MACHOP					; levels bumped up
	tr_mon 23, ONIX
	end_trainer

	def_trainer LENNY, "Lenny"
	tr_mon 22, GEODUDE					; levels bumped up
	tr_mon 22, SANDSHREW				; replaced one Geodude with Sandshrew for variance
	tr_mon 22, MACHOP					; removed one Geodude
	end_trainer

	def_trainer OLIVER, "Oliver"
	tr_mon 23, SANDSLASH				; LGPE team
	tr_mon 23, ONIX
	end_trainer

	def_trainer LUCAS, "Lucas"
	tr_mon 23, GEODUDE					; levels bumped up
	tr_mon 23, ONIX						; replaced Graveler
	end_trainer

	def_trainer DUDLEY, "Dudley"
	tr_mon 23, MACHOP					; gave him the LGPE Claus team
	tr_mon 23, RHYHORN
	end_trainer

; Route 10 (FRLG/LGPE)
	def_trainer CLARK, "Clark"
	tr_mon 21, GEODUDE
	tr_mon 21, ONIX
	end_trainer

	def_trainer TRENT, "Trent"
	tr_mon 21, SANDSHREW				; changed for variance
	tr_mon 21, ONIX
	end_trainer

; Unused Phone Trainers
	def_trainer ANTHONY1, "Anthony"
	tr_mon 12, GEODUDE
	tr_mon 12, MACHOP
	end_trainer

	def_trainer ANTHONY2, "Anthony"
	tr_mon 16, GEODUDE
	tr_mon 18, MACHOKE
	end_trainer

	def_trainer ANTHONY3, "Anthony"
	tr_mon 25, GRAVELER
	tr_mon 27, GRAVELER
	tr_mon 29, MACHOKE
	end_trainer

	def_trainer ANTHONY4, "Anthony"
	tr_mon 30, GRAVELER
	tr_mon 30, GRAVELER
	tr_mon 32, MACHOKE
	end_trainer

	def_trainer ANTHONY5, "Anthony"
	tr_mon 34, GRAVELER
		tr_moves MAGNITUDE, MUD_SLAP, SANDSTORM, ROCK_SLIDE
	tr_mon 36, GOLEM
		tr_moves BULLDOZE, EXPLOSION, DEFENSE_CURL, ROLLOUT
	tr_mon 34, MACHAMP
		tr_moves KARATE_CHOP, BULLET_PUNCH, HEADBUTT, DIG
	end_trainer

	def_trainer PARRY1, "Parry"
	tr_mon 30, ONIX
	end_trainer

	def_trainer PARRY2, "Parry"
	tr_mon 36, ONIX
	tr_mon 35, PILOSWINE
	end_trainer

	def_trainer PARRY3, "Parry"
	tr_mon 36, PILOSWINE
		tr_moves EARTHQUAKE, AVALANCHE, REST, TAKE_DOWN
	tr_mon 36, DUGTRIO
		tr_moves MAGNITUDE, DIG, MUD_SLAP, SLASH
	tr_mon 39, STEELIX
		tr_moves DIG, IRON_TAIL, SANDSTORM, HEADBUTT
	end_trainer


SECTION "GruntMGroup", ROMX
GruntMGroup:

	def_trainer_class GRUNTM

; Mt. Moon (FRLG)
	def_trainer 1, "Grunt"
	tr_mon 11, SANDSHREW
	tr_mon 11, DROWZEE			; LGPE addition, replacing Rattata
	tr_mon 11, ZUBAT
	end_trainer

	def_trainer 2, "Grunt"
	tr_mon 12, ZUBAT
	tr_mon 12, EKANS
	end_trainer

; Cerulean City (FRLG)
	def_trainer 3, "Grunt"
	tr_mon 17, MACHOP
	tr_mon 17, DROWZEE
	end_trainer

; Celadon Game Corner (FRLG)
	def_trainer 4, "Grunt"
	tr_mon 20, RATICATE
	tr_mon 20, ZUBAT
	end_trainer

; Celadon Rocket Hideout: B1F (FRLG)
	def_trainer 5, "Grunt"
	tr_mon 21, DROWZEE
	tr_mon 21, MACHOP
	end_trainer

	def_trainer 6, "Grunt"
	tr_mon 24, RATICATE
	end_trainer

	def_trainer 7, "Grunt"
	tr_mon 22, RATICATE
	tr_mon 22, RATICATE
	end_trainer

	def_trainer 8, "Grunt"		; Requires Lift Key
	tr_mon 22, GRIMER
	tr_mon 22, KOFFING
	end_trainer

; Celadon Rocket Hideout: B2F (FRLG)
	def_trainer 9, "Grunt"		; Abridged team
	tr_mon 21, KOFFING
	tr_mon 21, GRIMER
	tr_mon 21, RATICATE
	end_trainer

; Celadon Rocket Hideout: B3F (FRLG)
	def_trainer 10, "Grunt"
	tr_mon 22, DROWZEE
	tr_mon 22, RATICATE
	end_trainer

; Celadon Rocket Hideout: B4F (FRLG)
	def_trainer 11, "Grunt"
	tr_mon 22, KOFFING
	tr_mon 22, GOLBAT			; Evolved this Zubat
	end_trainer
; Following 2 grunts are replaced with Jesse/James and Archer, per LGPE

; Pokemon Tower: 7F (FRLG)
	def_trainer 12, "Grunt"
	tr_mon 26, GASTLY
	tr_mon 26, GOLBAT
	end_trainer
; The last grunt is replaced with Jesse/James, per LGPE

; Silph: 2F (FRLG)
	def_trainer 13, "Grunt"
	tr_mon 28, GOLBAT
	tr_mon 28, RATICATE
	end_trainer

	def_trainer 14, "Grunt"
	tr_mon 28, MAROWAK
	tr_mon 28, GOLBAT
	end_trainer

; Silph: 4F (FRLG)
	def_trainer 15, "Grunt"
	tr_mon 29, ARBOK
	tr_mon 29, GOLBAT
	end_trainer

	def_trainer 16, "Grunt"
	tr_mon 29, MACHOP
	tr_mon 29, DROWZEE
	end_trainer

; Silph: 5F (FRLG)
	def_trainer 17, "Grunt"
	tr_mon 33, HYPNO
	end_trainer

; Silph: 6F (FRLG/LGPE)
	def_trainer 18, "Grunt"
	tr_mon 29, RATICATE
	tr_mon 29, GOLBAT
	end_trainer

; Silph: 7F (FRLG)
	def_trainer 19, "Grunt"
	tr_mon 34, MAROWAK
	end_trainer

	def_trainer 20, "Grunt"
	tr_mon 34, SANDSLASH
	end_trainer

; Silph: 8F (LGPE)
	def_trainer 21, "Grunt"
	tr_mon 31, HAUNTER
	tr_mon 31, PERSIAN
	end_trainer

; Silph: 9F (LGPE)
	def_trainer 22, "Grunt"
	tr_mon 33, KOFFING
	end_trainer

; Silph: 10F (LGPE)
	def_trainer 23, "Grunt"
	tr_mon 31, VOLTORB
	tr_mon 31, RATICATE
	end_trainer

; Silph: 11F (LGPE)
	def_trainer 24, "Grunt"
	tr_mon 31, HYPNO
	tr_mon 31, GOLBAT
	end_trainer
; The last grunt is replaced with Jesse/James, per LGPE

SECTION "GruntFGroup", ROMX
GruntFGroup:

	def_trainer_class GRUNTF

; Mt. Moon (FRLG)
	def_trainer 1, "Grunt"
	tr_mon 13, RATTATA
	tr_mon 13, SANDSHREW
	end_trainer

	def_trainer 2, "Grunt"
	tr_mon 13, RATTATA
	tr_mon 13, ZUBAT
	end_trainer

; Celadon Rocket Hideout: B1F (FRLG)
	def_trainer 3, "Grunt"
	tr_mon 20, GRIMER
	tr_mon 20, EKANS				; LGPE addition
	tr_mon 20, KOFFING
	end_trainer

; Celadon Rocket Hideout: B3F (FRLG)
	def_trainer 4, "Grunt"
	tr_mon 22, GOLBAT				; LGPE addition
	tr_mon 22, RATICATE
	end_trainer

; Pokemon Tower: 7F (FRLG)
	def_trainer 5, "Grunt"
	tr_mon 26, GASTLY
	tr_mon 26, DROWZEE
	end_trainer

; Silph: 3F (FRLG): Changed to Female
	def_trainer 6, "Grunt"
	tr_mon 28, HAUNTER				; LGPE addition, replacing Raticate
	tr_mon 28, HYPNO
	tr_mon 28, RATICATE
	end_trainer

; Silph: 5F (FRLG)
	def_trainer 7, "Grunt"
	tr_mon 33, ARBOK
	end_trainer

; Silph: 6F (FRLG/LGPE)
	def_trainer 8, "Grunt"
	tr_mon 29, MEOWTH
	tr_mon 29, MACHOKE
	end_trainer

; Silph: 7F (LGPE)
	def_trainer 9, "Grunt"
	tr_mon 31, VOLTORB
	tr_mon 31, ELECTRODE
	end_trainer

; Silph: 8F (LGPE)
	def_trainer 10, "Grunt"
	tr_mon 31, GRIMER
	tr_mon 31, KOFFING
	end_trainer

; Silph: 9F (LGPE)
	def_trainer 11, "Grunt"
	tr_mon 33, PERSIAN
	end_trainer

SECTION "PokefanMGroup", ROMX
PokefanMGroup:

	def_trainer_class POKEFANM
	def_trainer DEREK1, "Derek"
	tr_mon 18, PIKACHU @ ORAN_BERRY
	end_trainer

	def_trainer DEREK2, "Derek"
	tr_mon 19, PIKACHU @ ORAN_BERRY
	end_trainer

	def_trainer DEREK3, "Derek"
	tr_mon 36, PIKACHU @ SITRUS_BERRY
	end_trainer


SECTION "PokefanFGroup", ROMX
PokefanFGroup:

	def_trainer_class POKEFANF
	def_trainer BEVERLY1, "Beverly"
	tr_mon 16, SNUBBULL @ ORAN_BERRY
	end_trainer

	def_trainer BEVERLY2, "Beverly"
	tr_mon 18, SNUBBULL @ ORAN_BERRY
	end_trainer

	def_trainer BEVERLY3, "Beverly"
	tr_mon 30, GRANBULL @ SITRUS_BERRY
	end_trainer


SECTION "OfficerMGroup", ROMX
OfficerMGroup:

	def_trainer_class OFFICERM

	def_trainer KEITH, "Keith"
	tr_mon 15, GROWLITHE
	tr_mon 15, GROWLITHE
	end_trainer


SECTION "OfficerFGroup", ROMX
OfficerFGroup:

	def_trainer_class OFFICERF

	def_trainer JENNY, "Jenny"
	tr_mon 53, SQUIRTLE
	tr_mon 53, SQUIRTLE
	tr_mon 53, SQUIRTLE
	tr_mon 53, SQUIRTLE
	end_trainer


SECTION "NurseGroup", ROMX
NurseGroup:

	def_trainer_class NURSE

	def_trainer JOY, "Joy"
	tr_mon LEVEL_FROM_BADGES + 6, CHANSEY
	end_trainer


SECTION "PokemaniacGroup", ROMX
PokemaniacGroup:

	def_trainer_class POKEMANIAC

; Rock Tunnel (FRLG/LGPE)
	def_trainer ASHTON, "Ashton"
	tr_mon 23, CUBONE
	tr_mon 23, SLOWPOKE
	end_trainer

	def_trainer WINSTON, "Winston"
	tr_mon 25, KANGASKHAN			; LGPE mon at FRLG level
	end_trainer

	def_trainer STEVE, "Steve"
	tr_mon 23, CHARMANDER
	tr_mon 23, CUBONE
	end_trainer

	def_trainer COOPER, "Cooper"
	tr_mon 23, IVYSAUR				; LGPE Addition
	tr_mon 23, SLOWPOKE
	end_trainer

; Route 10 (FRLG/LGPE)
	def_trainer MARK, "Mark"
	tr_mon 29, RHYHORN
	tr_mon 29, LICKITUNG
	end_trainer

	def_trainer HERMAN, "Herman"
	tr_mon 21, CHARMELEON			; LGPE team member, replacing Cubone
	tr_mon 21, SLOWPOKE
	end_trainer

; Victory Road (FRLG + LGPE)
	def_trainer DAWSON, "Dawson"	; LGPE team lineup
	tr_mon 40, BLASTOISE
	tr_mon 40, ONIX
	tr_mon 40, LICKITUNG	
	end_trainer

	def_trainer DAMIAN, "Damian"	; Dawson's FRLG team lineup, with Herman's LGPE name
	tr_mon 40, CHARIZARD
	tr_mon 40, LAPRAS
	tr_mon 40, LICKITUNG	
	end_trainer

; Unused Phone Trainers
	def_trainer BRENT1, "Brent"
	tr_mon 32, LICKITUNG
	end_trainer

	def_trainer BRENT2, "Brent"
	tr_mon 37, KANGASKHAN
	end_trainer

	def_trainer BRENT3, "Brent"
	tr_mon 42, PORYGON
		tr_moves RECOVER, PSYCHIC_M, CONVERSION, TRI_ATTACK
	end_trainer

	def_trainer BRENT4, "Brent"
	tr_mon 47, CHANSEY
		tr_moves ROLLOUT, ATTRACT, RETURN, FRESH_SNACK
	end_trainer


SECTION "CosplayerGroup", ROMX
CosplayerGroup:

; Unused Trainers
	def_trainer_class COSPLAYER

	def_trainer CLARA, "Clara"
	tr_mon 14, VULPIX
	end_trainer

	def_trainer CHLOE, "Chloe"
	tr_mon LEVEL_FROM_BADGES + 5, VULPIX
	end_trainer

	def_trainer BROOKE, "Brooke"
	tr_mon 62, NINETALES
	end_trainer

	def_trainer KUROKO, "Kuroko"
	tr_mon 62, NINETALES
	end_trainer

	def_trainer LYRIC, "Lyric"
	tr_mon 55, ELECTRODE
	end_trainer


SECTION "SuperNerdGroup", ROMX
SuperNerdGroup:

	def_trainer_class SUPER_NERD

; Mt Moon (FRLG)
	def_trainer JOVAN, "Jovan"
	tr_mon 11, MAGNEMITE
	tr_mon 11, VOLTORB
	end_trainer

	def_trainer MIGUEL, "Miguel"
	tr_mon 12, GRIMER
	tr_mon 12, VOLTORB
	tr_mon 12, MAGNEMITE			; LGPE team member added
	end_trainer

; Route 8 (FRLG)
	def_trainer GLENN, "Glenn"
	tr_mon 22, GRIMER
	tr_mon 22, GRIMER
	tr_mon 22, MUK
	end_trainer

	def_trainer LESLIE, "Leslie"
	tr_mon 24, KOFFING
	tr_mon 24, MAGNEMITE			; LGPE team member added
	end_trainer

	def_trainer AIDAN, "Aidan"
	tr_mon 21, VOLTORB
	tr_mon 21, MAGNEMITE
	tr_mon 21, KOFFING
	end_trainer

; Cinnabar Gym (FRLG)
	def_trainer ERIK, "Erik"
	tr_mon 36, VULPIX
	tr_mon 36, VULPIX
	tr_mon 36, NINETALES
	end_trainer

	def_trainer AVERY, "Avery"
	tr_mon 34, PONYTA
	tr_mon 34, CHARMELEON			; Evolved
	tr_mon 34, VULPIX
	tr_mon 34, GROWLITHE
	end_trainer

	def_trainer DEREK, "Derek"
	tr_mon 41, RAPIDASH
	end_trainer

	def_trainer ZAC, "Zac"
	tr_mon 37, GROWLITHE
	tr_mon 37, VULPIX
	end_trainer


SECTION "LassGroup", ROMX
LassGroup:

	def_trainer_class LASS

; Viridian Forest (Y; Name from LGPE)
	def_trainer JOANA, "Joana"
	tr_mon 6, NIDORAN_F
	tr_mon 6, NIDORAN_M
	end_trainer

	def_trainer BRITTANY, "Brittany"
	tr_mon 6, NIDORAN_F
	tr_mon 7, PIDGEY
	end_trainer

; Route 3 (FRLG)
	def_trainer JANICE, "Janice"
	tr_mon 9, PIDGEY
	tr_mon 9, ODDISH			; LGPE team member; replaces Pidgey
	end_trainer

	def_trainer SALLY, "Sally"
	tr_mon 10, RATTATA
	tr_mon 10, NIDORAN_F
	end_trainer

	def_trainer ROBIN, "Robin"
	tr_mon 14, JIGGLYPUFF
	end_trainer

; Mt. Moon (FRLG)
	def_trainer IRIS, "Iris"
	tr_mon 14, CLEFAIRY
	end_trainer

	def_trainer MIRIAM, "Miriam"
	tr_mon 11, ODDISH
	tr_mon 11, BELLSPROUT
	end_trainer

; Route 24 (FRLG + LGPE)
	def_trainer ALI, "Ali"
	tr_mon 12, PIDGEY
	tr_mon 12, PSYDUCK			; LGPE team member
	tr_mon 12, BELLSPROUT
	end_trainer

	def_trainer RELI, "Reli"
	tr_mon 16, MEOWTH			; LGPE team member
	tr_mon 16, NIDORAN_F
	end_trainer

; Route 25 (FRLG)
	def_trainer HALEY, "Haley"
	tr_mon 12, ODDISH
	tr_mon 12, PIDGEY
	tr_mon 12, JIGGLYPUFF		; Gen 2 Lass party member
	end_trainer

; SS Anne (FRLG)
	def_trainer ANN, "Ann"
	tr_mon 18, PIDGEY
	tr_mon 18, NIDORAN_F
	end_trainer

	def_trainer DAWN, "Dawn"
	tr_mon 18, JIGGLYPUFF		; RBY team member
	tr_mon 18, PIKACHU
	end_trainer

; Route 8 (FRLG)
	def_trainer JULIA, "Julia"
	tr_mon 22, CLEFAIRY
	tr_mon 22, CLEFAIRY
	end_trainer

	def_trainer PAIGE, "Paige"
	tr_mon 23, NIDORAN_F
	tr_mon 23, NIDORINA
	end_trainer

	def_trainer ANDREA, "Andrea"
	tr_mon 24, MEOWTH
	tr_mon 24, MEOWTH
	tr_mon 24, MEOWTH
	end_trainer

	def_trainer MEGAN, "Megan"
	tr_mon 24, PIDGEY			; Abridged FRLG team
	tr_mon 24, MEOWTH
	tr_mon 24, PIKACHU
	end_trainer

; Celadon Gym (FRLG)
	def_trainer KAY, "Kay"
	tr_mon 23, BELLSPROUT
	tr_mon 23, WEEPINBELL
	end_trainer

	def_trainer LISA, "Lisa"
	tr_mon 23, ODDISH
	tr_mon 23, GLOOM
	end_trainer

; Route 4 (FRLG)
	def_trainer CRISSY, "Crissy"
	tr_mon 31, PARAS
	tr_mon 31, PARAS
	tr_mon 31, PARASECT
	end_trainer

; Unused Phone Trainers
	def_trainer DANA1, "Dana"
	tr_mon 19, FLAAFFY
	tr_mon 19, PSYDUCK
	end_trainer

	def_trainer DANA2, "Dana"
	tr_mon 21, FLAAFFY
		tr_moves TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	tr_mon 21, PSYDUCK
		tr_moves SCRATCH, LEER, DISABLE, CONFUSION
	end_trainer

	def_trainer DANA3, "Dana"
	tr_mon 29, PSYDUCK
		tr_moves SCRATCH, DISABLE, CONFUSION, SCREECH
	tr_mon 29, FLAAFFY
		tr_moves TACKLE, THUNDERSHOCK, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer DANA4, "Dana"
	tr_mon 32, PSYDUCK
		tr_moves SCRATCH, DISABLE, CONFUSION, SCREECH
	tr_mon 32, AMPHAROS
		tr_moves TACKLE, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	end_trainer

	def_trainer DANA5, "Dana"
	tr_mon 36, AMPHAROS
		tr_moves SWIFT, THUNDERPUNCH, THUNDER_WAVE, THUNDERBOLT
	tr_mon 36, GOLDUCK
		tr_moves DISABLE, SURF, PSYCHIC_M, SCREECH
	end_trainer


SECTION "BeautyGroup", ROMX
BeautyGroup:

	def_trainer_class BEAUTY

; Celadon Gym (FRLG/LGPE)
	def_trainer BRIDGET, "Bridget"
	tr_mon 23, GLOOM
	tr_mon 23, WEEPINBELL
	end_trainer

	def_trainer LORI, "Lori"
	tr_mon 25, EXEGGCUTE
	end_trainer

	def_trainer TAMIA, "Tamia"
	tr_mon 24, BELLSPROUT
	tr_mon 24, WEEPINBELL
	end_trainer

; Route 13 (FRLG)
	def_trainer LOLA, "Lola"
	tr_mon 27, RATTATA
	tr_mon 27, VULPIX
	tr_mon 27, PIKACHU
	end_trainer

	def_trainer SHELIA, "Shelia"
	tr_mon 29, CLEFAIRY
	tr_mon 29, MEOWTH
	end_trainer

; Route 15 (FRLG/LGPE)
	def_trainer GRACE, "Grace"
	tr_mon 29, PIDGEOTTO
	tr_mon 29, WIGGLYTUFF
	end_trainer

	def_trainer OLIVIA, "Olivia"
	tr_mon 29, GROWLITHE			; from LGPE Lana's team
	tr_mon 29, IVYSAUR
	end_trainer
; Beauty trainers on later routes are replaced with female swimmers


SECTION "BugManiacGroup", ROMX
BugManiacGroup:

	def_trainer_class BUG_MANIAC

; Unused Trainer
	def_trainer LOU, "Lou"
	tr_mon 19, YANMA
		tr_moves BUG_BITE, QUICK_ATTACK, DOUBLE_TEAM, SONIC_BOOM
	end_trainer


SECTION "RuinManiacGroup", ROMX
RuinManiacGroup:

	def_trainer_class RUIN_MANIAC

; Unused Trainer
	def_trainer JONES, "Jones"
	tr_mon 8, OMANYTE
	tr_mon 8, KABUTO
	end_trainer


SECTION "FirebreatherGroup", ROMX
FirebreatherGroup:

	def_trainer_class FIREBREATHER

; Unused Trainer
	def_trainer QUINN, "Quinn"
	tr_mon 36, GROWLITHE
	tr_mon 36, VULPIX
	tr_mon 36, NINETALES
	end_trainer

	def_trainer RAMON, "Ramon"
	tr_mon 41, MAGMAR			; custom team
	end_trainer

	def_trainer DUSTY, "Dusty"
	tr_mon 36, VULPIX
	tr_mon 36, GROWLITHE
	end_trainer


SECTION "JugglerGroup", ROMX
JugglerGroup:

	def_trainer_class JUGGLER

; Silph Co: 5F (FRLG)
	def_trainer DALTON, "Dalton"
	tr_mon 29, KADABRA
	tr_mon 29, MR__MIME
	end_trainer

; Fuchsia Gym (FRLG/LGPE)
	def_trainer NATE, "Nate"
	tr_mon 34, HYPNO			; evolved
	tr_mon 34, KADABRA
	end_trainer

	def_trainer KAYDEN, "Kayden"
	tr_mon 38, HYPNO
	end_trainer

	def_trainer KIRK, "Kirk"
	tr_mon 32, KADABRA
	tr_mon 32, DROWZEE
	tr_mon 32, HAUNTER			; LGPE team addition, replacing 2 Drowzees
	end_trainer

	def_trainer SHAWN, "Shawn"
	tr_mon 34, HAUNTER			; LGPE team addition, replacing Drowzee
	tr_mon 34, HYPNO
	end_trainer

; Victory Road (FRLG/LGPE)
	def_trainer NELSON, "Nelson"
	tr_mon 41, DROWZEE
	tr_mon 41, HYPNO
	tr_mon 41, KADABRA
	tr_mon 41, SLOWBRO			; LGPE team addition, replacing Drowzee
	end_trainer

	def_trainer GREGORY, "Gregory"
	tr_mon 46, MR__MIME
	tr_mon 46, ALAKAZAM			; LGPE team addition
	end_trainer

; Unused Phone Trainer
	def_trainer IRWIN1, "Irwin"
	tr_mon 2, VOLTORB
	tr_mon 6, VOLTORB
	tr_mon 10, VOLTORB
	tr_mon 14, VOLTORB
	end_trainer

;	; unused
;	def_trainer IRWIN2, "Irwin"
;	tr_mon 6, VOLTORB
;	tr_mon 10, VOLTORB
;	tr_mon 14, VOLTORB
;	tr_mon 18, VOLTORB
;	end_trainer

;	def_trainer IRWIN3, "Irwin"
;	tr_mon 18, VOLTORB
;	tr_mon 22, VOLTORB
;	tr_mon 26, VOLTORB
;	tr_mon 30, ELECTRODE
;	end_trainer

;	def_trainer IRWIN4, "Irwin"
;	tr_mon 18, VOLTORB
;	tr_mon 22, VOLTORB
;	tr_mon 26, VOLTORB
;	tr_mon 30, ELECTRODE
;	end_trainer


SECTION "SchoolboyGroup", ROMX
SchoolboyGroup:

	def_trainer_class SCHOOLBOY

; Unused Phone Trainers
	def_trainer JACK1, "Jack"
	tr_mon 12, ODDISH
	tr_mon 15, VOLTORB
	end_trainer

	def_trainer JACK2, "Jack"
	tr_mon 14, ODDISH
	tr_mon 17, VOLTORB
	end_trainer

	def_trainer JACK3, "Jack"
	tr_mon 28, GLOOM
	tr_mon 31, ELECTRODE
	end_trainer

	def_trainer JACK4, "Jack"
	tr_mon 30, GLOOM
	tr_mon 33, GROWLITHE
	tr_mon 33, ELECTRODE
	end_trainer

	def_trainer JACK5, "Jack"
	tr_mon 35, ELECTRODE
		tr_moves SCREECH, SONIC_BOOM, ROLLOUT, LIGHT_SCREEN
	tr_mon 35, GROWLITHE
		tr_moves SUNNY_DAY, LEER, TAKE_DOWN, FLAME_CHARGE
	tr_mon 37, VILEPLUME
		tr_moves SOLAR_BEAM, SLEEP_POWDER, ACID, HEALINGLIGHT
	end_trainer

	def_trainer ALAN1, "Alan"
	tr_mon 17, TANGELA
	end_trainer

	def_trainer ALAN2, "Alan"
	tr_mon 17, TANGELA
	tr_mon 17, YANMA
	end_trainer

	def_trainer ALAN3, "Alan"
	tr_mon 20, NATU
	tr_mon 22, TANGELA
	tr_mon 20, QUAGSIRE
	tr_mon 25, YANMA
	end_trainer

	def_trainer ALAN4, "Alan"
	tr_mon 27, NATU
	tr_mon 27, TANGELA
	tr_mon 30, QUAGSIRE
	tr_mon 30, YANMA
	end_trainer

	def_trainer ALAN5, "Alan"
	tr_mon 35, XATU
		tr_moves PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	tr_mon 38, TANGROWTH
		tr_moves ANCIENTPOWER, POISONPOWDER, VINE_WHIP, MEGA_DRAIN
	tr_mon 37, YANMA
		tr_moves QUICK_ATTACK, DOUBLE_TEAM, DRAGON_RAGE, WING_ATTACK
	tr_mon 35, QUAGSIRE
		tr_moves LEER, HEADBUTT, AMNESIA, EARTHQUAKE
	end_trainer

	def_trainer CHAD1, "Chad"
	tr_mon 20, MR__MIME
	end_trainer

	def_trainer CHAD2, "Chad"
	tr_mon 20, MR__MIME
	tr_mon 20, MAGNEMITE
	end_trainer

	def_trainer CHAD3, "Chad"
	tr_mon 27, MR__MIME
	tr_mon 31, MAGNETON
	end_trainer

	def_trainer CHAD4, "Chad"
	tr_mon 30, MR__MIME
	tr_mon 34, MAGNETON
	end_trainer

	def_trainer CHAD5, "Chad"
	tr_mon 34, MR__MIME
		tr_moves PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	tr_mon 38, MAGNETON
		tr_moves ZAP_CANNON, THUNDER_WAVE, SUPERSONIC, SWIFT
	end_trainer


SECTION "SchoolgirlGroup", ROMX
SchoolgirlGroup:

	def_trainer_class SCHOOLGIRL

; Unused trainer
	def_trainer MOLLY, "Molly"
	tr_mon 7, "Teddy", TEDDIURSA
	end_trainer


SECTION "PsychicGroup", ROMX
PsychicGroup:

	def_trainer_class PSYCHIC_T

; Saffron Gym (FRLG/LGPE)
	def_trainer CAMERON, "Cameron"
	tr_mon 34, KADABRA			; LGPE team addition
	tr_mon 34, SLOWBRO
	end_trainer

	def_trainer TYRON, "Tyron"
	tr_mon 34, MR__MIME
	tr_mon 34, KADABRA
	end_trainer

	def_trainer PRESTON, "Preston"
	tr_mon 34, SLOWBRO
	tr_mon 34, HYPNO			; LGPE team addition
	end_trainer

	def_trainer JOHAN, "Johan"	; FRLG/LGPE team amalgamation
	tr_mon 32, KADABRA
	tr_mon 32, MR__MIME
	tr_mon 32, SLOWBRO
	end_trainer


SECTION "HexManiacGroup", ROMX
HexManiacGroup:

	def_trainer_class HEX_MANIAC

; Saffron Gym
	def_trainer AMANDA, "Amanda"
	tr_mon 34, KADABRA
	tr_mon 34, HAUNTER
	end_trainer

	def_trainer STACY, "Stacy"
	tr_mon 38, HAUNTER
	end_trainer

	def_trainer TASHA, "Tasha"
	tr_mon 34, GASTLY
	tr_mon 34, HAUNTER
	end_trainer


SECTION "SageGroup", ROMX
SageGroup:

	def_trainer_class SAGE


SECTION "MediumGroup", ROMX
MediumGroup:

	def_trainer_class MEDIUM


SECTION "KimonoGirlGroup", ROMX
KimonoGirlGroup:

	def_trainer_class KIMONO_GIRL

	def_trainer NAOKO, "Naoko"
	tr_mon LEVEL_FROM_BADGES + 10, FLAREON @ LUM_BERRY
	end_trainer

	def_trainer SAYO, "Sayo"
	tr_mon LEVEL_FROM_BADGES + 10, ESPEON @ LUM_BERRY
	end_trainer

	def_trainer ZUKI, "Zuki"
	tr_mon LEVEL_FROM_BADGES + 10, UMBREON @ LUM_BERRY
	end_trainer

	def_trainer KUNI, "Kuni"
	tr_mon LEVEL_FROM_BADGES + 10, VAPOREON @ LUM_BERRY
	end_trainer

	def_trainer MIKI, "Miki"
	tr_mon LEVEL_FROM_BADGES + 10, JOLTEON @ LUM_BERRY
	end_trainer

	def_trainer MAKO, "Mako"
	tr_mon LEVEL_FROM_BADGES + 10, LEAFEON @ LUM_BERRY
	end_trainer

	def_trainer AMI, "Ami"
	tr_mon LEVEL_FROM_BADGES + 10, GLACEON @ LUM_BERRY
	end_trainer

	def_trainer MINA, "Mina"
	tr_mon LEVEL_FROM_BADGES + 10, SYLVEON @ LUM_BERRY
	end_trainer


SECTION "ElderGroup", ROMX
ElderGroup:

	def_trainer_class ELDER
	def_trainer LI, "Li"
	tr_mon 7, GASTLY
	tr_mon 10, BELLSPROUT
	end_trainer


SECTION "SrAndJrGroup", ROMX
SrAndJrGroup:

	def_trainer_class SR_AND_JR
	def_trainer JOANDCATH1, "Jo & Cath"
	tr_mon 18, TEDDIURSA
	tr_mon 16, JIGGLYPUFF
	end_trainer

	def_trainer JOANDCATH2, "Jo & Cath"
	tr_mon 16, JIGGLYPUFF
	tr_mon 18, TEDDIURSA
	end_trainer


SECTION "CoupleGroup", ROMX
CoupleGroup:

	def_trainer_class COUPLE

; Route 12
	def_trainer GIAANDJES1, "Gia & Jes"
	tr_mon 24, NIDORAN_M
	tr_mon 24, NIDORAN_F
	end_trainer

	def_trainer GIAANDJES2, "Gia & Jes"
	tr_mon 24, NIDORAN_M
	tr_mon 24, NIDORAN_F
	end_trainer

; Route 16
	def_trainer LEAANDJED1, "Lea & Jed"
	tr_mon 29, RAPIDASH, MALE
	tr_mon 29, NINETALES, FEMALE
	end_trainer

	def_trainer LEAANDJED2, "Lea & Jed"
	tr_mon 29, RAPIDASH, MALE
	tr_mon 29, NINETALES, FEMALE
	end_trainer


SECTION "GentlemanGroup", ROMX
GentlemanGroup:

	def_trainer_class GENTLEMAN

; SS ANNE
	def_trainer THOMAS, "Thomas"
	tr_mon 18, GROWLITHE
	tr_mon 18, GROWLITHE
	end_trainer

	def_trainer ARTHUR, "Arthur"
	tr_mon 19, NIDORAN_M
	tr_mon 19, NIDORAN_F
	end_trainer

	def_trainer BROOKS, "Brooks"
	tr_mon 23, PIKACHU
	end_trainer

	def_trainer LAMAR, "Lamar"
	tr_mon 17, GROWLITHE
	tr_mon 17, PONYTA
	end_trainer

; Vermilion Gym
	def_trainer TUCKER, "Tucker"
	tr_mon 23, PIKACHU
	end_trainer


SECTION "RichBoyGroup", ROMX
RichBoyGroup:

	def_trainer_class RICH_BOY

	def_trainer BOY_WINSTON, "Winston"
	tr_mon 46, PIDGEOT
	end_trainer


SECTION "LadyGroup", ROMX
LadyGroup:

	def_trainer_class LADY

	def_trainer JESSICA, "Jessica"
	tr_mon 55, BLISSEY
	end_trainer


SECTION "BreederGroup", ROMX
BreederGroup:

	def_trainer_class BREEDER

	def_trainer ALLISON, "Allison"
	tr_mon 7, PICHU @ EVIOLITE
	tr_mon 8, TOGEPI @ EVIOLITE
	end_trainer

	def_trainer ALIZE, "Alize"
	tr_mon 15, MAGBY
	tr_mon 16, ELEKID
	end_trainer

	def_trainer BETHANY, "Bethany"
	tr_mon 27, TYROGUE
	tr_mon 28, MUNCHLAX
	end_trainer


SECTION "BakerGroup", ROMX
BakerGroup:

	def_trainer_class BAKER

	def_trainer OLGA, "Olga"
	tr_mon 53, CHANSEY
	end_trainer


SECTION "CowgirlGroup", ROMX
CowgirlGroup:

	def_trainer_class COWGIRL

	def_trainer DANIELA, "Daniela"
	tr_mon LEVEL_FROM_BADGES + 3, TAUROS
	tr_mon LEVEL_FROM_BADGES + 3, MILTANK
	end_trainer


SECTION "SailorGroup", ROMX
SailorGroup:

	def_trainer_class SAILOR

; SS Anne (FRLG/LGPE)
	def_trainer TREVOR, "Trevor"
	tr_mon 17, MACHOP
	tr_mon 17, SEEL					; LGPE team member; replacing Tentacool
	end_trainer

	def_trainer EDMOND, "Edmond"
	tr_mon 18, MACHOP
	tr_mon 18, POLIWAG				; LGPE team member; replacing Shellder
	end_trainer

	def_trainer PHILLIP, "Phillip"
	tr_mon 20, MACHOP
	end_trainer

	def_trainer HUEY, "Huey"
	tr_mon 18, TENTACOOL
	tr_mon 18, STARYU
	end_trainer

	def_trainer DUNCAN, "Duncan"
	tr_mon 17, HORSEA
	tr_mon 17, SHELLDER
	tr_mon 17, TENTACOOL
	end_trainer

	def_trainer LEONARD, "Leonard"
	tr_mon 21, SLOWPOKE				; LGPE team member; replacing Shellder
	end_trainer

; Vermilion Gym (FRLG/Y)
	def_trainer DWAYNE, "Dwayne"
	tr_mon 21, PIKACHU
	tr_mon 21, MAGNEMITE		; Yellow team member; replaced Pikachu
	end_trainer

; Unused Phone Trainers
	def_trainer HUEY1, "Huey"
	tr_mon 18, POLIWAG
	tr_mon 20, POLIWHIRL
	end_trainer

	def_trainer HUEY2, "Huey"
	tr_mon 28, POLIWHIRL
	tr_mon 28, POLIWHIRL
	end_trainer

	def_trainer HUEY3, "Huey"
	tr_mon 34, POLIWHIRL
	tr_mon 34, POLIWRATH
	end_trainer

	def_trainer HUEY4, "Huey"
	tr_mon 38, POLITOED
		tr_moves WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	tr_mon 38, POLIWRATH
		tr_moves SURF, STRENGTH, ICE_PUNCH, CLOSE_COMBAT
	end_trainer


SECTION "SwimmerMGroup", ROMX
SwimmerMGroup:

	def_trainer_class SWIMMERM

; Cerulean Gym (FRLG)
	def_trainer LUIS, "Luis"
	tr_mon 16, HORSEA
	tr_mon 16, SHELLDER
	end_trainer

; Route 19 (FRLG/LGPE)
	def_trainer RICHARD, "Richard"
	tr_mon 30, TENTACOOL
	tr_mon 30, SHELLDER
	end_trainer

	def_trainer REECE, "Reece"
	tr_mon 29, GOLDEEN
	tr_mon 29, HORSEA
	tr_mon 29, STARYU
	end_trainer

	def_trainer TONY, "Tony"
	tr_mon 30, HORSEA
	tr_mon 30, HORSEA
	end_trainer

	def_trainer DAVID, "David"
	tr_mon 29, GOLDEEN
	tr_mon 29, SHELLDER
	tr_mon 29, SEAKING
	end_trainer

	def_trainer DOUGLAS, "Douglas"
	tr_mon 27, HORSEA
	tr_mon 27, TENTACOOL
	tr_mon 27, TENTACOOL
	tr_mon 27, GOLDEEN
	end_trainer

	def_trainer MATTHEW, "Matthew"
	tr_mon 30, POLIWAG
	tr_mon 30, POLIWHIRL
	end_trainer

	def_trainer AXLE, "Axle"
	tr_mon 27, TENTACOOL
	tr_mon 27, POLIWHIRL			; LGPE team member; Replacing Tentacool
	tr_mon 27, STARYU
	tr_mon 27, HORSEA
	tr_mon 27, TENTACRUEL
	end_trainer

; Route 20 (FRLG/LGPE)
	def_trainer BARRY, "Barry"
	tr_mon 31, SHELLDER
	tr_mon 31, CLOYSTER
	end_trainer

	def_trainer DARRIN, "Darrin"
	tr_mon 29, HORSEA
	tr_mon 29, SEADRA
	tr_mon 29, GYARADOS				; LGPE team member; Replacing two Horsea
	end_trainer

	def_trainer DEAN, "Dean"
	tr_mon 35, STARMIE				; Evolved
	end_trainer

; Route 21 (FRLG/LGPE)
	def_trainer SPENCER, "Spencer"
	tr_mon 33, SEADRA
	tr_mon 33, TENTACRUEL
	end_trainer

	def_trainer JACK, "Jack"		; LGPE team
	tr_mon 33, GOLDUCK
	tr_mon 33, TENTACRUEL
	end_trainer

	def_trainer ROLAND, "Roland"	; LGPE team
	tr_mon 33, STARMIE
	tr_mon 33, KINGLER
	end_trainer

	def_trainer JEROME, "Jerome"
	tr_mon 33, STARMIE
	tr_mon 33, WARTORTLE			; evolved
	end_trainer


SECTION "SwimmerFGroup", ROMX
SwimmerFGroup:

	def_trainer_class SWIMMERF

; Route 19 (FRLG/LGPE)
	def_trainer ALICE, "Alice"
	tr_mon 30, GOLDEEN
	tr_mon 30, SEAKING
	end_trainer

	def_trainer ANYA, "Anya"
	tr_mon 27, POLIWAG
	tr_mon 27, GOLDEEN
	tr_mon 27, SEAKING
	tr_mon 27, GOLDEEN
	tr_mon 27, POLIWAG
	end_trainer

	def_trainer CONNIE, "Connie"
	tr_mon 33, VAPOREON				; LGPE team
	end_trainer

; Route 20 (FRLG/LGPE)
	def_trainer SHIRLEY, "Shirley"	; LGPE team
	tr_mon 30, WARTORTLE
	tr_mon 30, STARMIE
	end_trainer

	def_trainer TIFFANY, "Tiffany"
	tr_mon 35, SEAKING
	end_trainer

	def_trainer NORA, "Nora"		; LGPE team
	tr_mon 35, CLOYSTER
	end_trainer

	def_trainer MELISSA, "Melissa"
	tr_mon 29, POLIWHIRL			; evolved
	tr_mon 29, SEAKING
	tr_mon 29, JYNX					; LGPE team member addition


SECTION "BurglarGroup", ROMX
BurglarGroup:

	def_trainer_class BURGLAR

; Cinnabar Mansion (FRLG/LGPE)
	def_trainer ARNIE, "Arnie"
	tr_mon 34, PONYTA				; devolved LGPE team member; replacing Charmander
	tr_mon 34, CHARMELEON
	end_trainer

	def_trainer SIMON, "Simon"
	tr_mon 38, NINETALES
	end_trainer

	def_trainer LEWIS, "Lewis"
	tr_mon 34, GROWLITHE
	tr_mon 34, KOFFING				; LGPE team member; replacing Ponyta
	end_trainer


SECTION "PIGroup", ROMX
PIGroup:

	def_trainer_class PI
	def_trainer LOOKER, "Looker"
	tr_mon 48, ARCANINE
	tr_mon 48, ELECTABUZZ
	tr_mon 50, POLITOED
	end_trainer


SECTION "ScientistGroup", ROMX
ScientistGroup:

	def_trainer_class SCIENTIST

; Cinnabar Mansion (FRLG)
	def_trainer BRAYDON, "Braydon"
	tr_mon 33, MAGNEMITE
	tr_mon 33, MAGNETON
	tr_mon 33, VOLTORB
	end_trainer

	def_trainer TED, "Ted"			; leveled-up
	tr_mon 35, WEEZING				; evolved
	tr_mon 35, ELECTRODE
	end_trainer

	def_trainer IVAN, "Ivan"
	tr_mon 38, ELECTABUZZ			; LGPE team
	end_trainer


SECTION "RocketScientistGroup", ROMX
RocketScientistGroup:

	def_trainer_class ROCKET_SCIENTIST

; Silph Co (FRLG/LGPE/Custom)
	def_trainer JERRY, "Jerry"
	tr_mon 29, ELECTABUZZ
	tr_mon 29, VOLTORB
	end_trainer

	def_trainer ROCKET_CONNOR, "Connor"
	tr_mon 28, GRIMER
	tr_mon 28, KOFFING
	tr_mon 28, PORYGON				; custom; replaces evolved mons
	end_trainer

	def_trainer JOSE, "Jose"
	tr_mon 29, GRIMER				; LGPE team
	tr_mon 29, MAGMAR
	end_trainer

	def_trainer RODNEY, "Rodney"
	tr_mon 33, ELECTRODE
	end_trainer

	def_trainer BEAU, "Beau"
	tr_mon 28, MAGNEMITE
	tr_mon 28, KOFFING
	tr_mon 28, GRIMER				; devolved LGPE team member
	end_trainer

	def_trainer TAYLOR, "Taylor"
	tr_mon 33, MAGMAR				; LGPE team member; now solo
	end_trainer

	def_trainer JOSHUA, "Joshua"
	tr_mon 33, ELECTRODE			; now solo
	end_trainer

	def_trainer PARKER, "Parker"
	tr_mon 30, GRIMER
	tr_mon 30, ELECTRODE
	end_trainer

	def_trainer ED, "Ed"
	tr_mon 30, ELECTABUZZ			; LGPE team member
	tr_mon 30, MAGNETON
	end_trainer

	def_trainer TRAVIS, "Travis"
	tr_mon 31, KOFFING
	tr_mon 31, MAGNETON
	end_trainer


SECTION "BoarderGroup", ROMX
BoarderGroup:

	def_trainer_class BOARDER


SECTION "SkierGroup", ROMX
SkierGroup:

	def_trainer_class SKIER


SECTION "BlackbeltGroup", ROMX
BlackbeltGroup:

	def_trainer_class BLACKBELT_T

; Fighting Dojo (FRLG)
	def_trainer HIDEKI, "Hideki"
	tr_mon 32, MACHOP
	tr_mon 32, MACHOKE
	end_trainer

	def_trainer HITOSHI, "Hitoshi"
	tr_mon 31, MACHOP
	tr_mon 31, MANKEY
	tr_mon 31, PRIMEAPE
	end_trainer

	def_trainer MIKE, "Mike"
	tr_mon 31, MANKEY
	tr_mon 31, MANKEY
	tr_mon 31, PRIMEAPE
	end_trainer

	def_trainer AARON, "Aaron"
	tr_mon 36, PRIMEAPE
	end_trainer

; Viridian Gym (FRLG/LGPE)
	def_trainer KIYO, "Kiyo"
	tr_mon 43, MACHOKE
	end_trainer

	def_trainer ATSUSHI, "Atsushi"
	tr_mon 40, MACHOP
	tr_mon 40, MACHOKE
	end_trainer

	def_trainer TAKASHI, "Takashi"
	tr_mon 38, GRAVELER			; LGPE team member, replacing Machoke
	tr_mon 38, MACHOP
	tr_mon 38, MACHOKE
	end_trainer

; Victory Road (LGPE)
	def_trainer DAISUKE, "Daisuke"
	tr_mon 43, HITMONLEE
	tr_mon 43, POLIWRATH
	end_trainer

; Unused Phone Trainer
	def_trainer KENJI1, "Kenji"
	tr_mon 43, MACHOKE
	end_trainer


SECTION "BattleGirlGroup", ROMX
BattleGirlGroup:

	def_trainer_class BATTLE_GIRL

	def_trainer DIANE, "Diane"
	tr_mon LEVEL_FROM_BADGES + 6, MACHOP
	tr_mon LEVEL_FROM_BADGES + 7, MACHOKE
	tr_mon LEVEL_FROM_BADGES + 8, PRIMEAPE
	end_trainer


SECTION "DragonTamerGroup", ROMX
DragonTamerGroup:

	def_trainer_class DRAGON_TAMER
	def_trainer PAUL, "Paul"
	tr_mon 37, DRATINI
	tr_mon 37, DRATINI
	tr_mon 38, DRAGONAIR
	end_trainer


SECTION "EngineerGroup", ROMX
EngineerGroup:

	def_trainer_class ENGINEER

; Route 11 (FRLG)
	def_trainer BRAXTON, "Braxton"
	tr_mon 21, VOLTORB
	end_trainer

	def_trainer BERNIE, "Bernie"
	tr_mon 18, MAGNEMITE
	tr_mon 18, MAGNEMITE
	tr_mon 18, MAGNETON
	end_trainer

; SS ANNE (FRLG)
	def_trainer DYLAN, "Dylan"
	tr_mon 18, MAGNEMITE
	tr_mon 18, MAGNEMITE
	end_trainer

SECTION "TeacherFGroup", ROMX
TeacherFGroup:

	def_trainer_class TEACHER_F
	def_trainer COLETTE, "Colette"
	tr_mon 60, CLEFAIRY
	end_trainer


SECTION "TeacherMGroup", ROMX
TeacherMGroup:

	def_trainer_class TEACHER_M
	def_trainer TEACHER_NOLAN, "Nolan"
	tr_mon 54, ELECTRODE
	end_trainer


SECTION "GuitaristMGroup", ROMX
GuitaristMGroup:

	def_trainer_class GUITARISTM
	def_trainer CLYDE, "Clyde"
	tr_mon 50, ELECTABUZZ
	end_trainer


SECTION "GuitaristFGroup", ROMX
GuitaristFGroup:

	def_trainer_class GUITARISTF
	def_trainer MORGAN, "Morgan"
	tr_mon 55, ELECTRODE
	tr_mon 55, JOLTEON
	end_trainer


SECTION "BikerGroup", ROMX
BikerGroup:

	def_trainer_class BIKER

; Route 13 (FRLG)
	def_trainer JARED, "Jared"
	tr_mon 28, KOFFING
	tr_mon 28, KOFFING
	tr_mon 28, KOFFING
	end_trainer

; Route 14 (FRLG/LGPE)
	def_trainer GERALD, "Gerald"
	tr_mon 29, MAGMAR				; LGPE team member; replacing Koffing
	tr_mon 29, GRIMER
	end_trainer

	def_trainer MALIK, "Malik"
	tr_mon 29, KOFFING
	tr_mon 29, RHYHORN				; LGPE team member; replacing Grimer
	end_trainer

	def_trainer ISAAC, "Isaac"
	tr_mon 29, GRIMER
	tr_mon 29, KOFFING
	end_trainer

	def_trainer LUKAS, "Lukas"
	tr_mon 28, RATICATE				; LGPE team member (Harvey); replacing two Koffings
	tr_mon 28, GRIMER
	tr_mon 28, KOFFING
	end_trainer

; Route 15 (FRLG/LGPE)
	def_trainer ERNEST, "Ernest"
	tr_mon 29, PRIMEAPE				; LGPE team addition
	tr_mon 29, KOFFING
	tr_mon 29, GRIMER
	end_trainer

	def_trainer ALEX, "Alex"
	tr_mon 29, ARBOK				; LGPE team addition
	tr_mon 29, KOFFING
	tr_mon 29, GRIMER
	end_trainer

; Route 16 (FRLG+LGPE)
	def_trainer LAO, "Lao"
	tr_mon 29, ONIX					; LGPE team addition
	tr_mon 29, GRIMER
	end_trainer

	def_trainer HIDEO, "Hideo"		; LGPE team
	tr_mon 29, ARBOK
	tr_mon 29, FEAROW
	end_trainer

	def_trainer RUBEN, "Ruben"
	tr_mon 35, WEEZING				; team truncated down
	end_trainer

; Route 17 (FRLG+LGPE)
	def_trainer VIRGIL, "Virgil"
	tr_mon 35, WEEZING				; team truncated down
	end_trainer

	def_trainer BILLY, "Billy"
	tr_mon 30, GRIMER				; devolved from Muk, doubled
	tr_mon 30, GRIMER
	end_trainer

	def_trainer NIKOLAS, "Nikolas"
	tr_mon 29, VOLTORB
	tr_mon 29, VOLTORB
	end_trainer

	def_trainer JAXON, "Jaxon"
	tr_mon 29, KOFFING
	tr_mon 29, GRIMER
	end_trainer

	def_trainer WILLIAM, "William"	; LGPE (Corey) team
	tr_mon 28, PRIMEAPE
	tr_mon 28, GRAVELER
	end_trainer


SECTION "RoughneckGroup", ROMX
RoughneckGroup:

	def_trainer_class ROUGHNECK

; Route 16 (FRLG+LGPE)
	def_trainer KOJI, "Koji"
	tr_mon 27, RATICATE				; LGPE Raticate + 2 evolved team members
	tr_mon 27, PRIMEAPE
	tr_mon 27, MACHOKE
	end_trainer

	def_trainer LUKE, "Luke"
	tr_mon 28, PRIMEAPE				; evolved team
	tr_mon 28, MACHOKE
	end_trainer

	def_trainer CAMRON, "Camron"
	tr_mon 29, RHYHORN				; Koji's LGPE team, minus Raticate
	tr_mon 29, KOFFING
	end_trainer

; Route 17 (FRLG)
	def_trainer ISAIAH, "Isaiah"
	tr_mon 29, ONIX					; changed team member
	tr_mon 29, MACHOKE				; devolved
	end_trainer

	def_trainer RAUL, "Raul"
	tr_mon 29, ONIX					; changed team member
	tr_mon 29, PRIMEAPE
	end_trainer

	def_trainer JAMAL, "Jamal"
	tr_mon 28, MACHOKE
	tr_mon 28, PRIMEAPE
	end_trainer

	def_trainer ZEEK, "Zeek"
	tr_mon 33, MACHOKE
	end_trainer

	def_trainer COREY, "Corey"		; change this team?
	tr_mon 28, MACHOKE
	tr_mon 28, GRAVELER				; LGPE Corey's team member
	end_trainer

; Route 21 (RBY/LGPE)
	def_trainer MARTIN, "Martin"
	tr_mon 32, RATICATE
	tr_mon 32, ONIX
	tr_mon 32, TENTACRUEL			; LGPE team member
	end_trainer


SECTION "TamerGroup", ROMX
TamerGroup:

	def_trainer_class TAMER

; Fuchsia Gym (FRLG+LGPE)
	def_trainer EDGAR, "Edgar"
	tr_mon 33, ARBOK
	tr_mon 33, ARBOK
	tr_mon 33, SANDSLASH
	end_trainer

	def_trainer PHIL, "Phil"		; LGPE team
	tr_mon 34, NIDORINA
	tr_mon 34, NIDORINO
	end_trainer

; Viridian Gym (FRLG/LGPE)
	def_trainer COLE, "Cole"
	tr_mon 39, NIDORINO				; LGPE team member, replacing Arbok
	tr_mon 39, TAUROS
	end_trainer

	def_trainer JASON, "Jason"
	tr_mon 43, RHYHORN
	end_trainer

; Victory Road (FRLG/LGPE combined team)
	def_trainer VINCENT, "Vincent"
	tr_mon 41, PERSIAN
	tr_mon 41, PRIMEAPE
	tr_mon 41, GOLDUCK
	tr_mon 41, TAUROS
	end_trainer


SECTION "ArtistGroup", ROMX
ArtistGroup:

	def_trainer_class ARTIST

	def_trainer REINA, "Reina"
	tr_mon 55, MR__MIME
	tr_mon 55, SUDOWOODO
	end_trainer


SECTION "AromaLadyGroup", ROMX
AromaLadyGroup:

	def_trainer_class AROMA_LADY

	def_trainer HOLLY, "Holly"
	tr_mon 62, SUNFLORA
	tr_mon 62, SUNFLORA
	end_trainer


SECTION "SoldierGroup", ROMX
SoldierGroup:

	def_trainer_class SOLDIER


SECTION "WaiterGroup", ROMX
WaiterGroup:

	def_trainer_class WAITER


SECTION "WaitressGroup", ROMX
WaitressGroup:

	def_trainer_class WAITRESS


SECTION "SightseerMGroup", ROMX
SightseerMGroup:

	def_trainer_class SIGHTSEERM

	def_trainer JASKA, "Jaska"
	tr_mon 50, BULBASAUR
	end_trainer


SECTION "SightseerFGroup", ROMX
SightseerFGroup:

	def_trainer_class SIGHTSEERF

	def_trainer KAMILA, "Kamila"
	tr_mon 50, BULBASAUR
	end_trainer


SECTION "SightseersGroup", ROMX
SightseersGroup:

	def_trainer_class SIGHTSEERS

	def_trainer LIANDSU1, "Li & Su"
	tr_mon 54, MAGMORTAR, MALE
	tr_mon 54, ELECTIVIRE, FEMALE
	end_trainer

	def_trainer LIANDSU2, "Li & Su"
	tr_mon 54, ELECTIVIRE, FEMALE
	tr_mon 54, MAGMORTAR, MALE
	end_trainer


SECTION "CooltrainerMGroup", ROMX
CooltrainerMGroup:

	def_trainer_class COOLTRAINERM

; Placeholder
	def_trainer KEVIN, "Kevin"
	tr_mon 20, RATICATE
	end_trainer

; Celadon University Classroom 4 (To be given a team later)
	def_trainer COOLTRAINERM_RAYMOND, "Raymond"
	tr_mon 20, RATICATE
	end_trainer

; Celadon University Cafeteria (To be given a team later)
	def_trainer COOLTRAINERM_COREY, "Corey"
	tr_mon 20, RATICATE
	end_trainer

; Celadon University Pool (To be given a team later)
	def_trainer FERGUS, "Fergus"
	tr_mon 20, RATICATE
	end_trainer

; Unused Phone Trainer
	def_trainer GAVEN1, "Gaven"
	tr_mon 39, VICTREEBEL
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 39, KINGLER
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 39, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer GAVEN2, "Gaven"
	tr_mon 41, VICTREEBEL
		tr_moves WRAP, TOXIC, ACID, RAZOR_LEAF
	tr_mon 41, KINGLER
		tr_moves BUBBLE_BEAM, STOMP, DIG, PROTECT
	tr_mon 41, FLAREON
		tr_moves MUD_SLAP, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer

	def_trainer GAVEN3, "Gaven"
	tr_mon 45, VICTREEBEL
		tr_moves GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	tr_mon 45, KINGLER @ KINGS_ROCK
		tr_moves SURF, STOMP, DIG, BLIZZARD
	tr_mon 45, FLAREON
		tr_moves FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_trainer


SECTION "CooltrainerFGroup", ROMX
CooltrainerFGroup:

	def_trainer_class COOLTRAINERF

; Celadon University Lounge (To be given a team later)
	def_trainer NEESHA, "Neesha"
	tr_mon 20, RATICATE
	end_trainer

; Unused Phone Trainers
	def_trainer BETH1, "Beth"
	tr_mon 40, RAPIDASH
		tr_moves STOMP, FIRE_SPIN, PLAY_ROUGH, AGILITY
	tr_mon 39, FLAAFFY
		tr_moves SWIFT, THUNDERSHOCK, THUNDER_WAVE, LIGHT_SCREEN
	end_trainer

	def_trainer BETH2, "Beth"
	tr_mon 45, RAPIDASH
		tr_moves STOMP, FIRE_SPIN, PLAY_ROUGH, AGILITY
	tr_mon 44, AMPHAROS
if DEF(FAITHFUL)
		tr_moves THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, SWIFT
else
		tr_moves THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, DRAGON_PULSE
endc
	end_trainer

	def_trainer BETH3, "Beth"
	tr_mon 49, RAPIDASH @ FOCUS_BAND
		tr_moves STOMP, FIRE_SPIN, PLAY_ROUGH, FIRE_BLAST
	tr_mon 48, AMPHAROS
if DEF(FAITHFUL)
		tr_moves THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, SWIFT
else
		tr_moves THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, DRAGON_PULSE
endc
	end_trainer

	def_trainer REENA1, "Reena"
	tr_mon 37, ARCANINE
	tr_mon 40, NIDOQUEEN
	tr_mon 38, STARMIE
	end_trainer

	def_trainer REENA2, "Reena"
	tr_mon 41, ARCANINE
	tr_mon 44, NIDOQUEEN
	tr_mon 42, STARMIE
	end_trainer

	def_trainer REENA3, "Reena"
	tr_mon 45, ARCANINE
		tr_moves BITE, LEER, TAKE_DOWN, FLAME_CHARGE
	tr_mon 48, NIDOQUEEN @ SILK_SCARF
		tr_moves EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	tr_mon 46, STARMIE
		tr_moves BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	end_trainer


SECTION "AceDuoGroup", ROMX
AceDuoGroup:

	def_trainer_class ACE_DUO

	def_trainer ELANANDIDA1, "Elan & Ida"
	tr_mon 65, PORYGON2, MALE
	tr_mon 65, AZUMARILL, FEMALE
	end_trainer

	def_trainer ELANANDIDA2, "Elan & Ida"
	tr_mon 65, AZUMARILL, FEMALE
	tr_mon 65, PORYGON2, MALE
	end_trainer


SECTION "VeteranMGroup", ROMX
VeteranMGroup:

	def_trainer_class VETERANM


SECTION "VeteranFGroup", ROMX
VeteranFGroup:

	def_trainer_class VETERANF


SECTION "ProtonGroup", ROMX
ProtonGroup:

	def_trainer_class ADMIN_PROTON

; Mt. Moon (NEW) -- Boss battle; Maybe replace one Grunt?
	def_trainer 1, "Proton"
	tr_mon 12, ZUBAT, MALE
	tr_mon 12, KOFFING, MALE
	end_trainer


SECTION "PetrelGroup", ROMX
PetrelGroup:

	def_trainer_class ADMIN_PETREL

; Route 24: Nugget Bridge (NEW) -- Replace the generic grunt
	def_trainer 1, "Petrel"
	tr_mon 15, EKANS		; from FRLG trainer; Better than a Rattata for Petrel.
	tr_mon 15, ZUBAT
	tr_mon 15, KOFFING		; LGPE team member
	end_trainer


SECTION "ArcherGroup", ROMX
ArcherGroup:

	def_trainer_class ADMIN_ARCHER

; Celadon Rocket Hideout (LGPE) -- Leveled-down slightly
	def_trainer 1, "Archer"
	tr_mon 31, WEEZING, MALE
	tr_mon 31, GOLBAT, MALE
	end_trainer


SECTION "ArianaGroup", ROMX
ArianaGroup:

	def_trainer_class ADMIN_ARIANA

; Safari Zone Entrance (NEW) -- Might add Grunts? Not sure.
	def_trainer 1, "Ariana"
	tr_mon 40, MUK, MALE
	tr_mon 40, ARBOK, MALE
	tr_mon 40, VILEPLUME, MALE
	end_trainer


SECTION "GiovanniGroup", ROMX
GiovanniGroup:

	def_trainer_class GIOVANNI

	def_trainer GIOVANNI1, "Giovanni"
	tr_mon 23, PERSIAN, MALE
	tr_mon 24, RHYHORN, MALE
	tr_mon 25, ONIX, MALE
	tr_mon 27, KANGASKHAN, FEMALE
	end_trainer

	def_trainer GIOVANNI2, "Giovanni"
	tr_mon 35, PERSIAN, MALE
	tr_mon 36, NIDORINO, MALE
	tr_mon 36, NIDOQUEEN, FEMALE
	tr_mon 37, RHYHORN, MALE
	tr_mon 40, KANGASKHAN, FEMALE
	end_trainer

	def_trainer GIOVANNI3, "Giovanni"
	tr_mon 50, PERSIAN, MALE
	tr_mon 51, DUGTRIO, MALE
	tr_mon 53, NIDOQUEEN, FEMALE
	tr_mon 55, NIDOKING, MALE
	tr_mon 55, RHYDON, MALE
	end_trainer

; Store this for later
;	tr_mon LEVEL_FROM_BADGES + 24, "?????", MEWTWO @ ARMOR_SUIT, MALE | MEWTWO_ARMORED_FORM
;		tr_extra INSOMNIA, SATK_UP_ATK_DOWN
;		tr_moves SHADOW_BALL, PSYSTRIKE, NASTY_PLOT, AURA_SPHERE
;	end_trainer


SECTION "ProfOakGroup", ROMX
ProfOakGroup:

	def_trainer_class PROF_OAK
	def_trainer 1, "Oak"
	tr_mon 78, TAUROS @ CHOICE_SCARF, MALE
		tr_extra ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DOUBLE_EDGE, EARTHQUAKE, ZEN_HEADBUTT, STONE_EDGE
	tr_mon 76, DODRIO @ BERSERK_GENE, FEMALE
		tr_extra TANGLED_FEET, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves BRAVE_BIRD, HI_JUMP_KICK, KNOCK_OFF, BODY_SLAM
	tr_mon 80, VENUSAUR @ BIG_ROOT, FEMALE
		tr_extra DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves GIGA_DRAIN, PROTECT, LEECH_SEED, HEALINGLIGHT
	tr_mon 80, CHARIZARD @ LIFE_ORB, MALE
if !DEF(FAITHFUL)
		tr_extra TOUGH_CLAWS, SPE_UP_SATK_DOWN
else
		tr_extra DROUGHT, SPE_UP_SATK_DOWN
endc
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, DRAGON_CLAW, CRUNCH, DRAGON_DANCE
	tr_mon 80, BLASTOISE @ WHITE_HERB, MALE
		tr_extra SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves WATERFALL, IRON_HEAD, CLOSE_COMBAT, SHELL_SMASH
	tr_mon 82, NIDOKING @ LIFE_ORB, MALE
		tr_extra SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves POISON_JAB, EARTHQUAKE, ICE_PUNCH, THUNDERPUNCH
	end_trainer


SECTION "ProfElmGroup", ROMX
ProfElmGroup:

	def_trainer_class PROF_ELM
	def_trainer 1, "Elm"
	tr_mon LEVEL_FROM_BADGES + 3, HOOTHOOT
	tr_mon LEVEL_FROM_BADGES + 4, JIGGLYPUFF
	tr_mon LEVEL_FROM_BADGES + 5, CYNDAQUIL
	tr_mon LEVEL_FROM_BADGES + 5, CHIKORITA
	tr_mon LEVEL_FROM_BADGES + 5, TOTODILE
	end_trainer

	def_trainer 2, "Elm"
	tr_mon LEVEL_FROM_BADGES + 3, AIPOM
	tr_mon LEVEL_FROM_BADGES + 4, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 5, QUILAVA
	tr_mon LEVEL_FROM_BADGES + 5, BAYLEEF
	tr_mon LEVEL_FROM_BADGES + 5, CROCONAW
	end_trainer

	def_trainer 3, "Elm"
	tr_mon LEVEL_FROM_BADGES + 4, AMBIPOM
	tr_mon LEVEL_FROM_BADGES + 5, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 6, TYPHLOSION
	tr_mon LEVEL_FROM_BADGES + 6, MEGANIUM
	tr_mon LEVEL_FROM_BADGES + 6, FERALIGATR
	end_trainer

	def_trainer 4, "Elm"
	tr_mon LEVEL_FROM_BADGES + 7, AMBIPOM
	tr_mon LEVEL_FROM_BADGES + 8, WIGGLYTUFF
	tr_mon LEVEL_FROM_BADGES + 8, HERACROSS
	tr_mon LEVEL_FROM_BADGES + 9, TYPHLOSION
	tr_mon LEVEL_FROM_BADGES + 9, MEGANIUM
	tr_mon LEVEL_FROM_BADGES + 9, FERALIGATR
	end_trainer


SECTION "ProfIvyGroup", ROMX
ProfIvyGroup:

	def_trainer_class PROF_IVY
	def_trainer 1, "Ivy"
	tr_mon 65, BUTTERFREE @ FOCUS_SASH, FEMALE
		tr_extra COMPOUND_EYES, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 164 SAt
		tr_moves SLEEP_POWDER, BUG_BUZZ, AIR_SLASH, PSYCHIC_M
	tr_mon 64, POLITOED @ DAMP_ROCK, FEMALE
		tr_extra DRIZZLE, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 164 HP
		tr_moves SCALD, GIGA_DRAIN, ICE_BEAM, FOCUS_BLAST
	tr_mon 64, VICTREEBEL @ SITRUS_BERRY, FEMALE
		tr_extra GLUTTONY, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 164 HP
		tr_moves SUBSTITUTE, SLEEP_POWDER, GIGA_DRAIN, SLUDGE_BOMB
	tr_mon 63, RHYPERIOR @ CUSTAP_BERRY, FEMALE
		tr_extra SOLID_ROCK, DEF_UP_SATK_DOWN
		tr_evs 252 Atk, 164 HP
		tr_moves STONE_EDGE, EARTHQUAKE, IRON_HEAD, ENDURE
	tr_mon 63, NIDOQUEEN @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 164 SAt
		tr_moves SLUDGE_BOMB, EARTH_POWER, ICE_BEAM, THUNDER
	tr_mon 66, GYARADOS @ LEFTOVERS, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 164 Atk
		tr_moves WATERFALL, STONE_EDGE, EARTHQUAKE, DRAGON_DANCE
	end_trainer


SECTION "MysticalmanGroup", ROMX
MysticalmanGroup:

	def_trainer_class MYSTICALMAN
	def_trainer EUSINE, "Eusine"
	tr_mon 27, DROWZEE @ EVIOLITE, MALE
		tr_extra INSOMNIA
		tr_evs 160 HP
		tr_moves DREAM_EATER, HYPNOSIS, DISABLE, PSYBEAM
	tr_mon 27, HAUNTER @ SPELL_TAG, MALE
		tr_extra LEVITATE
		tr_evs 80 SAt, 80 Spe
		tr_moves SHADOW_BALL, HYPNOSIS, CONFUSE_RAY, CURSE
	tr_mon 28, ELECTRODE @ MAGNET, MALE
		tr_extra AFTERMATH, SHINY
		tr_evs 160 SAt
		tr_moves THUNDER, SCREECH, SONIC_BOOM, ROLLOUT
	tr_mon 29, ALAKAZAM @ TWISTEDSPOON, MALE
		tr_extra SYNCHRONIZE
		tr_evs 160 SAt
		tr_moves REFLECT, LIGHT_SCREEN, HP_FIGHTING, PSYBEAM
	end_trainer


SECTION "KarateKingGroup", ROMX
KarateKingGroup:

	def_trainer_class KARATE_KING

	def_trainer KOICHI, "Koichi"
	tr_mon LEVEL_FROM_BADGES + 11, HITMONLEE @ BLACK_BELT
		tr_moves BULK_UP, FOCUS_ENERGY, HI_JUMP_KICK, FORESIGHT
	tr_mon LEVEL_FROM_BADGES + 11, HITMONCHAN @ KINGS_ROCK
		tr_moves THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	end_trainer


SECTION "TowerTycoonGroup", ROMX
TowerTycoonGroup:

	; unused
	def_trainer_class TOWERTYCOON
	def_trainer 1, "Palmer"
	end_trainer

	def_trainer 2, "Palmer"
	tr_mon 74, GYARADOS @ LEFTOVERS, MALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, WATERFALL, CRUNCH, EARTHQUAKE
	tr_mon 74, RHYPERIOR @ CUSTAP_BERRY, MALE
		tr_extra SOLID_ROCK, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, ENDURE, ICE_PUNCH
	tr_mon 75, DRAGONITE @ DAMP_ROCK, MALE
		tr_extra MULTISCALE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HURRICANE, DRAGON_PULSE, RAIN_DANCE, SURF
	tr_mon 73, ALAKAZAM @ FOCUS_SASH, MALE
		tr_extra MAGIC_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves PSYCHIC_M, SHADOW_BALL, FOCUS_BLAST, COUNTER
	tr_mon 73, SNORLAX @ FIGY_BERRY, MALE
		tr_extra GLUTTONY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves BELLY_DRUM, BODY_SLAM, EARTHQUAKE, CRUNCH
	tr_mon 72, HERACROSS @ SALAC_BERRY, MALE
		tr_extra MOXIE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves MEGAHORN, CLOSE_COMBAT, EARTHQUAKE, ENDURE
	end_trainer


SECTION "FactoryHeadGroup", ROMX
FactoryHeadGroup:

	def_trainer_class FACTORYHEAD
	def_trainer 1, "Thorton"
	end_trainer

	def_trainer 2, "Thorton"
	end_trainer


SECTION "JessieJamesGroup", ROMX
JessieJamesGroup:

	def_trainer_class JESSIE_JAMES

; Viridian Forest (NEW)
	def_trainer 1, "& James"
	tr_mon 10, MEOWTH, MALE
	tr_mon 10, BULBASAUR, MALE
	end_trainer

; Mt. Moon (Y)
	def_trainer 2, "& James"
	tr_mon 14, EKANS, MALE
	tr_mon 14, KOFFING, MALE
	tr_mon 14, MEOWTH, MALE
	end_trainer

; Rocket Hideout (Y)
	def_trainer 3, "& James"
	tr_mon 25, EKANS, MALE
	tr_mon 25, KOFFING, MALE
	tr_mon 25, MEOWTH, MALE
	end_trainer

; Pokemon Tower (Y) - Levels bumped up by one
	def_trainer 4, "& James"
	tr_mon 28, EKANS, MALE
	tr_mon 28, KOFFING, MALE
	tr_mon 28, MEOWTH, MALE
	end_trainer

; Silph Co (Y) - Levels bumped up by one
	def_trainer 5, "& James"
	tr_mon 32, ARBOK, MALE
	tr_mon 32, WEEZING, MALE
	tr_mon 32, MEOWTH, MALE
	end_trainer

; Add two or three more battles as preludes to the legendary birds

; Route 17 (LGPE) - POSTGAME EXCLUSIVE; Levels bumped up by three
	def_trainer 6, "& James"
	tr_mon 55, ARBOK, MALE
	tr_mon 55, WEEZING, MALE
	tr_mon 55, MEOWTH, MALE
	end_trainer


SECTION "LoreleiGroup", ROMX
LoreleiGroup:

	def_trainer_class LORELEI
	def_trainer 1, "Lorelei"
	tr_mon 39, GLACEON, FEMALE
		tr_extra ICE_BODY
		tr_evs 240 SAt
		tr_moves ICE_BEAM, HAIL, WATER_PULSE, MIRROR_COAT
	tr_mon 41, DEWGONG, FEMALE
		tr_extra THICK_FAT
		tr_evs 240 HP
		tr_moves WATERFALL, AURORA_BEAM, SLEEP_TALK, REST
	tr_mon 40, CLOYSTER, FEMALE
		tr_extra SHELL_ARMOR
		tr_evs 240 Atk
		tr_moves DEFENSE_CURL, ROLLOUT, AURORA_BEAM, EXPLOSION
	tr_mon 41, SLOWBRO, FEMALE
		tr_extra OWN_TEMPO
		tr_evs 240 HP
		tr_moves PSYCHIC_M, WATER_PULSE, HEADBUTT, DISABLE
	tr_mon 44, JYNX @ SITRUS_BERRY, FEMALE
		tr_extra OBLIVIOUS
		tr_evs 240 SAt
		tr_moves DRAINING_KISS, SING, ICY_WIND, PETAL_DANCE
	tr_mon 43, LAPRAS, FEMALE
		tr_extra WATER_ABSORB
		tr_evs 120 SAt, 120 HP
		tr_moves ICE_BEAM, ANCIENTPOWER, CONFUSE_RAY, SURF
	end_trainer

	def_trainer 2, "Lorelei"
	tr_mon 73, DEWGONG @ LEFTOVERS, FEMALE
		tr_extra THICK_FAT, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SURF, ICE_BEAM, REST, SLEEP_TALK
	tr_mon 72, CLOYSTER @ ASSAULT_VEST, FEMALE
		tr_extra SKILL_LINK, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 SDf, 252 Spe
		tr_moves EXPLOSION, ROCK_BLAST, ICICLE_SPEAR, ICE_SHARD
	tr_mon 73, SLOWBRO @ ROCKY_HELMET, FEMALE
		tr_extra REGENERATOR, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves PSYCHIC_M, SURF, RECOVER, CALM_MIND
if DEF(FAITHFUL)
	tr_mon 72, GLACEON @ LEFTOVERS, FEMALE
		tr_extra ICE_BODY, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves ICE_BEAM, CALM_MIND, REST, SLEEP_TALK
else
	tr_mon 72, GLACEON @ ICY_ROCK, FEMALE
		tr_extra SNOW_WARNING, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves BLIZZARD, EARTH_POWER, SHADOW_BALL, HAIL
endc
	tr_mon 75, JYNX @ FOCUS_SASH, FEMALE
		tr_extra DRY_SKIN, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SING, NASTY_PLOT, ICE_BEAM, PSYCHIC_M
	tr_mon 74, LAPRAS @ WHITE_HERB, FEMALE
		tr_extra WATER_ABSORB, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves ICE_BEAM, SURF, SHELL_SMASH, PSYCHIC_M
	end_trainer

	def_trainer 3, "Lorelei"
	tr_mon 58, DEWGONG @ LEFTOVERS, FEMALE
		tr_extra THICK_FAT, SDEF_UP_SPE_DOWN
		tr_evs 160 HP, 160 SDf
		tr_moves AQUA_TAIL, ICE_BEAM, REST, SLEEP_TALK
	tr_mon 57, CLOYSTER @ SILK_SCARF, FEMALE
		tr_extra SHELL_ARMOR, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 68 Spe
		tr_moves EXPLOSION, ROLLOUT, ICICLE_CRASH, WATERFALL
	tr_mon 58, SLOWBRO @ TWISTEDSPOON, FEMALE
		tr_extra OWN_TEMPO, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 68 SAt
		tr_moves PSYCHIC_M, SURF, ICE_BEAM, CALM_MIND
	tr_mon 56, GLACEON @ NEVERMELTICE, FEMALE
		tr_extra ICE_BODY, SATK_UP_ATK_DOWN
		tr_evs 68 Atk, 252 SAt
		tr_moves ICE_BEAM, HAIL, HYPER_VOICE, MIRROR_COAT
	tr_mon 60, JYNX @ FAIRYFEATHER, FEMALE
		tr_extra OBLIVIOUS, SPE_UP_ATK_DOWN
		tr_evs 68 SAt, 252 Spe
		tr_moves DRAINING_KISS, NASTY_PLOT, ICE_BEAM, PSYCHIC_M
	tr_mon 59, LAPRAS @ CHESTO_BERRY, FEMALE
		tr_extra WATER_ABSORB, SATK_UP_ATK_DOWN
		tr_evs 160 HP, 80 SAt, 80 Spe
		tr_moves ICE_BEAM, ANCIENTPOWER, REST, SURF
	end_trainer


SECTION "AgathaGroup", ROMX
AgathaGroup:

	def_trainer_class AGATHA
	def_trainer 1, "Agatha"
	tr_mon 62, GENGAR @ SPELL_TAG, FEMALE
		tr_extra CURSED_BODY
		tr_evs 108 SAt, 252 Spe
		tr_moves SHADOW_BALL, WILL_O_WISP, CURSE, DESTINY_BOND
	tr_mon 62, CROBAT @ POISON_BARB, FEMALE
		tr_extra INNER_FOCUS
		tr_evs 252 Atk, 108 Spe
		tr_moves BRAVE_BIRD, CRUNCH, X_SCISSOR, POISON_JAB
	tr_mon 61, MISDREAVUS @ EVIOLITE, FEMALE
		tr_extra LEVITATE
		tr_evs 252 HP, 108 SAt
		tr_moves SHADOW_BALL, DAZZLINGLEAM, FLAMETHROWER, POWER_GEM
if DEF(FAITHFUL)
		tr_mon 61, MUK @ BLACK_SLUDGE, FEMALE
		tr_extra STENCH
		tr_evs 252 HP, 108 Spe
		tr_moves SHADOW_CLAW, GUNK_SHOT, SCREECH, MINIMIZE
else
	tr_mon 61, MAROWAK @ THICK_CLUB, FEMALE | ALOLAN_FORM
		tr_extra LIGHTNING_ROD
		tr_evs 108 Atk, 252 Spe
		tr_moves SWORDS_DANCE, BONEMERANG, FIRE_PUNCH, SHADOW_CLAW
endc
	tr_mon 63, ARBOK @ KINGS_ROCK, FEMALE | ARBOK_AGATHA_FORM
		tr_extra INTIMIDATE
		tr_evs 108 SAt, 252 Spe
		tr_moves SLUDGE_BOMB, GLARE, CRUNCH, BODY_SLAM
	tr_mon 65, GENGAR @ QUICK_CLAW, FEMALE
		tr_extra CURSED_BODY
		tr_evs 108 SAt, 252 Spe
		tr_moves SHADOW_BALL, THUNDERBOLT, WILL_O_WISP, DESTINY_BOND
	end_trainer

	def_trainer 2, "Agatha"
	tr_mon 73, GENGAR @ LEFTOVERS, FEMALE
		tr_extra CURSED_BODY, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HEX, WILL_O_WISP, FOCUS_BLAST, DESTINY_BOND
	tr_mon 73, CROBAT @ CHOICE_BAND, FEMALE
		tr_extra INFILTRATOR, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves BRAVE_BIRD, CRUNCH, U_TURN, POISON_JAB
	tr_mon 72, MISMAGIUS @ LIFE_ORB, FEMALE
		tr_extra LEVITATE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves SHADOW_BALL, DAZZLINGLEAM, FLAMETHROWER, THUNDERBOLT
	tr_mon 72, TYPHLOSION @ FOCUS_SASH, FEMALE | HISUIAN_FORM
		tr_extra FRISK, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FLAMETHROWER, HEX, WILL_O_WISP, FOCUS_BLAST
	tr_mon 74, ARBOK @ KINGS_ROCK, FEMALE | ARBOK_AGATHA_FORM
		tr_extra INTIMIDATE
		tr_moves SLUDGE_BOMB, GLARE, CRUNCH, BODY_SLAM
	tr_mon 75, GENGAR @ CHOICE_SPECS, FEMALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SHADOW_BALL, FOCUS_BLAST, SLUDGE_BOMB, THUNDERBOLT
	end_trainer


SECTION "StevenGroup", ROMX
StevenGroup:

	def_trainer_class STEVEN
	def_trainer 1, "Steven"
	tr_mon 61, SKARMORY @ LEFTOVERS, MALE
		tr_extra STURDY
		tr_evs 252 HP, 164 Def
		tr_moves SPIKES, SCREECH, DRILL_PECK, STEEL_WING
	tr_mon 60, FORRETRESS @ ROCKY_HELMET, MALE
		tr_extra STURDY
		tr_evs 252 HP, 164 Atk
		tr_moves EARTHQUAKE, GYRO_BALL, EXPLOSION, SPIKES
if DEF(FAITHFUL)
	tr_mon 58, MAGNEZONE @ WISE_GLASSES
		tr_extra STURDY
		tr_evs 252 HP, 164 SAt
		tr_moves THUNDERBOLT, FLASH_CANNON, TRI_ATTACK, EXPLOSION
else
	tr_mon 58, BLASTOISE @ WISE_GLASSES, MALE
		tr_extra TORRENT
		tr_evs 252 HP, 164 SAt
		tr_moves SURF, ICE_BEAM, FLASH_CANNON, AURA_SPHERE
endc
	tr_mon 58, SANDSLASH @ NEVERMELTICE, MALE | ALOLAN_FORM
		tr_extra SNOW_CLOAK
		tr_evs 252 atk, 164 Spe
		tr_moves IRON_HEAD, ICICLE_CRASH, EARTHQUAKE, RAPID_SPIN
	tr_mon 58, AERODACTYL @ KINGS_ROCK, MALE
		tr_extra UNNERVE
		tr_evs 252 Spe, 164 Atk
		tr_moves ROCK_SLIDE, CRUNCH, AERIAL_ACE, IRON_HEAD
	tr_mon 62, STEELIX @ MUSCLE_BAND, MALE
		tr_extra SAND_FORCE
		tr_evs 252 HP, 164 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, IRON_HEAD, SANDSTORM
	end_trainer

	def_trainer 2, "Steven"
	tr_mon 78, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SPIKES, ROOST, STEEL_WING, DRILL_PECK
if DEF(FAITHFUL)
	tr_mon 77, FORRETRESS @ LEFTOVERS, MALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves EARTHQUAKE, GYRO_BALL, BUG_BITE, TOXIC_SPIKES
else
	tr_mon 76, RHYPERIOR @ LEFTOVERS, MALE
		tr_extra SOLID_ROCK, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, MEGAHORN, IRON_HEAD
endc
	tr_mon 76, SANDSLASH @ FOCUS_SASH, MALE | ALOLAN_FORM
		tr_extra SLUSH_RUSH, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves IRON_HEAD, ICICLE_CRASH, EARTHQUAKE, HAIL
	tr_mon 76, AERODACTYL @ CHOICE_BAND, MALE
		tr_extra ROCK_HEAD, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves ROCK_SLIDE, BRAVE_BIRD, EARTHQUAKE, IRON_HEAD
	tr_mon 80, STEELIX @ LIFE_ORB, MALE
		tr_extra SHEER_FORCE, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves BULLDOZE, ROCK_SLIDE, IRON_HEAD, CRUNCH
	end_trainer


SECTION "CynthiaGroup", ROMX
CynthiaGroup:

	def_trainer_class CYNTHIA
	def_trainer 1, "Cynthia"
	tr_mon 60, TOGEKISS @ WISE_GLASSES, FEMALE
		tr_extra SERENE_GRACE
		tr_evs 252 HP, 164 SAt
		tr_moves AIR_SLASH, AURA_SPHERE, ROOST, NASTY_PLOT
	tr_mon 58, LEAFEON @ MIRACLE_SEED, FEMALE
		tr_extra LEAF_GUARD
		tr_evs 252 Spe, 164 Atk
		tr_moves SWORDS_DANCE, SEED_BOMB, FACADE, IRON_TAIL
	tr_mon 58, ELECTIVIRE @ MUSCLE_BAND, FEMALE
		tr_extra MOTOR_DRIVE
		tr_evs 252 Spe, 164 Atk
		tr_moves CROSS_CHOP, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH
	tr_mon 58, YANMEGA @ WISE_GLASSES, FEMALE
		tr_extra SPEED_BOOST
		tr_evs 252 SAt, 164 Spe
if DEF(FAITHFUL)
		tr_moves PROTECT, BUG_BUZZ, AIR_SLASH, ANCIENTPOWER
else
		tr_moves PROTECT, BUG_BUZZ, DRAGON_PULSE, ANCIENTPOWER
endc
	tr_mon 62, URSALUNA @ LEFTOVERS, FEMALE
		tr_extra GUTS
		tr_evs 252 Atk, 164 HP
		tr_moves EARTHQUAKE, SHADOW_CLAW, PLAY_ROUGH, FACADE
	tr_mon 61, GLISCOR @ KINGS_ROCK, FEMALE
		tr_extra HYPER_CUTTER
		tr_evs 252 HP, 164 Atk
		tr_moves SWORDS_DANCE, NIGHT_SLASH, X_SCISSOR, EARTHQUAKE
	end_trainer

	def_trainer 2, "Cynthia"
	tr_mon 77, TOGEKISS @ LEFTOVERS, FEMALE
		tr_extra SERENE_GRACE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves AIR_SLASH, MOONBLAST, ROOST, THUNDER_WAVE
	tr_mon 76, LEAFEON @ LIFE_ORB, FEMALE
		tr_extra LEAF_GUARD, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, SEED_BOMB, DOUBLE_EDGE, IRON_TAIL
	tr_mon 76, ELECTIVIRE @ ASSAULT_VEST, FEMALE
		tr_extra MOTOR_DRIVE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 SDf, 252 Spe
		tr_moves CLOSE_COMBAT, THUNDERPUNCH, FIRE_PUNCH, ICE_PUNCH
	tr_mon 76, YANMEGA @ CHOICE_SPECS, FEMALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves BUG_BUZZ, AIR_SLASH, DRAGON_PULSE, SHADOW_BALL
	tr_mon 80, KINGDRA @ SCOPE_LENS, FEMALE
		tr_extra SNIPER, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FOCUS_ENERGY, DRAGON_PULSE, SURF, FLAMETHROWER
	tr_mon 78, GLISCOR @ TOXIC_ORB, FEMALE
		tr_extra POISON_HEAL, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, EARTHQUAKE, FLY, ROOST
	end_trainer


INCLUDE "data/trainers/psychic_inver.asm"


SECTION "CherylGroup", ROMX
CherylGroup:

	def_trainer_class CHERYL
	def_trainer 1, "Cheryl"
	tr_mon LEVEL_FROM_BADGES + 8, CHANSEY
		tr_evs 136 HP ; maybe 252 since these are "stat trainers"?
	tr_mon LEVEL_FROM_BADGES + 7, NIDORINA
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 4, CLEFABLE
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 6, AZUMARILL
		tr_evs 136 HP
	tr_mon LEVEL_FROM_BADGES + 5, WOBBUFFET
		tr_evs 136 HP
	end_trainer

	def_trainer 2, "Cheryl"
	tr_mon 60, BLISSEY @ LEFTOVERS, FEMALE
		tr_extra SERENE_GRACE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 36 Def
		tr_moves SEISMIC_TOSS, FRESH_SNACK, HEAL_BELL, TOXIC
	tr_mon 59, NIDOQUEEN @ SOFT_SAND, FEMALE
		tr_extra POISON_POINT, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 36 Atk
		tr_moves BODY_SLAM, EARTHQUAKE, POISON_JAB, ROCK_SLIDE
	tr_mon 56, CLEFABLE @ LIGHT_CLAY, FEMALE
		tr_extra CUTE_CHARM, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 36 Def
		tr_moves MOONBLAST, HEALINGLIGHT, REFLECT, LIGHT_SCREEN
	tr_mon 56, WIGGLYTUFF @ THROAT_SPRAY, FEMALE
		tr_extra CUTE_CHARM, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 36 SAt
		tr_moves SING, DISARM_VOICE, HYPER_VOICE, DISABLE
	tr_mon 58, AZUMARILL @ LEFTOVERS, FEMALE
		tr_extra SAP_SIPPER, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 36 SDf
		tr_moves SCALD, KNOCK_OFF, RAIN_DANCE, SCARY_FACE
	tr_mon 57, WOBBUFFET @ FOCUS_SASH, FEMALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 36 Spe
		tr_moves COUNTER, MIRROR_COAT, RECOVER, DESTINY_BOND
	end_trainer

	def_trainer 3, "Cheryl"
	tr_mon 75, BLISSEY @ FOCUS_BAND, FEMALE
		tr_extra SERENE_GRACE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SEISMIC_TOSS, FRESH_SNACK, HEAL_BELL, TOXIC
	tr_mon 74, NIDOQUEEN @ LIFE_ORB, FEMALE
		tr_extra SHEER_FORCE, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAtk
		tr_moves EARTH_POWER, SLUDGE_BOMB, ICE_BEAM, THUNDERBOLT
	tr_mon 71, CLEFABLE @ FLAME_ORB, FEMALE
		tr_extra MAGIC_GUARD, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 252 Def, 4 SDf
		tr_moves MOONBLAST, SUBSTITUTE, FLAMETHROWER, TRICK
	tr_mon 71, WIGGLYTUFF @ THROAT_SPRAY, FEMALE
		tr_extra COMPETITIVE, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 252 SAt, 4 Def
		tr_moves HYPER_VOICE, MOONBLAST, KNOCK_OFF, ICY_WIND
	tr_mon 73, AZUMARILL @ SITRUS_BERRY, FEMALE
		tr_extra HUGE_POWER, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves BELLY_DRUM, PLAY_ROUGH, WATERFALL, AQUA_JET
	tr_mon 72, WOBBUFFET @ FOCUS_SASH, FEMALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 252 Spe
		tr_moves COUNTER, MIRROR_COAT, RECOVER, DESTINY_BOND
	end_trainer


SECTION "RileyGroup", ROMX
RileyGroup:

	def_trainer_class RILEY
	def_trainer 1, "Riley"
	tr_mon 58, MACHAMP @ PUNCHINGLOVE, MALE
		tr_extra NO_GUARD, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 36 HP
		tr_moves DYNAMICPUNCH, KNOCK_OFF, STONE_EDGE, MACH_PUNCH
	tr_mon 57, DRAGONITE @ SITRUS_BERRY, MALE
		tr_extra INNER_FOCUS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 36 Spe
		tr_moves DRAGON_CLAW, AERIAL_ACE, WATERFALL, IRON_TAIL
	tr_mon 56, RHYPERIOR @ LOADED_DICE, MALE
		tr_extra RECKLESS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 36 HP
		tr_moves ROCK_BLAST, DOUBLE_EDGE, BULLDOZE, IRON_TAIL
	tr_mon 55, NIDOKING @ SOFT_SAND, MALE
		tr_extra POISON_POINT, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 36 Spe
		tr_moves EARTHQUAKE, POISON_JAB, MEGAHORN, TOXIC_SPIKES
	tr_mon 56, ELECTIVIRE @ LIGHT_CLAY, MALE
		tr_extra MOTOR_DRIVE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 36 Spe
		tr_moves THUNDERPUNCH, CROSS_CHOP, BULLDOZE, LIGHT_SCREEN
	tr_mon 55, MAMOSWINE @ ASSAULT_VEST, MALE
		tr_extra OBLIVIOUS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 36 Spe
		tr_moves ICICLE_CRASH, ROCK_SLIDE, BULLDOZE, ICE_SHARD
	end_trainer

	def_trainer 2, "Riley"
	tr_mon 75, MACHAMP @ FLAME_ORB, MALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 252 HP, 4 Def
		tr_moves CLOSE_COMBAT, STONE_EDGE, FACADE, MACH_PUNCH
	tr_mon 74, DRAGONITE @ CHOICE_BAND, MALE
		tr_extra INNER_FOCUS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 252 Spe, 4 Def
		tr_moves OUTRAGE, EARTHQUAKE, STONE_EDGE, EXTREMESPEED
	tr_mon 73, RHYPERIOR @ ASSAULT_VEST, MALE
		tr_extra SOLID_ROCK, SDEF_UP_SATK_DOWN
		tr_evs 252 Atk, 252 SDf, 4 HP
		tr_moves IRON_HEAD, STONE_EDGE, EARTHQUAKE, CLOSE_COMBAT
	tr_mon 72, NIDOKING @ LIFE_ORB, MALE
		tr_extra SHEER_FORCE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 252 Spe, 4 HP
		tr_moves FIRE_PUNCH, ROCK_SLIDE, POISON_JAB, THUNDERPUNCH
	tr_mon 73, ELECTIVIRE @ CHOICE_SCARF, MALE
		tr_extra MOTOR_DRIVE, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 252 Spe, 4 HP
		tr_moves WILD_CHARGE, CLOSE_COMBAT, ICE_PUNCH, EARTHQUAKE
	tr_mon 72, MAMOSWINE @ LOADED_DICE, MALE
		tr_extra THICK_FAT, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 252 Spe, 4 HP
		tr_moves ICICLE_SPEAR, ROCK_BLAST, EARTHQUAKE, ICE_SHARD
	end_trainer


SECTION "BuckGroup", ROMX
BuckGroup:

	def_trainer_class BUCK
	def_trainer 1, "Buck"
	tr_mon 65, UMBREON @ LEFTOVERS, MALE
if DEF(FAITHFUL)
		tr_extra SYNCHRONIZE, DEF_UP_SATK_DOWN
else
		tr_extra MAGIC_GUARD, DEF_UP_SATK_DOWN
endc
		tr_evs 252 Def, 36 HP
		tr_moves TOXIC, HEALINGLIGHT, CURSE, SUCKER_PUNCH
	tr_mon 64, GOLEM @ ASSAULT_VEST, MALE | ALOLAN_FORM
		tr_extra MAGNET_PULL, DEF_UP_SPE_DOWN
		tr_evs 252 Def, 36 SDf
		tr_moves THUNDERPUNCH, ROCK_SLIDE, FIRE_PUNCH, GYRO_BALL
	tr_mon 62, POLIWRATH @ DAMP_ROCK, MALE
		tr_extra SWIFT_SWIM, SPE_UP_SATK_DOWN
		tr_evs 252 Def, 36 Atk
if DEF(FAITHFUL)
		tr_moves RAIN_DANCE, WATERFALL, CROSS_CHOP, ICE_PUNCH
else
		tr_moves RAIN_DANCE, WATERFALL, BRICK_BREAK, ICE_PUNCH
endc
	tr_mon 63, FORRETRESS @ ROCKY_HELMET, MALE
		tr_extra STURDY, SDEF_UP_SATK_DOWN
		tr_evs 252 Def, 36 SDf
		tr_moves GYRO_BALL, SPIKES, LIGHT_SCREEN, VOLT_SWITCH
	tr_mon 62, SKARMORY @ RED_CARD, MALE
		tr_extra STURDY, SDEF_UP_SATK_DOWN
		tr_evs 252 Def, 36 HP
		tr_moves SPIKES, DRILL_PECK, ROAR, ROOST
	tr_mon 63, STEELIX @ BLUNDRPOLICY, MALE
		tr_extra STURDY, SPE_UP_SATK_DOWN
		tr_evs 252 Def, 36 Spe
		tr_moves IRON_TAIL, BULLDOZE, STONE_EDGE, CRUNCH
	end_trainer

	def_trainer 2, "Buck"
	tr_mon 75, GOLEM @ CHOICE_BAND, MALE | ALOLAN_FORM
		tr_extra GALVANIZE, DEF_UP_SATK_DOWN
		tr_evs 252 Def, 252 Atk, 4 HP
		tr_moves EXPLOSION, RETURN, STONE_EDGE, EARTHQUAKE
	tr_mon 72, POLIWRATH @ SITRUS_BERRY, MALE
		tr_extra SWIFT_SWIM, SPE_UP_SATK_DOWN
		tr_evs 252 Def, 156 Atk, 100 Spe
		tr_moves RAIN_DANCE, WATERFALL, CLOSE_COMBAT, AQUA_JET
	tr_mon 73, FORRETRESS @ LIGHT_CLAY, MALE
		tr_extra STURDY, SDEF_UP_SATK_DOWN
		tr_evs 252 Def, 156 HP, 100 SDf
		tr_moves GYRO_BALL, SPIKES, LIGHT_SCREEN, VOLT_SWITCH
	tr_mon 72, SKARMORY @ RED_CARD, MALE
		tr_extra STURDY, SDEF_UP_SATK_DOWN
		tr_evs 252 Def, 252 HP, 4 SDf
		tr_moves TOXIC, DRILL_PECK, ROAR, ROOST
	tr_mon 73, STEELIX @ WEAK_POLICY, MALE
		tr_extra STURDY, SDEF_UP_SATK_DOWN
		tr_evs 252 Def, 252 SDf, 4 HP
		tr_moves IRON_HEAD, EARTHQUAKE, ROCK_SLIDE, CURSE
	tr_mon 74, CLOYSTER @ WHITE_HERB, MALE
		tr_extra SHELL_ARMOR, SPE_UP_ATK_DOWN
		tr_evs 252 Def, 252 SAtk, 4 Spe
		tr_moves SHELL_SMASH, ICE_BEAM, HYDRO_PUMP, HP_GRASS
	end_trainer


SECTION "MarleyGroup", ROMX
MarleyGroup:

	def_trainer_class MARLEY
	def_trainer 1, "Marley"
	tr_mon LEVEL_FROM_BADGES + 8, ARCANINE
		tr_evs 240 Spe ; maybe 252 since these are "stat trainers"?
	tr_mon LEVEL_FROM_BADGES + 6, RAICHU
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 5, CROBAT
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 5, ELECTRODE
		tr_evs 240 Spe
	tr_mon LEVEL_FROM_BADGES + 7, WEAVILE
		tr_evs 240 Spe
	end_trainer

	def_trainer 2, "Marley"
	tr_mon 60, ARCANINE @ EJECT_BUTTON, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 36 Atk
		tr_moves FLAME_CHARGE, CRUNCH, EXTREMESPEED, WILL_O_WISP
	tr_mon 59, PIDGEOT @ SILK_SCARF, FEMALE
		tr_extra KEEN_EYE, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 36 Atk
		tr_moves DRILL_PECK, STEEL_WING, U_TURN, EXTREMESPEED
	tr_mon 58, RAICHU @ FOCUS_SASH, FEMALE
		tr_extra STATIC, SPE_UP_SDEF_DOWN
		tr_evs 252 Spe, 36 SAt
		tr_moves THUNDERBOLT, VOLT_SWITCH, KNOCK_OFF, EXTREMESPEED
	tr_mon 56, CROBAT @ BLACK_SLUDGE, FEMALE
		tr_extra INNER_FOCUS, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 36 HP
		tr_moves LEECH_LIFE, SLUDGE_BOMB, U_TURN, AIR_SLASH
	tr_mon 56, ELECTRODE @ CHOICE_SPECS, FEMALE
		tr_extra STATIC, SATK_UP_ATK_DOWN
		tr_evs 252 Spe, 36 SAt
		tr_moves THUNDERBOLT, VOLT_SWITCH, BUG_BUZZ, HP_GRASS
	tr_mon 58, AERODACTYL @ HARD_STONE, FEMALE
		tr_extra ROCK_HEAD, ATK_UP_SATK_DOWN
		tr_evs 252 Spe, 36 Atk
		tr_moves BRAVE_BIRD, ROCK_SLIDE, HONE_CLAWS, STEEL_WING
	end_trainer

	def_trainer 3, "Marley"
	tr_mon 75, ARCANINE @ EJECT_PACK, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 252 Atk, 4 HP
		tr_moves FLARE_BLITZ, CLOSE_COMBAT, WILD_CHARGE, DRAGON_DANCE
	tr_mon 74, PIDGEOT @ PETAYA_BERRY, FEMALE
		tr_extra NO_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 252 SAt, 4 HP
		tr_moves HURRICANE, FOCUS_BLAST, HYPER_BEAM, ENDURE
	tr_mon 73, RAICHU @ CHOICE_SPECS, FEMALE
		tr_extra LIGHTNING_ROD, SPE_UP_ATK_DOWN
		tr_evs 252 Spe, 252 SAt, 4 HP
		tr_moves THUNDERBOLT, VOLT_SWITCH, FOCUS_BLAST, HP_ICE
	tr_mon 71, CROBAT @ BLACK_SLUDGE, FEMALE
		tr_extra INNER_FOCUS, SPE_UP_SATK_DOWN
		tr_evs 252 Spe, 252 HP, 4 Def
		tr_moves SUPER_FANG, TOXIC, U_TURN, ROOST
	tr_mon 71, ELECTRODE @ LIGHT_CLAY, FEMALE
		tr_extra AFTERMATH, DEF_UP_ATK_DOWN
		tr_evs 252 Spe, 252 HP, 4 Def
		tr_moves THUNDERBOLT, EXPLOSION, REFLECT, LIGHT_SCREEN
	tr_mon 73, AERODACTYL @ LIFE_ORB, FEMALE
		tr_extra TOUGH_CLAWS, ATK_UP_SATK_DOWN
		tr_evs 252 Spe, 252 Atk, 4 HP
		tr_moves BRAVE_BIRD, STONE_EDGE, EARTHQUAKE, IRON_HEAD
	end_trainer


SECTION "MiraGroup", ROMX
MiraGroup:

	def_trainer_class MIRA
	def_trainer 1, "Mira"
	tr_mon 58, TOGEKISS @ LEFTOVERS, FEMALE
		tr_extra SUPER_LUCK, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 36 HP
		tr_moves DAZZLINGLEAM, AURA_SPHERE, AIR_SLASH, FRESH_SNACK
	tr_mon 57, ALAKAZAM @ RED_CARD, FEMALE
		tr_extra TRACE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 36 Spe
		tr_moves FUTURE_SIGHT, SUBSTITUTE, CALM_MIND, BATON_PASS
	tr_mon 56, MAGMORTAR @ BINDING_BAND, FEMALE
		tr_extra FLAME_BODY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 36 HP
		tr_moves FLAME_CHARGE, FIRE_SPIN, FLASH_CANNON, CONFUSE_RAY
	tr_mon 55, VILEPLUME @ PERSIM_BERRY, FEMALE
		tr_extra EFFECT_SPORE, DEF_UP_ATK_DOWN
		tr_evs 252 SAt, 36 HP
		tr_moves PETAL_DANCE, STUN_SPORE, HEALINGLIGHT, SLUDGE_BOMB
	tr_mon 56, MAGNEZONE @ MAGNET, FEMALE
		tr_extra MAGNET_PULL, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 36 HP
		tr_moves THUNDERBOLT, FLASH_CANNON, VOLT_SWITCH, HP_FIRE
	tr_mon 55, PORYGON_Z @ ROOM_SERVICE, FEMALE
		tr_extra DOWNLOAD, SATK_UP_SPE_DOWN
		tr_evs 252 SAt, 36 HP
		tr_moves TRI_ATTACK, TRICK_ROOM, AURORA_BEAM, NASTY_PLOT
	end_trainer

	def_trainer 2, "Mira"
	tr_mon 75, ALAKAZAM @ LIFE_ORB, FEMALE
		tr_extra MAGIC_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 252 Spe, 4 HP
		tr_moves PSYCHIC_M, SHADOW_BALL, CALM_MIND, BATON_PASS
	tr_mon 74, GENGAR @ FOCUS_SASH, FEMALE
		tr_extra SHADOW_TAG, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 252 Spe, 4 HP
		tr_moves SHADOW_BALL, SLUDGE_BOMB, DESTINY_BOND, NASTY_PLOT
	tr_mon 71, VILEPLUME @ BIG_ROOT, FEMALE
		tr_extra CHLOROPHYLL, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 252 Spe, 4 HP
		tr_moves GIGA_DRAIN, EARTH_POWER, SLUDGE_BOMB, SUNNY_DAY
	tr_mon 73, MAGMORTAR @ BLUNDRPOLICY, FEMALE
		tr_extra FLAME_BODY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 252 HP, 4 Spe
		tr_moves FIRE_BLAST, SUNNY_DAY, FOCUS_BLAST, WILL_O_WISP
	tr_mon 71, PORYGON_Z @ CHOICE_SCARF, FEMALE
		tr_extra ADAPTABILITY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 252 Spe, 4 HP
		tr_moves HYPER_BEAM, TRI_ATTACK, ICE_BEAM, THUNDERBOLT
	tr_mon 73, MAGNEZONE @ WEAK_POLICY, FEMALE
if DEF(FAITHFUL)
		tr_extra STURDY, SATK_UP_ATK_DOWN
else
		tr_extra LEVITATE, SATK_UP_ATK_DOWN
endc
		tr_evs 252 SAt, 252 HP, 4 Def
		tr_moves THUNDERBOLT, FLASH_CANNON, AGILITY, HP_FIRE
	end_trainer


SECTION "AnabelGroup", ROMX
AnabelGroup:

	def_trainer_class ANABEL
	def_trainer 1, "Anabel"
	tr_mon 30, ESPEON
		tr_evs 136 SDf
	tr_mon 28, SNORLAX
		tr_evs 136 SDf
	tr_mon 29, SLOWKING
		tr_evs 136 SDf
	tr_mon 27, BELLOSSOM
		tr_evs 136 SDf
	tr_mon 28, POLITOED
		tr_evs 136 SDf
	tr_mon 29, ALAKAZAM
		tr_evs 136 SDf
	end_trainer

	def_trainer 2, "Anabel"
	tr_mon 75, SLOWKING @ ROOM_SERVICE, FEMALE
		tr_extra OBLIVIOUS, DEF_UP_SPE_DOWN
		tr_evs 252 SDf, 252 HP, 4 SAt
		tr_moves SCALD, PSYCHIC_M, NASTY_PLOT, TRICK_ROOM
	tr_mon 74, SNORLAX @ LEFTOVERS, FEMALE
		tr_extra IMMUNITY, DEF_UP_SATK_DOWN
		tr_evs 252 SDf, 252 HP, 4 Def
		tr_moves GIGA_IMPACT, REST, SLEEP_TALK, CRUNCH
	tr_mon 73, BLASTOISE @ WHITE_HERB, FEMALE
		tr_extra MEGA_LAUNCHER, SATK_UP_ATK_DOWN
		tr_evs 252 SDf, 252 Spe, 4 SAt
		tr_moves WATER_PULSE, DARK_PULSE, FLASH_CANNON, SHELL_SMASH
	tr_mon 71, BELLOSSOM @ POWER_HERB, FEMALE
		tr_extra CHLOROPHYLL, DEF_UP_ATK_DOWN
		tr_evs 252 SDf, 252 HP, 4 SAt
		tr_moves SOLAR_BEAM, MOONBLAST, HEALINGLIGHT, EARTH_POWER
	tr_mon 72, POLITOED @ THROAT_SPRAY, FEMALE
		tr_extra DRIZZLE, DEF_UP_ATK_DOWN
		tr_evs 252 SDf, 252 HP, 4 Def
		tr_moves SCALD, GIGA_DRAIN, HYPER_VOICE, PERISH_SONG
	tr_mon 73, MR__MIME @ EVIOLITE, FEMALE
		tr_extra FILTER, DEF_UP_ATK_DOWN
		tr_evs 252 SDf, 252 HP, 4 Def
		tr_moves ICY_WIND, DAZZLINGLEAM, REFLECT, LIGHT_SCREEN
	end_trainer


SECTION "DarachGroup", ROMX
DarachGroup:

	def_trainer_class DARACH
	def_trainer 1, "Darach"
	tr_mon 58, NIDOQUEEN
	tr_mon 56, HERACROSS
if DEF(FAITHFUL)
	tr_mon 57, MACHAMP
	tr_mon 56, SKARMORY
else
	tr_mon 57, BLASTOISE
	tr_mon 56, FARFETCH_D
endc
	tr_mon 58, MISMAGIUS
	tr_mon 60, HOUNDOOM
	end_trainer


SECTION "CaitlinGroup", ROMX
CaitlinGroup:

	def_trainer_class UNK_CAITLIN
	def_trainer 1, "Caitlin"
	tr_mon 58, ESPEON
	tr_mon 56, XATU
	tr_mon 57, STARMIE
	tr_mon 56, JYNX
	tr_mon 58, ALAKAZAM
	tr_mon 60, HYPNO
	end_trainer


SECTION "CandelaGroup", ROMX
CandelaGroup:

	def_trainer_class CANDELA
	def_trainer 1, "Candela"
	tr_mon 63, FLAREON, FEMALE
if DEF(FAITHFUL)
		tr_extra FLASH_FIRE
else
		tr_extra DROUGHT
endc
		tr_evs 252 Spe, 132 Atk
		tr_moves FLARE_BLITZ, DOUBLE_EDGE, QUICK_ATTACK, DOUBLE_KICK
	tr_mon 62, MAGMAR, FEMALE
		tr_extra FLAME_BODY
		tr_evs 252 Spe, 132 SAt
		tr_moves FIRE_BLAST, FOCUS_BLAST, PSYCHIC, HP_ICE
	tr_mon 63, CHARIZARD, FEMALE
		tr_extra SOLAR_POWER
		tr_evs 252 Spe, 132 SAt
		tr_moves FIRE_BLAST, AIR_SLASH, DRAGON_PULSE, FOCUS_BLAST
	tr_mon 61, DRAGONITE, FEMALE
		tr_extra INNER_FOCUS
		tr_evs 132 Atk, 252 Spe
		tr_moves DRAGON_CLAW, FIRE_PUNCH, EARTHQUAKE, WING_ATTACK
	tr_mon 62, ARCANINE, FEMALE
		tr_extra INTIMIDATE
		tr_evs 132 Atk, 252 Spe
		tr_moves FLARE_BLITZ, OUTRAGE, WILD_CHARGE, EXTREMESPEED
	tr_mon 65, MOLTRES @ CHARCOAL, FEMALE
if DEF(FAITHFUL)
		tr_extra PRESSURE
else
		tr_extra DROUGHT
endc
		tr_evs 252 SAt, 132 Spe
		tr_moves FIRE_BLAST, AIR_SLASH, SOLAR_BEAM, SUNNY_DAY
	end_trainer


SECTION "BlancheGroup", ROMX
BlancheGroup:

	def_trainer_class BLANCHE
	def_trainer 1, "Blanche"
	tr_mon 63, VAPOREON, MALE
if DEF(FAITHFUL)
		tr_extra WATER_ABSORB
else
		tr_extra DRIZZLE
endc
		tr_evs 252 HP, 132 Def
		tr_moves SURF, ICE_BEAM, CALM_MIND, RECOVER
	tr_mon 62, LAPRAS, MALE
		tr_extra HYDRATION
		tr_evs 252 HP, 132 SAt
		tr_moves SURF, ICE_BEAM, RAIN_DANCE, REST
	tr_mon 63, BLASTOISE, MALE
		tr_extra RAIN_DISH
		tr_evs 252 HP, 132 Def
		tr_moves RAIN_DANCE, PROTECT, SURF, DEFENSE_CURL
	tr_mon 61, JYNX, FEMALE
		tr_extra DRY_SKIN
		tr_evs 252 Spe, 132 SAt
		tr_moves NASTY_PLOT, PROTECT, ICE_BEAM, PSYCHIC_M
	tr_mon 62, STARMIE
		tr_extra NATURAL_CURE
		tr_evs 252 Spe, 132 SAt
		tr_moves RECOVER, SURF, THUNDER_WAVE, PSYCHIC_M
	tr_mon 65, ARTICUNO @ NEVERMELTICE, FEMALE
if DEF(FAITHFUL)
		tr_extra PRESSURE
else
		tr_extra SNOW_WARNING
endc
		tr_evs 252 Spe, 132 HP
		tr_moves ICE_BEAM, AIR_SLASH, ROOST, REFLECT
	end_trainer


SECTION "SparkGroup", ROMX
SparkGroup:

	def_trainer_class SPARK_T
	def_trainer 1, "Spark"
	tr_mon 63, JOLTEON, MALE
if DEF(FAITHFUL)
		tr_extra VOLT_ABSORB
else
		tr_extra STATIC
endc
		tr_evs 252 SAt, 132 Spe
		tr_moves HP_ICE, THUNDERBOLT, SHADOW_BALL, DOUBLE_TEAM
	tr_mon 62, ELECTABUZZ, MALE
		tr_extra STATIC
		tr_evs 252 Atk, 132 Spe
		tr_moves THUNDERPUNCH, CROSS_CHOP, IRON_TAIL, BULK_UP
	tr_mon 63, VENUSAUR, MALE
		tr_extra CHLOROPHYLL
		tr_evs 252 SAt, 132 Spe
		tr_moves SUNNY_DAY, GROWTH, GIGA_DRAIN, HP_FIRE
	tr_mon 61, SNORLAX, MALE
		tr_extra THICK_FAT
		tr_evs 252 Def, 132 HP
		tr_moves BODY_SLAM, FIRE_PUNCH, CURSE, REST
	tr_mon 64, PIKACHU @ LIGHT_BALL, MALE | PIKACHU_SPARK_FORM
		tr_extra STATIC
		tr_evs 252 Spe, 132 SAt
		tr_moves THUNDER_WAVE, THUNDERBOLT, SURF, NASTY_PLOT
	tr_mon 65, ZAPDOS @ MAGNET, MALE
if DEF(FAITHFUL)
		tr_extra PRESSURE
else
		tr_extra DRIZZLE
endc
		tr_evs 252 Spe, 132 SAt
		tr_moves THUNDER, HURRICANE, RAIN_DANCE, ROOST
	end_trainer


SECTION "FlanneryGroup", ROMX
FlanneryGroup:

	def_trainer_class FLANNERY
	def_trainer 1, "Flannery"
	tr_mon 64, MAGCARGO, FEMALE
		tr_extra FLAME_BODY
		tr_evs 252 SAt, 172 Spe
		tr_moves EARTH_POWER, FLAMETHROWER, RECOVER, SHELL_SMASH
	tr_mon 63, ARCANINE, FEMALE
		tr_extra INTIMIDATE
		tr_evs 252 Atk, 172 Spe
		tr_moves FLARE_BLITZ, OUTRAGE, CRUNCH, EXTREMESPEED
	tr_mon 63, HOUNDOOM, FEMALE
		tr_extra EARLY_BIRD
		tr_evs 172 SAt, 252 Spe
		tr_moves FLAMETHROWER, DARK_PULSE, SUCKER_PUNCH, DESTINY_BOND
	tr_mon 63, RAPIDASH, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 252 Atk, 172 Spe
		tr_moves FLARE_BLITZ, PLAY_ROUGH, EXTREMESPEED, MEGAHORN
	tr_mon 61, NINETALES, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 172 SAt, 252 Spe
		tr_moves FIRE_BLAST, HEX, ENERGY_BALL, WILL_O_WISP
	tr_mon 66, MAGMORTAR, FEMALE
		tr_extra FLAME_BODY
		tr_evs 172 HP, 252 Spe
		tr_moves FLAMETHROWER, FOCUS_BLAST, THUNDERBOLT, PSYCHIC
	end_trainer

	def_trainer 2, "Flannery"
	tr_mon 74, MAGCARGO @ FOCUS_SASH, FEMALE
		tr_extra WEAK_ARMOR, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves EARTH_POWER, FLAMETHROWER, ANCIENTPOWER, SHELL_SMASH
	tr_mon 73, ARCANINE @ CHOICE_BAND, FEMALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, WILD_CHARGE, CLOSE_COMBAT, CRUNCH
	tr_mon 73, HOUNDOOM @ LEFTOVERS, FEMALE
		tr_extra SOLAR_POWER, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FLAMETHROWER, DARK_PULSE, SOLAR_BEAM, SUNNY_DAY
	tr_mon 73, RAPIDASH @ LIFE_ORB, FEMALE
		tr_extra FLAME_BODY, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, PLAY_ROUGH, WILD_CHARGE, MEGAHORN
	tr_mon 72, NINETALES @ HEAT_ROCK, FEMALE
		tr_extra DROUGHT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves FLAMETHROWER, SOLAR_BEAM, SHADOW_BALL, SUNNY_DAY
	tr_mon 75, MAGMORTAR @ ASSAULT_VEST, FEMALE
		tr_extra VITAL_SPIRIT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves FLAMETHROWER, FOCUS_BLAST, HP_ICE, THUNDERBOLT
	end_trainer


SECTION "MayleneGroup", ROMX
MayleneGroup:

	def_trainer_class MAYLENE
	def_trainer 1, "Maylene"
	tr_mon 59, HITMONTOP, MALE
		tr_extra TECHNICIAN
		tr_evs 140 Atk, 252 Spe
		tr_moves FEINT_ATTACK, DOUBLE_KICK, RAPID_SPIN, PURSUIT
	tr_mon 59, HITMONLEE, MALE
		tr_extra RECKLESS
		tr_evs 252 Atk, 140 Spe
		tr_moves HI_JUMP_KICK, DOUBLE_EDGE, BULK_UP, STONE_EDGE
	tr_mon 59, HITMONCHAN, MALE
		tr_extra IRON_FIST
		tr_evs 196 Atk, 196 Spe
		tr_moves DRAIN_PUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
if DEF(FAITHFUL)
	tr_mon 62, HERACROSS, FEMALE
		tr_extra MOXIE
		tr_evs 140 Atk, 252 Spe
		tr_moves ENDURE, MEGAHORN, REVERSAL, NIGHT_SLASH
	tr_mon 62, PRIMEAPE, FEMALE
		tr_extra ANGER_POINT
		tr_evs 140 Atk, 252 Spe ; faithful, so no Gorilla Tactics
		tr_moves CLOSE_COMBAT, OUTRAGE, GUNK_SHOT, FEINT_ATTACK
else
	tr_mon 62, ELECTIVIRE, FEMALE
		tr_extra MOTOR_DRIVE
		tr_evs 140 Atk, 252 Spe
		tr_moves THUNDERPUNCH, CLOSE_COMBAT, FIRE_PUNCH, GIGA_IMPACT
	tr_mon 62, MAGMORTAR, FEMALE
		tr_extra FLAME_BODY
		tr_evs 252 SAt, 140 Spe
		tr_moves FLAMETHROWER, FOCUS_BLAST, FLASH_CANNON, HYPER_BEAM
endc
	tr_mon 63, MACHAMP, FEMALE
		tr_extra NO_GUARD
		tr_evs 140 HP, 252 Atk
		tr_moves DYNAMICPUNCH, BULK_UP, KNOCK_OFF, MACH_PUNCH
	end_trainer

	def_trainer 2, "Maylene"
	tr_mon 72, HITMONTOP @ LEFTOVERS, MALE
		tr_extra INTIMIDATE, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves TOXIC, REST, SLEEP_TALK, HI_JUMP_KICK
	tr_mon 72, HITMONLEE @ CHOICE_BAND, MALE
		tr_extra RECKLESS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 SDf, 252 Spe
		tr_moves HI_JUMP_KICK, DOUBLE_EDGE, KNOCK_OFF, POISON_JAB
	tr_mon 72, HITMONCHAN @ PUNCHINGLOVE, MALE
		tr_extra IRON_FIST, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves DRAIN_PUNCH, MACH_PUNCH, ICE_PUNCH, FIRE_PUNCH
if DEF(FAITHFUL)
	tr_mon 73, HERACROSS @ FOCUS_SASH, FEMALE
		tr_extra MOXIE, SPE_UP_ATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves MEGAHORN, CLOSE_COMBAT, STONE_EDGE, KNOCK_OFF
	tr_mon 73, PRIMEAPE @ CHOICE_SCARF, FEMALE
		tr_extra DEFIANT, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves CLOSE_COMBAT, GUNK_SHOT, STONE_EDGE, U_TURN
else
	tr_mon 73, ELECTIVIRE @ CHOICE_SCARF, FEMALE
		tr_extra MOTOR_DRIVE, ATK_UP_SDEF_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves WILD_CHARGE, CLOSE_COMBAT, ICE_PUNCH, VOLT_SWITCH
	tr_mon 73, MAGMORTAR @ CHOICE_SPECS, FEMALE
		tr_extra FLAME_BODY, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FIRE_BLAST, THUNDERBOLT, FOCUS_BLAST, HP_ICE
endc
	tr_mon 75, MACHAMP @ FLAME_ORB, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves CLOSE_COMBAT, KNOCK_OFF, FACADE, MACH_PUNCH
	end_trainer


SECTION "MarlonGroup", ROMX
MarlonGroup:

	def_trainer_class UNK_MARLON
	def_trainer 1, "Marlon"
	tr_mon 27, QUAGSIRE, MALE
		tr_extra WATER_ABSORB
		tr_evs 200 SDf
		tr_moves RECOVER, RAIN_DANCE, SURF, BULLDOZE
	tr_mon 31, TENTACRUEL, MALE
		tr_extra LIQUID_OOZE
		tr_evs 200 Spe
		tr_moves BUBBLE_BEAM, POWER_WHIP, TOXIC, VENOSHOCK
	tr_mon 28, BLASTOISE, MALE
		tr_extra TORRENT
		tr_evs 200 HP
		tr_moves WATER_PULSE, PROTECT, RAIN_DANCE, RAPID_SPIN
	tr_mon 29, MANTINE, MALE
		tr_extra SWIFT_SWIM
		tr_evs 200 Def
		tr_moves WATER_PULSE, RAIN_DANCE, WING_ATTACK, AQUA_JET
	tr_mon 28, STARMIE
		tr_extra NATURAL_CURE
		tr_evs 200 SAt
		tr_moves PAIN_SPLIT, BUBBLE_BEAM, SWIFT, RAIN_DANCE
	end_trainer

	def_trainer 2, "Marlon"
	tr_mon 57, QUAGSIRE, MALE
		tr_extra WATER_ABSORB
		tr_evs 68 HP, 252 SDf
		tr_moves AQUA_TAIL, EARTHQUAKE, CURSE, RECOVER
	tr_mon 60, TENTACRUEL @ SITRUS_BERRY, MALE
		tr_extra LIQUID_OOZE
		tr_evs 68 SAt, 252 Spe
		tr_moves SCALD, SLUDGE_BOMB, ICE_BEAM, POWER_WHIP
	tr_mon 58, BLASTOISE, MALE
		tr_extra TORRENT
		tr_evs 252 HP, 68 SAt
		tr_moves SURF, FLASH_CANNON, ICE_BEAM, EARTHQUAKE
	tr_mon 59, MANTINE, MALE
		tr_extra WATER_ABSORB
		tr_evs 68 HP, 252 Def
		tr_moves SCALD, AIR_SLASH, ICE_BEAM, ROOST
	tr_mon 58, STARMIE
		tr_extra NATURAL_CURE
		tr_evs 252 SAt, 68 Spe
		tr_moves HYDRO_PUMP, ICE_BEAM, THUNDERBOLT, RECOVER
	tr_mon 57, CLOYSTER, MALE
		tr_extra SKILL_LINK
		tr_evs 252 Atk, 68 Spe
		tr_moves ICICLE_SPEAR, ROCK_BLAST, PIN_MISSILE, HYDRO_PUMP
	end_trainer

	def_trainer 3, "Marlon"
	tr_mon 72, CLOYSTER @ FOCUS_SASH, MALE
		tr_extra SKILL_LINK, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves ICICLE_SPEAR, ROCK_BLAST, SPIKES, EXPLOSION
	tr_mon 72, QUAGSIRE @ ROCKY_HELMET, MALE
		tr_extra UNAWARE, DEF_UP_SPE_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SCALD, ICE_BEAM, EARTHQUAKE, RECOVER
	tr_mon 75, TENTACRUEL @ BLACK_SLUDGE, MALE
		tr_extra LIQUID_OOZE, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 SAt, 252 Spe
		tr_moves SCALD, VENOSHOCK, ICE_BEAM, TOXIC
	tr_mon 73, BLASTOISE @ ASSAULT_VEST, MALE
		tr_extra MEGA_LAUNCHER, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 SAt
		tr_moves WATER_PULSE, DRAGON_PULSE, AURA_SPHERE, DARK_PULSE
	tr_mon 74, MANTINE @ LEFTOVERS, MALE
		tr_extra WATER_ABSORB, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SCALD, TOXIC, ROOST, AIR_SLASH
	tr_mon 73, STARMIE @ LIFE_ORB
		tr_extra ANALYTIC, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves HYDRO_PUMP, PSYCHIC_M, ICE_BEAM, THUNDERBOLT
	end_trainer


SECTION "ValerieGroup", ROMX
ValerieGroup:

	def_trainer_class UNK_VALERIE
	def_trainer 1, "Valerie"
	tr_mon 37, CLEFABLE, FEMALE
		tr_extra CUTE_CHARM
		tr_evs 224 HP
		tr_moves DISARM_VOICE, MINIMIZE, BATON_PASS, METRONOME
	tr_mon 37, MR__MIME, FEMALE
		tr_extra FILTER
		tr_evs 224 HP
		tr_moves PSYBEAM, CONFUSE_RAY, LIGHT_SCREEN, REFLECT
	tr_mon 36, AZUMARILL, FEMALE
		tr_extra HUGE_POWER
		tr_evs 224 Atk
		tr_moves PLAY_ROUGH, AQUA_TAIL, DIZZY_PUNCH, ROLLOUT
	tr_mon 38, TOGETIC, FEMALE
		tr_extra SERENE_GRACE
		tr_evs 224 SAt
		tr_moves ANCIENTPOWER, FRESH_SNACK, DAZZLINGLEAM, ENCORE
	tr_mon 40, SYLVEON @ SITRUS_BERRY, FEMALE
		tr_extra CUTE_CHARM
		tr_evs 224 SAt
		tr_moves MOONBLAST, CALM_MIND, DRAINING_KISS, SWIFT
	end_trainer

	def_trainer 2, "Valerie"
	tr_mon 57, CLEFABLE @ LEFTOVERS, FEMALE
		tr_extra MAGIC_GUARD
		tr_evs 252 HP, 68 Def
		tr_moves MOONBLAST, CALM_MIND, HEALINGLIGHT, METRONOME
	tr_mon 57, MR__MIME @ QUICK_CLAW, FEMALE
		tr_extra FILTER
		tr_evs 252 HP, 68 Def
		tr_moves PSYCHIC_M, DAZZLINGLEAM, LIGHT_SCREEN, REFLECT
	tr_mon 56, AZUMARILL @ MUSCLE_BAND, FEMALE
		tr_extra HUGE_POWER
		tr_evs 252 Atk, 68 Spe
		tr_moves PLAY_ROUGH, WATERFALL, DIZZY_PUNCH, CLOSE_COMBAT
	tr_mon 56, RAPIDASH @ KINGS_ROCK, FEMALE | GALARIAN_FORM
		tr_extra PASTEL_VEIL
		tr_evs 252 Atk, 68 Spe
		tr_moves EXTREMESPEED, ZEN_HEADBUTT, PLAY_ROUGH, SWORDS_DANCE
	tr_mon 58, TOGEKISS @ WISE_GLASSES, FEMALE
		tr_extra SERENE_GRACE
		tr_evs 252 SAt, 68 Spe
		tr_moves AURA_SPHERE, FRESH_SNACK, DAZZLINGLEAM, AIR_SLASH
	tr_mon 60, SYLVEON @ FAIRYFEATHER, FEMALE
		tr_extra PIXILATE
		tr_evs 252 SAt, 68 Spe
		tr_moves MOONBLAST, CALM_MIND, DRAINING_KISS, HYPER_VOICE
	end_trainer

	def_trainer 3, "Valerie"
	tr_mon 73, CLEFABLE @ LEFTOVERS, FEMALE
		tr_extra MAGIC_GUARD, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves MOONBLAST, CALM_MIND, FRESH_SNACK, THUNDER_WAVE
	tr_mon 73, MR__MIME @ LIGHT_CLAY, FEMALE
		tr_extra FILTER, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 4 SAt, 252 Spe
		tr_moves PSYCHIC_M, DAZZLINGLEAM, LIGHT_SCREEN, REFLECT
	tr_mon 72, AZUMARILL @ SITRUS_BERRY, FEMALE
		tr_extra HUGE_POWER, ATK_UP_SATK_DOWN
		tr_evs 248 HP, 8 Def, 252 Atk
		tr_moves PLAY_ROUGH, WATERFALL, AQUA_JET, BELLY_DRUM
	tr_mon 72, RAPIDASH @ WIDE_LENS, FEMALE | GALARIAN_FORM
		tr_extra PASTEL_VEIL, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, ZEN_HEADBUTT, PLAY_ROUGH, HYPNOSIS
	tr_mon 74, TOGEKISS @ CHOICE_SCARF, FEMALE
		tr_extra SERENE_GRACE, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves AIR_SLASH, DAZZLINGLEAM, FLAMETHROWER, AURA_SPHERE
	tr_mon 75, SYLVEON @ CHESTO_BERRY, FEMALE
		tr_extra PIXILATE, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SAt, 252 Def
		tr_moves CALM_MIND, HYPER_VOICE, HP_FIRE, REST
	end_trainer


SECTION "KukuiGroup", ROMX
KukuiGroup:

	def_trainer_class KUKUI
	def_trainer 1, "Kukui"
	tr_mon 67, MAROWAK @ THICK_CLUB, MALE | ALOLAN_FORM
		tr_extra ROCK_HEAD
		tr_evs 236 Atk, 252 Spe
		tr_moves FLARE_BLITZ, SHADOW_CLAW, FLAME_CHARGE, BONEMERANG
	tr_mon 65, NINETALES, MALE | ALOLAN_FORM
		tr_extra SNOW_WARNING
		tr_evs 252 SAt, 236 Spe
		tr_moves BLIZZARD, DAZZLINGLEAM, CALM_MIND, DARK_PULSE
	tr_mon 66, MAGNEZONE
if DEF(FAITHFUL)
		tr_extra STURDY
else
		tr_extra LEVITATE
endc
		tr_evs 236 HP, 252 SAt
		tr_moves THUNDERBOLT, FLASH_CANNON, TRI_ATTACK, THUNDER_WAVE
	tr_mon 66, SNORLAX, MALE
		tr_extra THICK_FAT
		tr_evs 236 Def, 252 SDf
		tr_moves BODY_SLAM, CRUNCH, REST, SLEEP_TALK
	tr_mon 65, RATICATE, MALE | ALOLAN_FORM
		tr_extra HUSTLE
		tr_evs 236 Atk, 252 Spe
		tr_moves DOUBLE_EDGE, FEINT_ATTACK, SUCKER_PUNCH, HYPER_FANG
	tr_mon 68, EXEGGUTOR @ SITRUS_BERRY, MALE | ALOLAN_FORM
		tr_extra HARVEST
		tr_evs 236 SAt, 252 Spe
		tr_moves GIGA_DRAIN, FLAMETHROWER, DRAGON_PULSE, SUBSTITUTE
	end_trainer

	def_trainer 2, "Kukui"
	tr_mon 74, MAROWAK @ THICK_CLUB, MALE | ALOLAN_FORM
		tr_extra ROCK_HEAD, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves FLARE_BLITZ, SHADOW_CLAW, EARTHQUAKE, SWORDS_DANCE
	tr_mon 72, NINETALES @ FOCUS_SASH, MALE | ALOLAN_FORM
		tr_extra SNOW_WARNING, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves MOONBLAST, BLIZZARD, EXTRASENSORY, NASTY_PLOT
	tr_mon 73, MAGNEZONE @ ASSAULT_VEST
		tr_extra ANALYTIC, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves VOLT_SWITCH, THUNDERBOLT, FLASH_CANNON, TRI_ATTACK
	tr_mon 73, SNORLAX @ LEFTOVERS, MALE
		tr_extra THICK_FAT, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves CURSE, BODY_SLAM, EARTHQUAKE, REST
	tr_mon 72, MUK @ FIGY_BERRY, MALE | ALOLAN_FORM
		tr_extra GLUTTONY, SDEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves CURSE, POISON_JAB, KNOCK_OFF, FIRE_PUNCH
	tr_mon 75, EXEGGUTOR @ CUSTAP_BERRY, MALE | ALOLAN_FORM
		tr_extra HARVEST, SATK_UP_ATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SAt
		tr_moves GIGA_DRAIN, DRAGON_PULSE, FLAMETHROWER, ENDURE
	end_trainer


SECTION "PiersGroup", ROMX
PiersGroup:

	def_trainer_class PIERS
	def_trainer 1, "Piers"
	tr_mon 16, MURKROW, MALE
		tr_extra SUPER_LUCK
		tr_evs 96 Spe
		tr_moves WING_ATTACK, PURSUIT, HAZE, ASTONISH
	tr_mon 17, QWILFISH, MALE | HISUIAN_FORM
		tr_extra POISON_POINT
		tr_evs 96 Spe
		tr_moves DEFENSE_CURL, ROLLOUT, POISON_STING, AQUA_JET
	tr_mon 17, MUK, MALE | ALOLAN_FORM
		tr_extra POISON_TOUCH
		tr_evs 96 HP
		tr_moves VENOSHOCK, BITE, ACID, DEFENSE_CURL
	tr_mon 19, RATICATE @ ORAN_BERRY, MALE | ALOLAN_FORM
		tr_extra GLUTTONY
		tr_evs 96 Atk
		tr_moves HYPER_FANG, SUCKER_PUNCH, PURSUIT, FOCUS_ENERGY
	end_trainer

	def_trainer 2, "Piers"
	tr_mon LEVEL_FROM_BADGES + 12, HONCHKROW @ LIFE_ORB, MALE
		tr_extra MOXIE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves BRAVE_BIRD, SUCKER_PUNCH, PURSUIT, STEEL_WING
	tr_mon LEVEL_FROM_BADGES + 16, OVERQWIL @ BLACK_SLUDGE, MALE
		tr_extra INTIMIDATE, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 Atk, 252 Def
		tr_moves POISON_JAB, CRUNCH, SPIKES, DESTINY_BOND
	tr_mon LEVEL_FROM_BADGES + 16, MUK @ ASSAULT_VEST, MALE | ALOLAN_FORM
		tr_extra POISON_TOUCH, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves GUNK_SHOT, KNOCK_OFF, FIRE_PUNCH, ICE_PUNCH
	tr_mon LEVEL_FROM_BADGES + 14, PERSIAN @ WIDE_LENS, MALE | ALOLAN_FORM
		tr_extra FUR_COAT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves DARK_PULSE, THUNDERBOLT, DREAM_EATER, HYPNOSIS
if DEF(FAITHFUL)
	tr_mon LEVEL_FROM_BADGES + 14, UMBREON @ LEFTOVERS, MALE
		tr_extra SYNCHRONIZE, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 SDf
		tr_moves CURSE, FEINT_ATTACK, SUCKER_PUNCH, HEALINGLIGHT
else
	tr_mon LEVEL_FROM_BADGES + 14, GIRAFARIG @ LEFTOVERS, MALE
		tr_extra SAP_SIPPER, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves DARK_PULSE, PSYCHIC, DAZZLINGLEAM, NASTY_PLOT
endc
	tr_mon LEVEL_FROM_BADGES + 19, RATICATE @ FIGY_BERRY, MALE | ALOLAN_FORM
		tr_extra GLUTTONY, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, CRUNCH, DOUBLE_EDGE, SUCKER_PUNCH
	end_trainer


SECTION "KatyGroup", ROMX
KatyGroup:

	def_trainer_class KATY
	def_trainer 1, "Katy"
	tr_mon 55, ARIADOS, FEMALE
		tr_extra SWARM
		tr_evs 252 Atk, 36 Spe
		tr_moves  LEECH_LIFE, POISON_JAB, SUCKER_PUNCH, AGILITY
	tr_mon 55, BUTTERFREE, FEMALE
		tr_extra COMPOUND_EYES
		tr_evs 252 Spe, 36 SAt
		tr_moves SLEEP_POWDER, PSYCHIC, AIR_SLASH, BUG_BUZZ
	tr_mon 56, SHUCKLE, FEMALE
if DEF(FAITHFUL)
		tr_extra STURDY
else
		tr_extra SOLID_ROCK
endc
		tr_evs 252 HP, 36 SDf
		tr_moves DEFENSE_CURL, ROLLOUT, REST, SLEEP_TALK
	tr_mon 56, KLEAVOR, FEMALE
		tr_extra SHEER_FORCE
		tr_evs 252 Atk, 36 HP
		tr_moves ROCK_SLIDE, CRUNCH, X_SCISSOR, CLOSE_COMBAT
	tr_mon 54, HERACROSS, FEMALE
		tr_extra MOXIE
		tr_evs 252 Spe, 36 Atk
		tr_moves ENDURE, MEGAHORN, NIGHT_SLASH, REVERSAL
	tr_mon 57, URSARING @ TOXIC_ORB, FEMALE
		tr_extra QUICK_FEET
		tr_evs 252 Spe, 36 Atk
		tr_moves GUNK_SHOT, SLASH, CRUNCH, PLAY_ROUGH
	end_trainer

	def_trainer 2, "Katy"
	tr_mon 73, ARIADOS @ FOCUS_SASH, FEMALE
		tr_extra SWARM, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves MEGAHORN, POISON_JAB, SUCKER_PUNCH, TOXIC_SPIKES
	tr_mon 73, BUTTERFREE @ CHOICE_SPECS, FEMALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves BUG_BUZZ, AIR_SLASH, PSYCHIC, ENERGY_BALL
	tr_mon 74, SHUCKLE @ LEFTOVERS, FEMALE
		tr_extra CONTRARY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves SHELL_SMASH, TOXIC, WRAP, REST
	tr_mon 74, KLEAVOR @ CHOICE_SCARF, FEMALE
		tr_extra SHARPNESS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves CLOSE_COMBAT, STONE_EDGE, X_SCISSOR, NIGHT_SLASH
	tr_mon 72, HERACROSS @ LOADED_DICE, FEMALE
		tr_extra SKILL_LINK, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves CLOSE_COMBAT, PIN_MISSILE, ROCK_BLAST, SWORDS_DANCE
	tr_mon 75, URSALUNA @ FLAME_ORB, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 Def, 252 Atk
		tr_moves FACADE, EARTHQUAKE, CRUNCH, DRAIN_PUNCH
	end_trainer


SECTION "VictorGroup", ROMX
VictorGroup:

	def_trainer_class VICTOR
	def_trainer 1, "Victor"
	tr_mon 69, "Puka", PIKACHU @ LIGHT_BALL, MALE | PIKACHU_SURF_FORM
		tr_extra LIGHTNING_ROD, SPE_UP_DEF_DOWN
		tr_evs 252 SAt, 4 Atk, 252 Spe
		tr_moves SURF, THUNDERBOLT, THUNDER_WAVE, EXTREMESPEED
	end_trainer


SECTION "BillGroup", ROMX
BillGroup:

	def_trainer_class BILL_T
	def_trainer 1, "Bill"
	tr_mon 62, VAPOREON @ MYSTIC_WATER, MALE
		tr_extra WATER_ABSORB
		tr_evs 252 HP, 100 SAt
		tr_moves RECOVER, BARRIER, HYDRO_PUMP, SCALD
	tr_mon 62, JOLTEON @ MAGNET, MALE
		tr_extra VOLT_ABSORB
		tr_evs 252 SAt, 100 Spe
		tr_moves THUNDER_WAVE, THUNDERBOLT, THUNDER, SHADOW_BALL
	tr_mon 62, FLAREON @ CHARCOAL, MALE
		tr_extra FLASH_FIRE
		tr_evs 252 Atk, 100 SAt
		tr_moves FLARE_BLITZ, DOUBLE_EDGE, FIRE_BLAST, ROCK_SMASH
	tr_mon 63, LEAFEON @ MIRACLE_SEED, MALE
		tr_extra LEAF_GUARD
		tr_evs 252 Spe, 100 Atk
		tr_moves SEED_BOMB, SWORDS_DANCE, HEALINGLIGHT, DOUBLE_EDGE
	tr_mon 63, GLACEON @ NEVERMELTICE, MALE
		tr_extra ICE_BODY
		tr_evs 252 SAt, 100 HP
		tr_moves ICE_BEAM, MIRROR_COAT, SHADOW_BALL, WATER_PULSE
	tr_mon 66, PORYGON2 @ EVIOLITE
		tr_extra DOWNLOAD
		tr_evs 252 HP, 100 SAt
		tr_moves TRI_ATTACK, THUNDERBOLT, ICE_BEAM, RECOVER
	end_trainer


SECTION "YellowGroup", ROMX
YellowGroup:

	def_trainer_class YELLOW
	def_trainer 1, "Yellow"
	tr_mon LEVEL_FROM_BADGES + 5, "Ratty", RATTATA @ SITRUS_BERRY, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 240 Atk
		tr_moves SUCKER_PUNCH, QUICK_ATTACK, HYPER_FANG, SWORDS_DANCE
	tr_mon LEVEL_FROM_BADGES + 3, "Kitty", BUTTERFREE @ SITRUS_BERRY, FEMALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 240 Spe
		tr_moves BUG_BUZZ, SUPERSONIC, STUN_SPORE, PSYCHIC_M
	tr_mon LEVEL_FROM_BADGES + 6, "Dody", DODUO, FEMALE
		tr_extra TANGLED_FEET, SPE_UP_SDEF_DOWN
		tr_evs 240 Spe
		tr_moves SWORDS_DANCE, ACROBATICS, RETURN, MUD_SLAP
	tr_mon LEVEL_FROM_BADGES + 5, "Gravvy", GRAVELER @ EVIOLITE, FEMALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 240 HP
		tr_moves ROLLOUT, DEFENSE_CURL, EARTHQUAKE, ROCK_BLAST
	tr_mon LEVEL_FROM_BADGES + 4, "Omny", OMANYTE @ SITRUS_BERRY, FEMALE
		tr_extra SHELL_ARMOR, SATK_UP_ATK_DOWN
		tr_evs 240 HP
		tr_moves SURF, PROTECT, ANCIENTPOWER, AURORA_BEAM
	tr_mon LEVEL_FROM_BADGES + 8, "Chuchu", PIKACHU @ LIGHT_BALL, FEMALE | PIKACHU_YELLOW_FORM
		tr_extra STATIC, SPE_UP_DEF_DOWN
		tr_evs 240 SAt
		tr_moves SURF, FLY, THUNDERBOLT, QUICK_ATTACK
	end_trainer

	def_trainer 2, "Yellow"
	tr_mon 72, "Omny", OMASTAR @ FOCUS_SASH, FEMALE
		tr_extra SHELL_ARMOR, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves SCALD, ANCIENTPOWER, SPIKES, ICE_BEAM
	tr_mon 73, "Ratty", RATICATE @ FLAME_ORB, FEMALE
		tr_extra GUTS, ATK_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves SWORDS_DANCE, QUICK_ATTACK, BODY_SLAM, CRUNCH
	tr_mon 71, "Free", BUTTERFREE @ SILVERPOWDER, FEMALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves PSYCHIC_M, BUG_BUZZ, SLEEP_POWDER, AIR_SLASH
	tr_mon 74, "Dody", DODRIO @ SHARP_BEAK, FEMALE
		tr_extra TANGLED_FEET, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRILL_PECK, THRASH, DOUBLE_TEAM, BODY_SLAM
	tr_mon 73, "Gravvy", GOLEM @ CUSTAP_BERRY, FEMALE
		tr_extra STURDY, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves ROLLOUT, DEFENSE_CURL, EARTHQUAKE, STONE_EDGE
	tr_mon 75, "Chuchu", PIKACHU @ LIGHT_BALL, FEMALE | PIKACHU_YELLOW_FORM
		tr_extra STATIC, SPE_UP_DEF_DOWN
		tr_evs 252 SAt, 4 Atk, 252 Spe
		tr_moves SURF, FLY, THUNDERBOLT, EXTREMESPEED
	end_trainer


SECTION "WalkerGroup", ROMX
WalkerGroup:

	def_trainer_class WALKER
	def_trainer 1, "Walker"
	tr_mon LEVEL_FROM_BADGES + 5, NOCTOWL, MALE
		tr_extra INSOMNIA
		tr_evs 184 Spe
		tr_moves AERIAL_ACE, NIGHT_SHADE, REFLECT, EXTRASENSORY
	tr_mon LEVEL_FROM_BADGES + 6, PIDGEOTTO @ EVIOLITE, MALE
		tr_extra KEEN_EYE
		tr_evs 184 SAt
		tr_moves MUD_SLAP, ROOST, SWIFT, AIR_SLASH
	tr_mon LEVEL_FROM_BADGES + 5, AERODACTYL, MALE
		tr_extra UNNERVE
		tr_evs 184 Atk
		tr_moves WING_ATTACK, SUPERSONIC, BITE, ANCIENTPOWER
	tr_mon LEVEL_FROM_BADGES + 8, SKARMORY @ SITRUS_BERRY, MALE
		tr_extra STURDY
		tr_evs 184 HP
		tr_moves METAL_CLAW, FURY_STRIKES, DRILL_PECK, SWIFT
	end_trainer

	def_trainer 2, "Walker"
	tr_mon 75, SKARMORY @ ROCKY_HELMET, MALE
		tr_extra STURDY, DEF_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves ROOST, SPIKES, STEEL_WING, TOXIC
	tr_mon 72, NOCTOWL @ CHOICE_SPECS, MALE
		tr_extra TINTED_LENS, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves AIR_SLASH, PSYCHIC_M, SHADOW_BALL, HYPER_VOICE
	tr_mon 74, PIDGEOT @ LIFE_ORB, MALE
		tr_extra NO_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves ROOST, HURRICANE, FOCUS_BLAST, U_TURN
	tr_mon 73, AERODACTYL @ POWER_HERB, MALE
		tr_extra TOUGH_CLAWS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves ROCK_SLIDE, CRUNCH, IRON_HEAD, FLY
	tr_mon 73, CHARIZARD @ LEFTOVERS, MALE
		tr_extra BLAZE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 def, 252 Spe
if DEF(FAITHFUL)
		tr_moves SWORDS_DANCE, FLARE_BLITZ, ROCK_SLIDE, AERIAL_ACE
else
		tr_moves SWORDS_DANCE, FLARE_BLITZ, ROCK_SLIDE, DRAGON_CLAW
endc
	tr_mon 72, XATU @ ROCKY_HELMET, MALE
		tr_extra DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves CALM_MIND, ROOST, AIR_SLASH, PSYCHIC_M
	end_trainer


SECTION "ImakuniGroup", ROMX
ImakuniGroup:

	def_trainer_class IMAKUNI
	def_trainer 1, "Imakuni"
	tr_mon 62, GOLDUCK @ BRIGHTPOWDER
	tr_mon 62, SLOWBRO @ TWISTEDSPOON
	tr_mon 63, HYPNO @ QUICK_CLAW
	tr_mon 61, FARFETCH_D @ LEEK
	tr_mon 61, DODRIO @ SHARP_BEAK
	tr_mon 64, WOBBUFFET @ LEFTOVERS
	end_trainer


SECTION "LawrenceGroup", ROMX
LawrenceGroup:

	def_trainer_class LAWRENCE
	def_trainer 1, "Lawrence"
	tr_mon 70, ARTICUNO @ NEVERMELTICE, MALE
		tr_extra PRESSURE
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves ICE_BEAM, AIR_SLASH, ANCIENTPOWER, REFLECT
	tr_mon 66, CHARIZARD @ DRAGON_FANG, MALE
		tr_extra ATK_UP_SATK_DOWN, SHINY
		tr_evs 252 Atk, 4 Def, 252 Spe
if DEF(FAITHFUL)
		tr_moves SWORDS_DANCE, FLARE_BLITZ, SLASH, AERIAL_ACE
else
		tr_moves SWORDS_DANCE, FLARE_BLITZ, SLASH, DRAGON_CLAW
endc
	tr_mon 68, DRAGONITE @ LEFTOVERS, MALE
		tr_extra INNER_FOCUS
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, OUTRAGE, AQUA_TAIL, EARTHQUAKE
	tr_mon 67, TYRANITAR @ KINGS_ROCK, MALE
		tr_extra SAND_STREAM
		tr_evs 252 Atk, 4 SDf, 252 HP
		tr_moves EARTHQUAKE, STONE_EDGE, CRUNCH, FIRE_PUNCH
	tr_mon 66, HONCHKROW @ QUICK_CLAW, MALE
		tr_extra SUPER_LUCK
		tr_evs 252 Sat, 4 Atk, 252 Spe
		tr_moves NASTY_PLOT, DARK_PULSE, PSYCHIC_M, BRAVE_BIRD
	tr_mon 70, ZAPDOS @ SHARP_BEAK, MALE
		tr_extra PRESSURE
		tr_evs 252 SAt, 4 Atk, 252 Spe
		tr_moves DRILL_PECK, THUNDER, ANCIENTPOWER, LIGHT_SCREEN
	end_trainer

	def_trainer 2, "Lawrence"
	tr_mon 75, ARTICUNO @ LEFTOVERS, MALE
		tr_extra PRESSURE, SPE_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Spe
		tr_moves ICE_BEAM, AIR_SLASH, ROOST, SUBSTITUTE
	tr_mon 71, CHARIZARD @ CHARCOAL, MALE
if DEF(FAITHFUL)
		tr_extra DROUGHT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves FIRE_BLAST, SOLAR_BEAM, FOCUS_BLAST, AIR_SLASH
else
		tr_extra TOUGH_CLAWS, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, DRAGON_CLAW, THUNDERPUNCH, SWORDS_DANCE
endc
	tr_mon 73, DRAGONITE @ LUM_BERRY, MALE
		tr_extra MULTISCALE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DRAGON_DANCE, OUTRAGE, AQUA_TAIL, EARTHQUAKE
	tr_mon 72, TYRANITAR @ ASSAULT_VEST, MALE
		tr_extra SAND_STREAM, ATK_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves EARTHQUAKE, STONE_EDGE, CRUNCH, ICE_PUNCH
	tr_mon 71, PORYGON_Z @ LIFE_ORB, MALE
		tr_extra ADAPTABILITY, SATK_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves THUNDERBOLT, DARK_PULSE, TRI_ATTACK, AGILITY
	tr_mon 75, ZAPDOS @ CHOICE_SPECS, MALE
		tr_extra STATIC, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 Def, 252 Spe
		tr_moves VOLT_SWITCH, THUNDERBOLT, HURRICANE, EXTRASENSORY
	end_trainer


SECTION "ReiGroup", ROMX
ReiGroup:

	def_trainer_class REI
	def_trainer 1, "Maiden Rei"
	tr_mon LEVEL_FROM_BADGES + 3, KADABRA
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 3, NOCTOWL
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 2, MURKROW
		tr_evs 120 Spe
	tr_mon LEVEL_FROM_BADGES + 4, NINETALES @ SITRUS_BERRY
		tr_evs 120 Spe
	end_trainer

	def_trainer 2, "Maiden Rei"
	tr_mon 59, FLAREON @ MUSCLE_BAND, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 68 Atk, 252 Spe
		tr_moves QUICK_ATTACK, ROCK_SMASH, DOUBLE_EDGE, FLARE_BLITZ
	tr_mon 58, HONCHKROW @ BLACKGLASSES, FEMALE
		tr_extra INSOMNIA
		tr_evs 68 Atk, 252 Spe
		tr_moves DRILL_PECK, SUCKER_PUNCH, PURSUIT, BRAVE_BIRD
	tr_mon 57, NOCTOWL @ QUICK_CLAW, FEMALE
		tr_extra INSOMNIA
		tr_evs 68 SAt, 252 Spe
		tr_moves SHADOW_BALL, AIR_SLASH, HYPNOSIS, DREAM_EATER
	tr_mon 57, ALAKAZAM @ WISE_GLASSES, FEMALE
		tr_extra MAGIC_GUARD
		tr_evs 68 SAt, 252 Spe
		tr_moves PSYCHIC_M, FOCUS_BLAST, SHADOW_BALL, THUNDER_WAVE
	tr_mon 58, RAPIDASH @ KINGS_ROCK, FEMALE
		tr_extra FLASH_FIRE
		tr_evs 68 HP, 252 Spe
		tr_moves FIRE_BLAST, MEGAHORN, POISON_JAB, WILL_O_WISP
	tr_mon 60, NINETALES @ LEFTOVERS, FEMALE
		tr_extra DROUGHT
		tr_evs 68 SAt, 252 Spe
		tr_moves NASTY_PLOT, FLAMETHROWER, ENERGY_BALL, SHADOW_BALL
	end_trainer

	def_trainer 3, "Maiden Rei"
	tr_mon 74, FLAREON @ TOXIC_ORB, FEMALE
		tr_extra GUTS, SPE_UP_SATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Atk
		tr_moves QUICK_ATTACK, ROCK_SMASH, FACADE, FLARE_BLITZ
	tr_mon 73, HONCHKROW @ BLACKGLASSES, FEMALE
		tr_extra MOXIE, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves DOUBLE_EDGE, SUCKER_PUNCH, PURSUIT, BRAVE_BIRD
	tr_mon 72, NOCTOWL @ ZOOM_LENS, FEMALE
		tr_extra TINTED_LENS, DEF_UP_ATK_DOWN
		tr_evs 252 HP, 4 SDf, 252 Def
		tr_moves CALM_MIND, AIR_SLASH, HYPNOSIS, DREAM_EATER
	tr_mon 72, ALAKAZAM @ FOCUS_SASH, FEMALE
		tr_extra MAGIC_GUARD, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves PSYCHIC_M, FOCUS_BLAST, SHADOW_BALL, COUNTER
	tr_mon 73, RAPIDASH @ LIFE_ORB, FEMALE
		tr_extra FLAME_BODY, SPE_UP_SATK_DOWN
		tr_evs 252 Atk, 4 Def, 252 Spe
		tr_moves FLARE_BLITZ, MEGAHORN, LOW_KICK, SWORDS_DANCE
	tr_mon 75, NINETALES @ LEFTOVERS, FEMALE
		tr_extra DROUGHT, SPE_UP_ATK_DOWN
		tr_evs 252 SAt, 4 SDf, 252 Spe
		tr_moves NASTY_PLOT, FIRE_BLAST, ENERGY_BALL, SHADOW_BALL
	end_trainer

ENDSECTION
