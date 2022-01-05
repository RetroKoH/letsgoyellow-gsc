INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX


INCLUDE "data/pokemon/egg_move_pointers.asm"


EggMoves::

BulbasaurEggMoves:
	db CHARM
	db PETAL_DANCE
	db LIGHT_SCREEN
	db SAFEGUARD
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
	db FEINT_ATTACK
	db PURSUIT
	db AIR_SLASH
	db STEEL_WING
	db CHARM
	db EXTREMESPEED
	db BRAVE_BIRD
	db $ff

RattataEggMoves:
	db FLAME_WHEEL
	db FURY_ATTACK
	db FLAIL
	db SCREECH
	db BITE
	db COUNTER
	db $ff

SpearowEggMoves:
	db FEINT_ATTACK
	db QUICK_ATTACK
	db TRI_ATTACK
	db -1 ; end

EkansEggMoves:
	db CRUNCH
	db DISABLE
	db PURSUIT
	db $ff

SandshrewEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db $ff

NidoranFEggMoves:
	db CHARM
	db DISABLE
	db FOCUS_ENERGY
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
	db RECOVER
	db $ff

VulpixEggMoves:
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db $ff

JigglypuffEggMoves:
	db FEINT_ATTACK
	db MOONBLAST
	db $ff

ZubatEggMoves:
	db FEINT_ATTACK
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
	db SYNTHESIS
	db SWORDS_DANCE
	db $ff

ParasEggMoves:
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SHADOW_CLAW
	db $ff

VenonatEggMoves:
	db AGILITY
	db BATON_PASS
	db SYNTHESIS
	db SCREECH
	db TOXIC
	db $ff

DiglettEggMoves:
	db ANCIENTPOWER
	db FEINT_ATTACK
	db HEADBUTT
	db PURSUIT
	db FLAIL
	db SCREECH
	db $ff

MeowthEggMoves:
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
	db FLAIL
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db $ff

GrowlitheEggMoves:
	db DOUBLE_KICK
	db FIRE_SPIN
	db SYNTHESIS
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db $ff

PoliwagEggMoves:
	db ENCORE
	db HAZE
	db SPLASH
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
	db SYNTHESIS
	db POWER_WHIP
	db $ff

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db SAFEGUARD
	db KNOCK_OFF
	db $ff

GeodudeEggMoves:
	db ROCK_SLIDE
	db $ff

PonytaEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db SYNTHESIS
	db THRASH
	db QUICK_ATTACK
	db FLAME_WHEEL
	db EXTREMESPEED
	db PLAY_ROUGH
	db $ff

SlowpokeEggMoves:
	db BELLY_DRUM
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db $ff

FarfetchDEggMoves:
	db GUST
	db QUICK_ATTACK
	db STEEL_WING
	db NIGHT_SLASH
	db ROOST
	db $ff

DoduoEggMoves:
	db FEINT_ATTACK
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

GrimerEggMoves:
	db HAZE
	db LICK
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
	db FEINT_ATTACK
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
	db SYNTHESIS
	db SYNTHESIS
	db ANCIENTPOWER
	db REFLECT
	db $ff

CuboneEggMoves:
	db ANCIENTPOWER
	db DOUBLE_KICK
	db SCREECH
	db ROCK_SLIDE
	db SWORDS_DANCE
	db IRON_HEAD
	db $ff

LickitungEggMoves:
	db BODY_SLAM
	db AMNESIA
	db THRASH
	db ZEN_HEADBUTT
	db -1 ; end

KoffingEggMoves:
	db PSYBEAM
	db SCREECH
	db $ff

RhyhornEggMoves:
	db CRUNCH
	db PURSUIT
	db FLAIL
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
	db LEECH_SEED
	db $ff

KangaskhanEggMoves:
	db DISABLE
	db FOCUS_ENERGY
	db STOMP
	db SAFEGUARD
	db $ff

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGONBREATH
	db SPLASH
	db HAZE
	db WATER_PULSE
	db $ff

TogepiEggMoves:
	db SYNTHESIS
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
	db FLAIL
	db COUNTER
	db SAFEGUARD
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db $ff

JynxEggMoves:
	db BULK_UP
	db NASTY_PLOT
	db $ff

PinsirEggMoves:
	db FEINT_ATTACK
	db FURY_ATTACK
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
	db SPIKES
	db TOXIC
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
	db STEEL_WING
	db ROOST
	db $ff

DratiniEggMoves:
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db $ff

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db AQUA_TAIL
	db BODY_SLAM
	db SPLASH
	db $ff

PichuEggMoves:
	db DISARM_VOICE
	db ENCORE
	db FLAIL
	db $ff

MunchlaxEggMoves:
	db CHARM
	db COUNTER
	db CURSE
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
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
	db KARATE_CHOP
	db BULK_UP
	db $ff

MagbyEggMoves:
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db FLARE_BLITZ
	db FOCUS_ENERGY
	db KARATE_CHOP
	db MACH_PUNCH
	db SCREECH
	db $ff

MiltankEggMoves:
	db DIZZY_PUNCH
	db FLAIL
	db SEISMIC_TOSS
	db $ff

ChikoritaEggMoves:
CyndaquilEggMoves:
TotodileEggMoves:
SentretEggMoves:
HoothootEggMoves:
SpinarakEggMoves:
ChinchouEggMoves:
NatuEggMoves:
MareepEggMoves:
SudowoodoEggMoves:
SunkernEggMoves:
YanmaEggMoves:
WooperEggMoves:
MurkrowEggMoves:
MisdreavusEggMoves:
WobbuffetEggMoves:
GirafarigEggMoves:
PinecoEggMoves:
DunsparceEggMoves:
GligarEggMoves:
SnubbullEggMoves:
QwilfishEggMoves:
ShuckleEggMoves:
HeracrossEggMoves:
SneaselEggMoves:
TeddiursaEggMoves:
SlugmaEggMoves:
SwinubEggMoves:
CorsolaEggMoves:
RemoraidEggMoves:
SkarmoryEggMoves:
HoundourEggMoves:
PhanpyEggMoves:
LarvitarEggMoves:
NoEggMoves:
	db $ff
