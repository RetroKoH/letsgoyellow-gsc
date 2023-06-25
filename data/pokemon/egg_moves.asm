INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

INCLUDE "data/pokemon/egg_move_pointers.asm"

EggMoves::

BulbasaurEggMoves:
	db CHARM
	db PETAL_DANCE
	db LIGHT_SCREEN
	db POWER_WHIP
	db $ff

CharmanderEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db BITE
	db CRUNCH
	db DRAGON_DANCE
	db DRAGONBREATH
	db FLARE_BLITZ
	db OUTRAGE
	db $ff

SquirtleEggMoves:
	db CONFUSION
	db HAZE
	db MIRROR_COAT
	db AQUA_JET
	db $ff

PidgeyEggMoves:
	db PECK
	db PURSUIT
	db AIR_SLASH
	db CHARM
	db EXTREMESPEED
	db BRAVE_BIRD
	db $ff

RattataPlainEggMoves:
RattataAlolanEggMoves:
	db FURY_STRIKES
	db SCREECH
	db BITE
	db COUNTER
	db $ff

SpearowEggMoves:
	db BELLY_DRUM
	db SUPERSONIC
	db LIGHT_SCREEN
	db AMNESIA
	db CALM_MIND
	db AQUA_JET
	db $ff

EkansEggMoves:
	db CRUNCH
	db DISABLE
	db PURSUIT
	db $ff

SandshrewPlainEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db COUNTER
	db NIGHT_SLASH
	db $ff

SandshrewAlolanEggMoves:
	db AMNESIA
	db RAPID_SPIN
	db FLAIL
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db NIGHT_SLASH
	db $ff

NidoranFEggMoves:
	db CHARM
	db DISABLE
	db PURSUIT
	db SUPERSONIC ; requires Lickitung
	db TAKE_DOWN
	db $ff

NidoranMEggMoves:
	db AMNESIA
	db CONFUSION
	db DISABLE
	db SUPERSONIC ; requires Lickitung
	db TAKE_DOWN
	db CALM_MIND
	db COUNTER
	db $ff

ClefairyEggMoves:
	db CALM_MIND
	db BELLY_DRUM
	db METRONOME
	db AMNESIA
	db $ff

VulpixPlainEggMoves:
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

VulpixAlolanEggMoves:
	db DISABLE
	db BLIZZARD
	db HYPNOSIS
	db CHARM
	db ICE_BEAM
	db ROAR
	db $ff

JigglypuffEggMoves:
	db MOONBLAST
	db $ff

ZubatEggMoves:
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db BRAVE_BIRD
	db $ff

OddishEggMoves:
	db CHARM
	db RAZOR_LEAF
	db HEALINGLIGHT
	db SWORDS_DANCE
	db $ff

ParasEggMoves:
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db $ff

VenonatEggMoves:
	db AGILITY
	db HEALINGLIGHT
	db SCREECH
	db $ff

DiglettPlainEggMoves:
DiglettAlolanEggMoves:
	db ANCIENTPOWER
	db HEADBUTT
	db PURSUIT
	db SCREECH
	db $ff

MeowthPlainEggMoves:
MeowthAlolanEggMoves:
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db $ff

PsyduckEggMoves:
	db CONFUSE_RAY
	db CROSS_CHOP
	db ENCORE
	db HYPNOSIS
	db PSYBEAM
	db ICE_BEAM
	db LIGHT_SCREEN
	db PSYCHIC_M
	db $ff

MankeyEggMoves:
	db ENCORE
	db BULK_UP
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

GrowlitheEggMoves:
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db CLOSE_COMBAT
	db $ff

PoliwagEggMoves:
	db ENCORE
	db HAZE
	db BUBBLE_BEAM
	db WATER_PULSE
	db $ff

AbraEggMoves:
	db BARRIER
	db ENCORE
	db LIGHT_SCREEN
	db KNOCK_OFF
	db $ff

MachopEggMoves:
	db BULLET_PUNCH
	db ENCORE
	db BULK_UP
	db LIGHT_SCREEN
	db MACH_PUNCH
	db CLOSE_COMBAT
	db KNOCK_OFF
	db $ff

BellsproutEggMoves:
	db ENCORE ; requires Hoppip
	db LEECH_LIFE
	db SWORDS_DANCE
	db REFLECT
	db HEALINGLIGHT
	db POWER_WHIP
	db $ff

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db KNOCK_OFF
	db $ff

