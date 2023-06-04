
evo_data: MACRO
	db \1, \2 ; evolution type, parameter
	if (\1 == EVOLVE_STAT) || (\1 == EVOLVE_HOLDING)
		db \3 ;  ATK_*_DEF | time of day
		shift
	endc
	if _NARG > 3
		dp \3, \4
	else
		dp \3, PLAIN_FORM
	endc
ENDM

EvolutionPointers::
	table_width 2, EvolutionPointers
	dw BulbasaurEvolutions
	dw IvysaurEvolutions
	dw NoEvolutions
	dw CharmanderEvolutions
	dw CharmeleonEvolutions
	dw NoEvolutions
	dw SquirtleEvolutions
	dw WartortleEvolutions
	dw NoEvolutions
	dw CaterpieEvolutions
	dw MetapodEvolutions
	dw NoEvolutions
	dw WeedleEvolutions
	dw KakunaEvolutions
	dw NoEvolutions
	dw PidgeyEvolutions
	dw PidgeottoEvolutions
	dw NoEvolutions
	dw RattataPlainEvolutions
	dw NoEvolutions
	dw SpearowEvolutions
	dw NoEvolutions
	dw EkansEvolutions
	dw NoEvolutions
	dw PikachuEvolutions
	dw NoEvolutions
	dw SandshrewPlainEvolutions
	dw NoEvolutions
	dw NidoranFEvolutions
	dw NidorinaEvolutions
	dw NoEvolutions
	dw NidoranMEvolutions
	dw NidorinoEvolutions
	dw NoEvolutions
	dw ClefairyEvolutions
	dw NoEvolutions
	dw VulpixPlainEvolutions
	dw NoEvolutions
	dw JigglypuffEvolutions
	dw NoEvolutions
	dw ZubatEvolutions
	dw GolbatEvolutions
	dw OddishEvolutions
	dw GloomEvolutions
	dw NoEvolutions
	dw ParasEvolutions
	dw NoEvolutions
	dw VenonatEvolutions
	dw NoEvolutions
	dw DiglettPlainEvolutions
	dw NoEvolutions
	dw MeowthPlainEvolutions
	dw NoEvolutions
	dw PsyduckEvolutions
	dw NoEvolutions
	dw MankeyEvolutions
	dw NoEvolutions
	dw GrowlitheEvolutions
	dw NoEvolutions
	dw PoliwagEvolutions
	dw PoliwhirlEvolutions
	dw NoEvolutions
	dw AbraEvolutions
	dw KadabraEvolutions
	dw NoEvolutions
	dw MachopEvolutions
	dw MachokeEvolutions
	dw NoEvolutions
	dw BellsproutEvolutions
	dw WeepinbellEvolutions
	dw NoEvolutions
	dw TentacoolEvolutions
	dw NoEvolutions
	dw GeodudePlainEvolutions
	dw GravelerPlainEvolutions
	dw NoEvolutions
	dw PonytaPlainEvolutions
	dw NoEvolutions
	dw SlowpokePlainEvolutions
	dw NoEvolutions
	dw MagnemiteEvolutions
	dw MagnetonEvolutions
	dw NoEvolutions ; FarfetchD
	dw DoduoEvolutions
	dw NoEvolutions
	dw SeelEvolutions
	dw NoEvolutions
	dw GrimerPlainEvolutions
	dw NoEvolutions
	dw ShellderEvolutions
	dw NoEvolutions
	dw GastlyEvolutions
	dw HaunterEvolutions
	dw NoEvolutions
	dw OnixEvolutions
	dw DrowzeeEvolutions
	dw NoEvolutions
	dw KrabbyEvolutions
	dw NoEvolutions
	dw VoltorbEvolutions
	dw NoEvolutions
	dw ExeggcuteEvolutions
	dw NoEvolutions
	dw CuboneEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Hitmonlee
	dw NoEvolutions ; Hitmonchan
	dw KoffingEvolutions
	dw NoEvolutions
	dw RhyhornEvolutions
	dw RhydonEvolutions
	dw ChanseyEvolutions
	dw TangelaEvolutions
	dw NoEvolutions ; Kangaskhan
	dw HorseaEvolutions
	dw SeadraEvolutions
	dw TogepiEvolutions
	dw TogeticEvolutions
	dw NoEvolutions ; Togekiss
	dw StaryuEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Mr Mime
	dw ScytherEvolutions
	dw NoEvolutions ; Jynx
	dw ElectabuzzEvolutions
	dw MagmarEvolutions
	dw NoEvolutions ; Pinsir
	dw NoEvolutions ; Tauros
	dw MagikarpEvolutions
	dw NoEvolutions ; Gyarados
	dw NoEvolutions ; Lapras
	dw NoEvolutions ; Ditto
	dw EeveeEvolutions
	dw NoEvolutions ; Vaporeon
	dw NoEvolutions ; Jolteon
	dw NoEvolutions ; Flareon
	dw PorygonEvolutions
	dw OmanyteEvolutions
	dw NoEvolutions
	dw KabutoEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Aerodactyl
	dw NoEvolutions ; Snorlax
	dw NoEvolutions ; Articuno
	dw NoEvolutions ; Zapdos
	dw NoEvolutions ; Moltres
	dw DratiniEvolutions
	dw DragonairEvolutions
	dw NoEvolutions ; Dragonite
	dw NoEvolutions ; Mewtwo
	dw NoEvolutions ; Mew
	dw ChikoritaEvolutions
	dw BayleefEvolutions
	dw NoEvolutions ; Meganium
	dw CyndaquilEvolutions
	dw QuilavaEvolutions
	dw NoEvolutions
	dw TotodileEvolutions
	dw CroconawEvolutions
	dw NoEvolutions
	dw SentretEvolutions
	dw NoEvolutions
	dw HoothootEvolutions
	dw NoEvolutions
	dw GoldeenEvolutions
	dw NoEvolutions ; Seaking
	dw SpinarakEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Crobat
	dw ChinchouEvolutions
	dw NoEvolutions
	dw PichuEvolutions
	dw MunchlaxEvolutions
	dw NoEvolutions ; Magnezone
	dw NoEvolutions ; Rhyperior
	dw NoEvolutions ; Tangrowth
	dw NatuEvolutions
	dw NoEvolutions
	dw MareepEvolutions
	dw FlaaffyEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Bellossom
	dw NoEvolutions ; Lickilicky
	dw NoEvolutions ; Politoed
	dw SunkernEvolutions
	dw NoEvolutions
	dw YanmaEvolutions
	dw NoEvolutions
	dw WooperEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Espeon
	dw NoEvolutions ; Umbreon
	dw MurkrowEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Slowking
	dw MisdreavusEvolutions
	dw NoEvolutions ; Mismagius
	dw NoEvolutions ; Kleavor
	dw NoEvolutions ; SirfetchD
	dw NoEvolutions ; Mr Rime
	dw PinecoEvolutions
	dw NoEvolutions ; Forretress
	dw NoEvolutions ; Perrserker
	dw GligarEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Steelix
	dw SnubbullEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Qwilfish
	dw NoEvolutions ; Scizor
	dw NoEvolutions ; Shuckle
	dw NoEvolutions ; Heracross
	dw SneaselEvolutions
	dw NoEvolutions
	dw TeddiursaEvolutions
	dw NoEvolutions
	dw SlugmaEvolutions
	dw NoEvolutions
	dw SwinubEvolutions
	dw PiloswineEvolutions
	dw NoEvolutions
	dw HappinyEvolutions
	dw SmoochumEvolutions
	dw MimeJrEvolutions
	dw LickitungEvolutions
	dw IgglybuffEvolutions
	dw HoundourEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Kingdra
	dw PhanpyEvolutions
	dw NoEvolutions
	dw Porygon2Evolutions
	dw NoEvolutions ; PorygonZ
	dw CleffaEvolutions
	dw TyrogueEvolutions
	dw NoEvolutions ; Hitmontop
	dw ElekidEvolutions
	dw NoEvolutions
	dw MagbyEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Miltank
	dw NoEvolutions ; Blissey
	dw NoEvolutions ; RaikouEvolutions
	dw NoEvolutions ; EnteiEvolutions
	dw NoEvolutions ; SuicuneEvolutions
	dw LarvitarEvolutions
	dw PupitarEvolutions
	dw NoEvolutions ; TyranitarEvolutions
	dw NoEvolutions ; LugiaEvolutions
	dw NoEvolutions ; HoOhEvolutions
	dw NoEvolutions ; CelebiEvolutions
	dw NoEvolutions ; LeafeonEvolutions
	dw NoEvolutions ; GlaceonEvolutions
	dw NoEvolutions ; SylveonEvolutions
	assert_table_length NUM_POKEMON

	dw NoEvolutions ; Egg

	dw NoEvolutions ; MewtwoEvolutions
	dw NoEvolutions ; PartnerPikachuEvolutions
	dw NoEvolutions ; PartnerEeveeEvolutions
	dw RattataAlolanEvolutions
	dw NoEvolutions ; RaticateAlolanEvolutions
	dw SandshrewAlolanEvolutions
	dw NoEvolutions ; SandslashAlolanEvolutions
	dw VulpixAlolanEvolutions
	dw NoEvolutions ; NinetalesAlolanEvolutions
	dw DiglettAlolanEvolutions
	dw NoEvolutions ; DugtrioAlolanEvolutions
	dw MeowthAlolanEvolutions
	dw NoEvolutions ; PersianAlolanEvolutions
	dw GeodudeAlolanEvolutions
	dw GravelerAlolanEvolutions
	dw NoEvolutions ; GolemAlolanEvolutions
	dw GrimerAlolanEvolutions
	dw NoEvolutions ; MukAlolanEvolutions
	dw NoEvolutions ; RaichuAlolanEvolutions
	dw NoEvolutions ; ExeggutorAlolanEvolutions
	dw NoEvolutions ; MarowakAlolanEvolutions
	dw MeowthGalarianEvolutions
	dw PonytaGalarianEvolutions
	dw NoEvolutions ; RapidashGalarianEvolutions
	dw SlowpokeGalarianEvolutions
	dw NoEvolutions ; SlowbroGalarianEvolutions
	dw NoEvolutions ; SlowkingGalarianEvolutions
	dw FarfetchDGalarianEvolutions
	dw NoEvolutions ; WeezingGalarianEvolutions
	dw MrMimeGalarianEvolutions
	dw NoEvolutions ; ArticunoGalarianEvolutions
	dw NoEvolutions ; ZapdosGalarianEvolutions
	dw NoEvolutions ; MoltresGalarianEvolutions
	assert_table_length NUM_EXT_POKEMON

