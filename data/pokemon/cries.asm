mon_cry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

CryHeaders::
; entries correspond to constants/pokemon_constants.asm
	mon_cry CRY_BULBASAUR,   $080,  $081 ; Bulbasaur
	mon_cry CRY_BULBASAUR,   $020,  $100 ; Ivysaur
	mon_cry CRY_BULBASAUR,   $000,  $140 ; Venusaur
	mon_cry CRY_CHARMANDER,  $060,  $0c0 ; Charmander
	mon_cry CRY_CHARMANDER,  $020,  $0c0 ; Charmeleon
	mon_cry CRY_CHARMANDER,  $000,  $100 ; Charizard
	mon_cry CRY_SQUIRTLE,    $060,  $0c0 ; Squirtle
	mon_cry CRY_SQUIRTLE,    $020,  $0c0 ; Wartortle
	mon_cry CRY_BLASTOISE,   $000,  $100 ; Blastoise
	mon_cry CRY_CATERPIE,    $080,  $0a0 ; Caterpie
	mon_cry CRY_METAPOD,     $0cc,  $081 ; Metapod
	mon_cry CRY_CATERPIE,    $077,  $0c0 ; Butterfree
	mon_cry CRY_WEEDLE,      $0ee,  $081 ; Weedle
	mon_cry CRY_BLASTOISE,   $0ff,  $081 ; Kakuna
	mon_cry CRY_BLASTOISE,   $060,  $100 ; Beedrill
	mon_cry CRY_PIDGEY,      $0df,  $084 ; Pidgey
	mon_cry CRY_PIDGEOTTO,   $028,  $140 ; Pidgeotto
	mon_cry CRY_PIDGEOTTO,   $011,  $17f ; Pidgeot
	mon_cry CRY_RATTATA,     $000,  $100 ; Rattata
	mon_cry CRY_RATTATA,     $020,  $17f ; Raticate
	mon_cry CRY_SPEAROW,     $000,  $100 ; Spearow
	mon_cry CRY_FEAROW,      $040,  $120 ; Fearow
	mon_cry CRY_EKANS,       $012,  $0c0 ; Ekans
	mon_cry CRY_EKANS,       $0e0,  $090 ; Arbok
	mon_cry CRY_PICHU,       $000,  $140 ; Pichu
	mon_cry CRY_BULBASAUR,   $0ee,  $081 ; Pikachu
	mon_cry CRY_RAICHU,      $0ee,  $088 ; Raichu
	mon_cry CRY_NIDORAN_M,   $020,  $0c0 ; Sandshrew
	mon_cry CRY_NIDORAN_M,   $0ff,  $17f ; Sandslash
	mon_cry CRY_NIDORAN_F,   $000,  $100 ; NidoranF
	mon_cry CRY_NIDORAN_F,   $02c,  $160 ; Nidorina
	mon_cry CRY_NIDOQUEEN,   $000,  $100 ; Nidoqueen
	mon_cry CRY_NIDORAN_M,   $000,  $100 ; NidoranM
	mon_cry CRY_NIDORAN_M,   $02c,  $140 ; Nidorino
	mon_cry CRY_RAICHU,      $000,  $100 ; Nidoking
	mon_cry CRY_CLEFAIRY,    $0cc,  $081 ; Clefairy
	mon_cry CRY_CLEFAIRY,    $0aa,  $0a0 ; Clefable
	mon_cry CRY_VULPIX,      $04f,  $090 ; Vulpix
	mon_cry CRY_VULPIX,      $088,  $0e0 ; Ninetales
	mon_cry CRY_PIDGEY,      $0ff,  $0b5 ; Jigglypuff
	mon_cry CRY_PIDGEY,      $068,  $0e0 ; Wigglytuff
	mon_cry CRY_SQUIRTLE,    $0e0,  $100 ; Zubat
	mon_cry CRY_SQUIRTLE,    $0fa,  $100 ; Golbat
	mon_cry CRY_SQUIRTLE,   -$010,  $140 ; Crobat
	mon_cry CRY_ODDISH,      $0dd,  $081 ; Oddish
	mon_cry CRY_ODDISH,      $0aa,  $0c0 ; Gloom
	mon_cry CRY_VILEPLUME,   $022,  $17f ; Vileplume
	mon_cry CRY_BELLOSSOM,   $084,  $150 ; Bellossom
	mon_cry CRY_PARAS,       $020,  $160 ; Paras
	mon_cry CRY_PARAS,       $042,  $17f ; Parasect
	mon_cry CRY_VENONAT,     $044,  $0c0 ; Venonat
	mon_cry CRY_VENONAT,     $029,  $100 ; Venomoth
	mon_cry CRY_DIGLETT,     $0aa,  $081 ; Diglett
	mon_cry CRY_DIGLETT,     $02a,  $090 ; Dugtrio
	mon_cry CRY_CLEFAIRY,    $077,  $090 ; Meowth
	mon_cry CRY_CLEFAIRY,    $099,  $17f ; Persian
	mon_cry CRY_PSYDUCK,     $020,  $0e0 ; Psyduck
	mon_cry CRY_PSYDUCK,     $0ff,  $0c0 ; Golduck
	mon_cry CRY_NIDOQUEEN,   $0dd,  $0e0 ; Mankey
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; Primeape
	mon_cry CRY_GROWLITHE,   $020,  $0c0 ; Growlithe
	mon_cry CRY_WEEDLE,      $000,  $100 ; Arcanine
	mon_cry CRY_PIDGEY,      $0ff,  $17f ; Poliwag
	mon_cry CRY_PIDGEY,      $077,  $0e0 ; Poliwhirl
	mon_cry CRY_PIDGEY,      $000,  $17f ; Poliwrath
	mon_cry CRY_BELLOSSOM,  -$2a3,  $1c8 ; Politoed
	mon_cry CRY_METAPOD,     $0c0,  $081 ; Abra
	mon_cry CRY_METAPOD,     $0a8,  $140 ; Kadabra
	mon_cry CRY_METAPOD,     $098,  $17f ; Alakazam
	mon_cry CRY_GROWLITHE,   $0ee,  $081 ; Machop
	mon_cry CRY_GROWLITHE,   $048,  $0e0 ; Machoke
	mon_cry CRY_GROWLITHE,   $008,  $140 ; Machamp
	mon_cry CRY_PSYDUCK,     $055,  $081 ; Bellsprout
	mon_cry CRY_WEEPINBELL,  $044,  $0a0 ; Weepinbell
	mon_cry CRY_WEEPINBELL,  $066,  $14c ; Victreebel
	mon_cry CRY_VENONAT,     $000,  $100 ; Tentacool
	mon_cry CRY_VENONAT,     $0ee,  $17f ; Tentacruel
	mon_cry CRY_VULPIX,      $0f0,  $090 ; Geodude
	mon_cry CRY_VULPIX,      $000,  $100 ; Graveler
	mon_cry CRY_GOLEM,       $0e0,  $0c0 ; Golem
	mon_cry CRY_WEEPINBELL,  $000,  $100 ; Ponyta
	mon_cry CRY_WEEPINBELL,  $020,  $140 ; Rapidash
	mon_cry CRY_SLOWPOKE,    $000,  $100 ; Slowpoke
	mon_cry CRY_GROWLITHE,   $000,  $100 ; Slowbro
	mon_cry CRY_SLOWKING,    $104,  $200 ; Slowking
	mon_cry CRY_METAPOD,     $080,  $0e0 ; Magnemite
	mon_cry CRY_METAPOD,     $020,  $140 ; Magneton
	mon_cry CRY_METAPOD,     $020,  $140 ; Magnezone
	mon_cry CRY_SPEAROW,     $0dd,  $081 ; FarfetchD
	mon_cry CRY_DIGLETT,     $0bb,  $081 ; Doduo
	mon_cry CRY_DIGLETT,     $099,  $0a0 ; Dodrio
	mon_cry CRY_SEEL,        $088,  $140 ; Seel
	mon_cry CRY_SEEL,        $023,  $17f ; Dewgong
	mon_cry CRY_GRIMER,      $000,  $100 ; Grimer
	mon_cry CRY_MUK,         $0ef,  $17f ; Muk
	mon_cry CRY_FEAROW,      $000,  $100 ; Shellder
	mon_cry CRY_FEAROW,      $06f,  $160 ; Cloyster
	mon_cry CRY_METAPOD,     $000,  $100 ; Gastly
	mon_cry CRY_METAPOD,     $030,  $0c0 ; Haunter
	mon_cry CRY_MUK,         $000,  $17f ; Gengar
	mon_cry CRY_EKANS,       $0ff,  $140 ; Onix
	mon_cry CRY_TYPHLOSION,  $0ef,  $0f7 ; Steelix
	mon_cry CRY_DROWZEE,     $088,  $0a0 ; Drowzee
	mon_cry CRY_DROWZEE,     $0ee,  $0c0 ; Hypno
	mon_cry CRY_KRABBY,      $020,  $160 ; Krabby
	mon_cry CRY_KRABBY,      $0ee,  $160 ; Kingler
	mon_cry CRY_VOLTORB,     $0ed,  $100 ; Voltorb
	mon_cry CRY_VOLTORB,     $0a8,  $110 ; Electrode
	mon_cry CRY_DIGLETT,     $000,  $100 ; Exeggcute
	mon_cry CRY_DROWZEE,     $000,  $100 ; Exeggutor
	mon_cry CRY_CLEFAIRY,    $000,  $100 ; Cubone
	mon_cry CRY_ODDISH,      $04f,  $0e0 ; Marowak
	mon_cry CRY_TYROGUE,     $02c,  $108 ; Tyrogue
	mon_cry CRY_GOLEM,       $080,  $140 ; Hitmonlee
	mon_cry CRY_SEEL,        $0ee,  $140 ; Hitmonchan
	mon_cry CRY_SLUGMA,      $000,  $100 ; Hitmontop
	mon_cry CRY_SEEL,        $000,  $100 ; Lickitung
	mon_cry CRY_GOLEM,       $0e6,  $15d ; Koffing
	mon_cry CRY_GOLEM,       $0ff,  $17f ; Weezing
	mon_cry CRY_CHARMANDER,  $000,  $100 ; Rhyhorn
	mon_cry CRY_RHYDON,      $000,  $100 ; Rhydon
	mon_cry CRY_RHYDON,      $000,  $100 ; Rhyperior
	mon_cry CRY_PIDGEOTTO,   $00a,  $140 ; Chansey
	mon_cry CRY_SLOWKING,    $293,  $140 ; Blissey
	mon_cry CRY_GOLEM,       $000,  $100 ; Tangela
	mon_cry CRY_GOLEM,       $000,  $100 ; Tangrowth
	mon_cry CRY_KANGASKHAN,  $000,  $100 ; Kangaskhan
	mon_cry CRY_CLEFAIRY,    $099,  $090 ; Horsea
	mon_cry CRY_CLEFAIRY,    $03c,  $081 ; Seadra
	mon_cry CRY_SLUGMA,      $2fb,  $100 ; Kingdra
	mon_cry CRY_CATERPIE,    $080,  $0c0 ; Goldeen
	mon_cry CRY_CATERPIE,    $010,  $17f ; Seaking
	mon_cry CRY_PARAS,       $002,  $0a0 ; Staryu
	mon_cry CRY_PARAS,       $000,  $100 ; Starmie
	mon_cry CRY_KRABBY,      $008,  $0c0 ; MrMime
	mon_cry CRY_CATERPIE,    $000,  $100 ; Scyther
	mon_cry CRY_AMPHAROS,    $000,  $160 ; Scizor
	mon_cry CRY_DROWZEE,     $0ff,  $17f ; Jynx
	mon_cry CRY_REMORAID,   -$2d8,  $0b4 ; Elekid
	mon_cry CRY_VOLTORB,     $08f,  $17f ; Electabuzz
	mon_cry CRY_VOLTORB,     $08f,  $17f ; Electivire
	mon_cry CRY_TEDDIURSA,   $176,  $03a ; Magby
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; Magmar
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; Magmortar
	mon_cry CRY_PIDGEOTTO,   $000,  $100 ; Pinsir
	mon_cry CRY_SQUIRTLE,    $011,  $0c0 ; Tauros
	mon_cry CRY_GLIGAR,     -$1cd,  $1a0 ; Miltank
	mon_cry CRY_EKANS,       $080,  $080 ; Magikarp
	mon_cry CRY_EKANS,       $000,  $100 ; Gyarados
	mon_cry CRY_LAPRAS,      $000,  $100 ; Lapras
	mon_cry CRY_PIDGEY,      $0ff,  $17f ; Ditto
	mon_cry CRY_VENONAT,     $088,  $0e0 ; Eevee
	mon_cry CRY_VENONAT,     $0aa,  $17f ; Vaporeon
	mon_cry CRY_VENONAT,     $03d,  $100 ; Jolteon
	mon_cry CRY_VENONAT,     $010,  $0a0 ; Flareon
	mon_cry CRY_TYROGUE,     $0a2,  $140 ; Espeon
	mon_cry CRY_VENONAT,    -$0e9,  $0f0 ; Umbreon
	mon_cry CRY_VENONAT,     $03d,  $160 ; Leafeon
	mon_cry CRY_VENONAT,     $0b0,  $16f ; Glaceon
	mon_cry CRY_VENONAT,     $0b0,  $16f ; Sylveon
	mon_cry CRY_WEEPINBELL,  $0aa,  $17f ; Porygon
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; Porygon2
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; PorygonZ
	mon_cry CRY_GROWLITHE,   $0f0,  $081 ; Omanyte
	mon_cry CRY_GROWLITHE,   $0ff,  $0c0 ; Omastar
	mon_cry CRY_CATERPIE,    $0bb,  $0c0 ; Kabuto
	mon_cry CRY_FEAROW,      $0ee,  $081 ; Kabutops
	mon_cry CRY_VILEPLUME,   $020,  $170 ; Aerodactyl
	mon_cry CRY_GRIMER,      $055,  $081 ; Munchlax
	mon_cry CRY_GRIMER,      $055,  $081 ; Snorlax
	mon_cry CRY_RAICHU,      $080,  $0c0 ; Articuno
	mon_cry CRY_FEAROW,      $0ff,  $100 ; Zapdos
	mon_cry CRY_RAICHU,      $0f8,  $0c0 ; Moltres
	mon_cry CRY_BULBASAUR,   $060,  $0c0 ; Dratini
	mon_cry CRY_BULBASAUR,   $040,  $100 ; Dragonair
	mon_cry CRY_BULBASAUR,   $03c,  $140 ; Dragonite
	mon_cry CRY_PARAS,       $099,  $17f ; Mewtwo
	mon_cry CRY_PARAS,       $0ee,  $17f ; Mew
	mon_cry CRY_TOGEPI,      $010,  $100 ; Togepi
	mon_cry CRY_TOGETIC,     $03b,  $038 ; Togetic
	mon_cry CRY_TOGETIC,     $03b,  $038 ; Togekiss

	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0
	mon_cry CRY_NIDORAN_M,      0,     0 ; Celebi
	mon_cry CRY_NIDORAN_M,      0,     0 ; Egg