GeodudePlainEggMoves:
GeodudeAlolanEggMoves:
	db ROCK_SLIDE
	db $ff

PonytaPlainEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

PonytaGalarianEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db PSYBEAM
	db PSYCHIC_M
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

SlowpokePlainEggMoves:
SlowpokeGalarianEggMoves:
	db BELLY_DRUM
	db STOMP
	db ZEN_HEADBUTT
	db $ff

FarfetchDEggMoves:
	db GUST
	db QUICK_ATTACK
	db NIGHT_SLASH
	db ROOST
	db $ff

DoduoEggMoves:
	db HAZE
	db SUPERSONIC
	db QUICK_ATTACK
	db BRAVE_BIRD
	db $ff

SeelEggMoves:
	db DISABLE
	db LICK
	db PECK
	db ENCORE
	db WATER_PULSE
	db ICICLE_SPEAR
	db $ff

GrimerPlainEggMoves:
	db HAZE
	db LICK
	db $ff

GrimerAlolanEggMoves:
	db HAZE
	db LICK
	db PURSUIT
	db $ff

ShellderEggMoves:
	db BARRIER
	db BUBBLE_BEAM
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db WATER_PULSE
	db ICICLE_SPEAR
	db ROCK_BLAST
	db $ff

GastlyEggMoves:
	db DISABLE
	db HAZE
	db NASTY_PLOT
	db $ff

OnixEggMoves:
	db DEFENSE_CURL
	db ROCK_SLIDE
	db EARTHQUAKE
	db ROCK_BLAST
	db $ff

DrowzeeEggMoves:
	db BARRIER
	db LIGHT_SCREEN
	db BELLY_DRUM
	db $ff

KrabbyEggMoves:
	db AGILITY
	db HAZE
	db AMNESIA
	db DIG
	db CALM_MIND
	db KNOCK_OFF
	db $ff

ExeggcuteEggMoves:
	db MEGA_DRAIN
	db HEALINGLIGHT
	db ANCIENTPOWER
	db REFLECT
	db $ff

CuboneEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db DOUBLE_KICK
	db SCREECH
	db ROCK_SLIDE
	db SWORDS_DANCE
	db IRON_HEAD
	db $ff

KoffingEggMoves:
	db PSYBEAM
	db SCREECH
	db $ff

RhyhornEggMoves:
	db CRUNCH
	db DRILL_RUN
	db PURSUIT
	db THRASH
	db ROCK_SLIDE
	db COUNTER
	db $ff

ChanseyEggMoves:
	db METRONOME
	db HEAL_BELL
	db $ff

TangelaEggMoves:
	db CONFUSION
	db AMNESIA ; requires Hoppip
	db LEECH_SEED
	db $ff

KangaskhanEggMoves:
	db DISABLE
	db STOMP
	db $ff

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGONBREATH
	db HAZE
	db WATER_PULSE
	db $ff

TogepiEggMoves:
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db $ff

MrMimeEggMoves:
	db CONFUSE_RAY
	db HYPNOSIS
	db NASTY_PLOT
	db $ff

ScytherEggMoves:
	db BUG_BUZZ
	db COUNTER
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db $ff

JynxEggMoves:
	db BULK_UP
	db NASTY_PLOT
	db $ff

PinsirEggMoves:
	db FURY_STRIKES
	db QUICK_ATTACK
	db CLOSE_COMBAT
	db $ff

LaprasEggMoves:
	db AURORA_BEAM
	db DRAGON_DANCE
	db HEAL_BELL
	db $ff

EeveeEggMoves:
	db CHARM
	db $ff

OmanyteEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db KNOCK_OFF
	db $ff

KabutoEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db CONFUSE_RAY
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db DIG
	db KNOCK_OFF
	db $ff

AerodactylEggMoves:
	db PURSUIT
	db ROOST
	db $ff

DratiniEggMoves:
	db EXTREMESPEED ; requires Dragon Shrine Dratini
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db $ff

HoppipEggMoves:
	db LEECH_SEED
	db VINE_WHIP
	db ANCIENTPOWER
	db COUNTER
	db SWORDS_DANCE
	db CHARM
	db HEAL_BELL
	db $ff

LedybaEggMoves:
	db DOUBLE_KICK
	db FLARE_BLITZ
	db FURY_STRIKES
	db CLOSE_COMBAT
	db THRASH
	db QUICK_ATTACK
	db $ff

SkarmoryEggMoves:
	db THRASH
	db $ff