Evolutions::

BulbasaurEvolutions:
	evo_data EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions

IvysaurEvolutions:
	evo_data EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions

CharmanderEvolutions:
	evo_data EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions

CharmeleonEvolutions:
	evo_data EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions

SquirtleEvolutions:
	evo_data EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions

WartortleEvolutions:
	evo_data EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions

CaterpieEvolutions:
	evo_data EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions

MetapodEvolutions:
	evo_data EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions

WeedleEvolutions:
	evo_data EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions

KakunaEvolutions:
	evo_data EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions

PidgeyEvolutions:
	evo_data EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions

PidgeottoEvolutions:
	evo_data EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions

RattataPlainEvolutions:
RattataAlolanEvolutions:
	evo_data EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions

SpearowEvolutions:
	evo_data EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions

EkansEvolutions:
	evo_data EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions

PikachuEvolutions:
	evo_data EVOLVE_ITEM, THUNDERSTONE, RAICHU
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, RAICHU ; ALOLAN
	db 0 ; no more evolutions

SandshrewPlainEvolutions:
	evo_data EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions

SandshrewAlolanEvolutions:
	evo_data EVOLVE_ITEM, ICE_STONE, SANDSLASH
	db 0 ; no more evolutions

NidoranFEvolutions:
	evo_data EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions

NidorinaEvolutions:
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions

NidoranMEvolutions:
	evo_data EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions

NidorinoEvolutions:
	evo_data EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions

CleffaEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions

ClefairyEvolutions:
	evo_data EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions

VulpixPlainEvolutions:
	evo_data EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions

VulpixAlolanEvolutions:
	evo_data EVOLVE_ITEM, ICE_STONE, NINETALES
	db 0 ; no more evolutions

JigglypuffEvolutions:
	evo_data EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions

ZubatEvolutions:
	evo_data EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions

GolbatEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions

OddishEvolutions:
	evo_data EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions

GloomEvolutions:
	evo_data EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	evo_data EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions

ParasEvolutions:
	evo_data EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions

VenonatEvolutions:
	evo_data EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions

DiglettPlainEvolutions:
	evo_data EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions

DiglettAlolanEvolutions:
	evo_data EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions

MeowthPlainEvolutions:
MeowthAlolanEvolutions:
	evo_data EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions

MeowthGalarianEvolutions:
	evo_data EVOLVE_LEVEL, 28, PERRSERKER
	db 0 ; no more evolutions

PsyduckEvolutions:
	evo_data EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions

MankeyEvolutions:
	evo_data EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions

GrowlitheEvolutions:
	evo_data EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions

PoliwagEvolutions:
	evo_data EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions

PoliwhirlEvolutions:
	evo_data EVOLVE_ITEM, WATER_STONE, POLIWRATH
	evo_data EVOLVE_HOLDING, KINGS_ROCK, TR_ANYTIME, POLITOED
	db 0 ; no more evolutions

AbraEvolutions:
	evo_data EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions

KadabraEvolutions:
	evo_data EVOLVE_EVS, MON_SAT_EV, ALAKAZAM
	db 0 ; no more evolutions

MachopEvolutions:
	evo_data EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions

MachokeEvolutions:
	evo_data EVOLVE_EVS, MON_ATK_EV, MACHAMP
	db 0 ; no more evolutions

BellsproutEvolutions:
	evo_data EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions

WeepinbellEvolutions:
	evo_data EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions

TentacoolEvolutions:
	evo_data EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions

GeodudePlainEvolutions:
GeodudeAlolanEvolutions:
	evo_data EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions

GravelerPlainEvolutions:
GravelerAlolanEvolutions:
	evo_data EVOLVE_EVS, MON_DEF_EV, GOLEM
	db 0 ; no more evolutions

PonytaPlainEvolutions:
PonytaGalarianEvolutions:
	evo_data EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions

SlowpokePlainEvolutions:
SlowpokeGalarianEvolutions:
	evo_data EVOLVE_HOLDING, KINGS_ROCK, TR_ANYTIME, SLOWKING
	evo_data EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions

MagnemiteEvolutions:
	evo_data EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions

MagnetonEvolutions:
	evo_data EVOLVE_LOCATION, ROCK_TUNNEL, MAGNEZONE
	db 0 ; no more evolutions

FarfetchDGalarianEvolutions:
	evo_data EVOLVE_CRIT, TR_ANYTIME, SIRFETCH_D, PLAIN_FORM
	db 0 ; no more evolutions

DoduoEvolutions:
	evo_data EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions

SeelEvolutions:
	evo_data EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions

GrimerPlainEvolutions:
GrimerAlolanEvolutions:
	evo_data EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions

ShellderEvolutions:
	evo_data EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions

GastlyEvolutions:
	evo_data EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions

HaunterEvolutions:
	evo_data EVOLVE_EVS, MON_SPD_EV, GENGAR
	db 0 ; no more evolutions

OnixEvolutions:
	evo_data EVOLVE_HOLDING, METAL_COAT, TR_ANYTIME, STEELIX
	db 0 ; no more evolutions

DrowzeeEvolutions:
	evo_data EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions

KrabbyEvolutions:
	evo_data EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions

VoltorbEvolutions:
	evo_data EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions

ExeggcuteEvolutions:
	evo_data EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, EXEGGUTOR ; ALOLAN
	db 0 ; no more evolutions

CuboneEvolutions:
	evo_data EVOLVE_LEVEL, 28, MAROWAK
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, MAROWAK ; ALOLAN
	db 0 ; no more evolutions

KoffingEvolutions:
	evo_data EVOLVE_LEVEL, 35, WEEZING
	evo_data EVOLVE_ITEM, ODD_SOUVENIR, WEEZING ; GALARIAN
	db 0 ; no more evolutions

RhyhornEvolutions:
	evo_data EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions

RhydonEvolutions:
	evo_data EVOLVE_HOLDING, PROTECTOR, TR_ANYTIME, RHYPERIOR
	db 0 ; no more evolutions

ChanseyEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions

TangelaEvolutions:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, TANGROWTH
	db 0 ; no more evolutions

HorseaEvolutions:
	evo_data EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions

SeadraEvolutions:
	evo_data EVOLVE_HOLDING, DRAGON_SCALE, TR_ANYTIME, KINGDRA
	db 0 ; no more evolutions

TogepiEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions

TogeticEvolutions:
	evo_data EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions

StaryuEvolutions:
	evo_data EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions

MrMimeGalarianEvolutions:
	evo_data EVOLVE_LEVEL, 42, MR__RIME
	db 0 ; no more evolutions