AzurillEggMoves:
	db DRAGON_DANCE
	db METAL_CLAW
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db ROCK_SLIDE
	db WATER_PULSE
	db AQUA_JET
	db $ff

SentretEggMoves:
	db CHARM
	db PURSUIT
	db SLASH
	db DOUBLE_EDGE
	db $ff

HoothootEggMoves:
	db AGILITY
	db NIGHT_SHADE
	db SUPERSONIC
	db WING_ATTACK
	db BRAVE_BIRD
	db HURRICANE
	db $ff

GoldeenEggMoves:
	db ENCORE ; requires Shuckle
	db PSYBEAM
	db SCREECH
	db LIGHT_SCREEN
	db KNOCK_OFF
	db DRAIN_PUNCH
	db $ff

SpinarakEggMoves:
	db DISABLE
	db MEGAHORN
	db PSYBEAM
	db PURSUIT
	db POISON_JAB
	db NIGHT_SLASH
	db $ff

ChinchouEggMoves:
	db AGILITY ; requires Goldeen
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db $ff

PichuEggMoves:
	db DISARM_VOICE
	db ENCORE
	db $ff

MunchlaxEggMoves:
	db CHARM
	db COUNTER
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
	db $ff

NatuEggMoves:
	db DRILL_PECK
	db HAZE
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db ROOST
	db $ff

MareepEggMoves:
	db AGILITY
	db REFLECT
	db SCREECH
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db $ff

SunkernEggMoves:
	db $ff

YanmaEggMoves:
	db LEECH_LIFE
	db $ff

WooperEggMoves:
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db $ff

MurkrowEggMoves:
	db CONFUSE_RAY
	db DRILL_PECK
	db QUICK_ATTACK
	db SCREECH
	db WING_ATTACK
	db BRAVE_BIRD
	db ROOST
	db $ff

MisdreavusEggMoves:
	db NASTY_PLOT
	db SCREECH
	db $ff

PinecoEggMoves:
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db $ff

GligarEggMoves:
	db AGILITY
	db METAL_CLAW
	db WING_ATTACK
	db COUNTER
	db NIGHT_SLASH
	db $ff

SnubbullEggMoves:
	db LEER
	db METRONOME
	db REFLECT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db CLOSE_COMBAT
	db $ff

QwilfishEggMoves:
	db BUBBLE_BEAM
	db HAZE
	db SUPERSONIC
	db POISON_JAB
	db WATER_PULSE
	db $ff

ShuckleEggMoves:
	db ROLLOUT
	db ACID
	db KNOCK_OFF
	db ROCK_BLAST
	db $ff

HeracrossEggMoves:
	db ROCK_BLAST
	db DEFENSE_CURL
	db PURSUIT
	db $ff

SneaselEggMoves:
	db BITE
	db PURSUIT
	db COUNTER
	db REFLECT
	db ICICLE_CRASH
	db ICE_SHARD
	db $ff

TeddiursaEggMoves:
	db BELLY_DRUM
	db CROSS_CHOP
	db CRUNCH
	db METAL_CLAW
	db PLAY_ROUGH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

SlugmaEggMoves:
	db SMOKESCREEN
	db $ff

SwinubEggMoves:
	db AVALANCHE
	db BITE
	db TAKE_DOWN
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db $ff

LickitungEggMoves:
	db HAZE
	db MIRROR_COAT
	db HYDRO_PUMP
	db GUNK_SHOT
	db $ff

HoundourEggMoves:
	db FIRE_SPIN
	db PURSUIT
	db COUNTER
	db WILL_O_WISP
	db $ff

PhanpyEggMoves:
	db PLAY_ROUGH
	db WATER_GUN
	db BODY_SLAM
	db ANCIENTPOWER
	db GUNK_SHOT
	db ICE_SHARD
	db $ff

TyrogueEggMoves:
	db BULLET_PUNCH
	db HI_JUMP_KICK
	db MACH_PUNCH
	db PURSUIT
	db RAPID_SPIN
	db $ff

ElekidEggMoves:
	db BARRIER
	db CROSS_CHOP
	db LOW_SWEEP
	db BULK_UP
	db $ff

MagbyEggMoves:
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db FLARE_BLITZ
	db LOW_SWEEP
	db MACH_PUNCH
	db SCREECH
	db $ff

MiltankEggMoves:
	db SEISMIC_TOSS
	db $ff

LarvitarEggMoves:
	db DRAGON_DANCE
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db IRON_HEAD
	db $ff

NoEggMoves:
	db $ff