ScytherEvolutions:
	evo_data EVOLVE_HOLDING, METAL_COAT, TR_ANYTIME, SCIZOR
	evo_data EVOLVE_HOLDING, HARD_STONE, TR_ANYTIME, KLEAVOR
	db 0 ; no more evolutions

ElectabuzzEvolutions:
	evo_data EVOLVE_HOLDING, ELECTIRIZER, TR_ANYTIME, ELECTIVIRE
	db 0 ; no more evolutions

MagmarEvolutions:
	evo_data EVOLVE_HOLDING, MAGMARIZER, TR_ANYTIME, MAGMORTAR
	db 0 ; no more evolutions

MagikarpEvolutions:
	evo_data EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions

EeveeEvolutions:
	evo_data EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	evo_data EVOLVE_ITEM, WATER_STONE, VAPOREON
	evo_data EVOLVE_ITEM, FIRE_STONE, FLAREON
	evo_data EVOLVE_ITEM, SHINY_STONE, SYLVEON
	evo_data EVOLVE_LOCATION, VIRIDIAN_FOREST, LEAFEON
	evo_data EVOLVE_LOCATION, ICE_PATH, GLACEON
	evo_data EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	evo_data EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db 0 ; no more evolutions

PorygonEvolutions:
	evo_data EVOLVE_HOLDING, UP_GRADE, TR_ANYTIME, PORYGON2
	db 0 ; no more evolutions

OmanyteEvolutions:
	evo_data EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions

KabutoEvolutions:
	evo_data EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions

DratiniEvolutions:
	evo_data EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions

DragonairEvolutions:
	evo_data EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions

ChikoritaEvolutions:
	evo_data EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions

BayleefEvolutions:
	evo_data EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions

CyndaquilEvolutions:
	evo_data EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions

QuilavaEvolutions:
	evo_data EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions

TotodileEvolutions:
	evo_data EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions

CroconawEvolutions:
	evo_data EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions

SentretEvolutions:
	evo_data EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions

HoothootEvolutions:
	evo_data EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions

GoldeenEvolutions:
	evo_data EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions

SpinarakEvolutions:
	evo_data EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions

ChinchouEvolutions:
	evo_data EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions

PichuEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions

HappinyEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CHANSEY
	db 0 ; no more evolutions

SmoochumEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, JYNX
	db 0 ; no more evolutions

MimeJrEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, MR__MIME
	db 0 ; no more evolutions

MunchlaxEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions

NatuEvolutions:
	evo_data EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions

MareepEvolutions:
	evo_data EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions

FlaaffyEvolutions:
	evo_data EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions

SunkernEvolutions:
	evo_data EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions

YanmaEvolutions:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions

WooperEvolutions:
	evo_data EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions

MurkrowEvolutions:
	evo_data EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db 0 ; no more evolutions

MisdreavusEvolutions:
	evo_data EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions

PinecoEvolutions:
	evo_data EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions

GligarEvolutions:
	evo_data EVOLVE_HOLDING, RAZOR_FANG, TR_ANYTIME, GLISCOR
	db 0 ; no more evolutions

SnubbullEvolutions:
	evo_data EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions

SneaselEvolutions:
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_ANYTIME, WEAVILE
	db 0 ; no more evolutions

TeddiursaEvolutions:
	evo_data EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions

SlugmaEvolutions:
	evo_data EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions

SwinubEvolutions:
	evo_data EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions

PiloswineEvolutions:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 0 ; no more evolutions

LickitungEvolutions:
	evo_data EVOLVE_MOVE, ROLLOUT, LICKILICKY
	db 0 ; no more evolutions

IgglybuffEvolutions:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions

HoundourEvolutions:
	evo_data EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions

PhanpyEvolutions:
	evo_data EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions

Porygon2Evolutions:
	evo_data EVOLVE_HOLDING, DUBIOUS_DISC, TR_ANYTIME, PORYGON_Z
	db 0 ; no more evolutions

TyrogueEvolutions:
	evo_data EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	evo_data EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	evo_data EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions

ElekidEvolutions:
	evo_data EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions

MagbyEvolutions:
	evo_data EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions

LarvitarEvolutions:
	evo_data EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions

PupitarEvolutions:
	evo_data EVOLVE_LEVEL, 55, TYRANITAR
NoEvolutions::
	db 0 ; no more evolutions
