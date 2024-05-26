CheckPartyTechnique: ; c742
; Check if a monster in your party has field technique d.
	ld e, 0
	xor a
	ld [wCurPartyMon], a
.loop
	ld c, e
	ld b, 0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	call IsAPokemon
	jr c, .no

	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Form
	ld a, e
	rst AddNTimes
	bit MON_IS_EGG_F, [hl]
	jr nz, .next                 ; if this mon is an egg, branch and skip
	ld bc, MON_SPECIES - MON_FORM
	add hl, bc
	ld a, [hl]                   ; a = SPECIES of current mon

	ld b, 0
	dec a       ; zero-based index
	ld c, a
	ld hl, TechniquePointers
	add hl, bc
	add hl, bc	; hl points to the species' techniques list pointer
	ld a, [hli]
	ld b, [hl]
	ld c, a     ; bc now points to actual techniques list

.check
	ld a, [bc]		    ; a = field technique ID
	and a               ; is a == 0? (End of tech list)
	jr z, .next         ; if yes, branch and skip to next mon
	cp d                ; is a == d? (The tech we want)
	jr z, .yes          ; if yes, branch and proceed
	inc bc
	jr nz, .check

.next
	inc e
	jr .loop

.yes
	ld a, e
	ld [wCurPartyMon], a ; which mon has the move
	xor a
	ret
.no
	scf
	ret

TechniquePointers::
	table_width 2, TechniquePointers
	dw TechniqueChop		; BULBASAUR
	dw IvysaurTechniques	; IVYSAUR
	dw IvysaurTechniques	; VENUSAUR
	dw TechniqueChop		; CHARMANDER
	dw TechniqueChop		; CHARMELEON
	dw CharizardTechniques	; CHARIZARD
	dw NoTechniques			; SQUIRTLE
	dw NoTechniques			; WARTORTLE
	dw BlastoiseTechniques	; BLASTOISE
	dw NoTechniques			; CATERPIE
	dw NoTechniques			; METAPOD
	dw ButterfreeTechniques	; BUTTERFREE
	dw NoTechniques			; WEEDLE
	dw NoTechniques			; KAKUNA
	dw BeedrillTechniques	; BEEDRILL
	dw NoTechniques			; PIDGEY
	dw TechniqueSoar		; PIDGEOTTO
	dw TechniqueSoar		; PIDGEOT
	dw NoTechniques			; RATTATA
	dw RaticateTechniques	; RATICATE
	dw NoTechniques			; SPEAROW
	dw TechniqueSoar		; FEAROW
	dw NoTechniques			; EKANS
	dw TechniqueSlam		; ARBOK
	dw TechniqueGlow		; PIKACHU
	dw RaichuTechniques		; RAICHU
	dw TechniqueChop		; SANDSHREW
	dw RaticateTechniques	; SANDSLASH
	dw NoTechniques			; NIDORAN-F
	dw NoTechniques			; NIDORINA
	dw TechniqueSlam		; NIDOQUEEN
	dw NoTechniques			; NIDORAN-M
	dw NoTechniques			; NIDORINO
	dw TechniqueSlam		; NIDOKING
	dw ClefairyTechniques	; CLEFAIRY
	dw ClefableTechniques	; CLEFABLE
	dw NoTechniques			; VULPIX
	dw NoTechniques			; NINETALES
	dw ClefairyTechniques	; JIGGLYPUFF
	dw ClefableTechniques	; WIGGLYTUFF
	dw NoTechniques			; ZUBAT
	dw NoTechniques			; GOLBAT
	dw TechniqueChop		; ODDISH
	dw GloomTechniques		; GLOOM
	dw GloomTechniques		; VILEPLUME
	dw BeedrillTechniques	; PARAS
	dw GloomTechniques		; PARASECT
	dw TechniqueGlow		; VENONAT
	dw ButterfreeTechniques	; VENOMOTH
	dw NoTechniques			; DIGLETT
	dw NoTechniques			; DUGTRIO
	dw TechniqueGlow		; MEOWTH
	dw TechniqueGlow		; PERSIAN
	dw TechniqueGlow		; PSYDUCK
	dw GolduckTechniques	; GOLDUCK
	dw TechniqueSlam		; MANKEY
	dw TechniqueSlam		; PRIMEAPE
	dw NoTechniques			; GROWLITHE
	dw TechniqueSlam		; ARCANINE
	dw NoTechniques			; POLIWAG
	dw TechniqueSwim		; POLIWHIRL
	dw BlastoiseTechniques	; POLIWRATH
	dw AbraTechniques		; ABRA
	dw AbraTechniques		; KADABRA
	dw AbraTechniques		; ALAKAZAM
	dw TechniqueSlam		; MACHOP
	dw TechniqueSlam		; MACHOKE
	dw TechniqueSlam		; MACHAMP
	dw BeedrillTechniques	; BELLSPROUT
	dw GloomTechniques		; WEEPINBELL
	dw GloomTechniques		; VICTREEBEL
	dw TechniqueChop		; TENTACOOL
	dw TentacruelTechniques	; TENTACRUEL
	dw TechniqueSlam		; GEODUDE
	dw TechniqueSlam		; GRAVELER
	dw TechniqueSlam		; GOLEM
	dw NoTechniques			; PONYTA
	dw NoTechniques			; RAPIDASH
	dw AbraTechniques		; SLOWPOKE
	dw SlowbroTechniques	; SLOWBRO
	dw AbraTechniques		; MAGNEMITE
	dw AbraTechniques		; MAGNETON
	dw TechniqueChop		; FARFETCHD
	dw NoTechniques			; DODUO
	dw NoTechniques			; DODRIO
	dw NoTechniques			; SEEL
	dw TechniqueSwim		; DEWGONG
	dw NoTechniques			; GRIMER
	dw NoTechniques			; MUK
	dw NoTechniques			; SHELLDER
	dw TechniqueSwim		; CLOYSTER
	dw NoTechniques			; GASTLY
	dw NoTechniques			; HAUNTER
	dw TechniqueSlam		; GENGAR
	dw TechniqueSlam		; ONIX
	dw AbraTechniques		; DROWZEE
	dw AbraTechniques		; HYPNO
	dw TechniqueChop		; KRABBY
	dw KinglerTechniques	; KINGLER
	dw AbraTechniques		; VOLTORB
	dw AbraTechniques		; ELECTRODE
	dw NoTechniques			; EXEGGCUTE
	dw ExeggutorTechniques	; EXEGGUTOR
	dw NoTechniques			; CUBONE
	dw TechniqueSlam		; MAROWAK
	dw TechniqueSlam		; HITMONLEE
	dw TechniqueSlam		; HITMONCHAN
	dw RaticateTechniques	; LICKITUNG
	dw TechniqueGlow		; KOFFING
	dw TechniqueGlow		; WEEZING
	dw TechniqueSlam		; RHYHORN
	dw BlastoiseTechniques	; RHYDON
	dw ChanseyTechniques	; CHANSEY
	dw GloomTechniques		; TANGELA
	dw TechniqueSlam		; KANGASKHAN
	dw NoTechniques			; HORSEA
	dw TechniqueSwim		; SEADRA
	dw NoTechniques			; GOLDEEN
	dw TechniqueSwim		; SEAKING
	dw AbraTechniques		; STARYU
	dw StarmieTechniques	; STARMIE
	dw AbraTechniques		; MR MIME
	dw TechniqueSwim		; SCYTHER
	dw ButterfreeTechniques	; JYNX
	dw ExeggutorTechniques	; ELECTABUZZ
	dw ExeggutorTechniques	; MAGMAR
	dw RaticateTechniques	; PINSIR
	dw TechniqueSlam		; TAUROS
	dw NoTechniques			; MAGIKARP
	dw BlastoiseTechniques	; GYARADOS
	dw LaprasTechniques		; LAPRAS
	dw NoTechniques			; DIITO
	dw NoTechniques			; EEVEE
	dw NoTechniques			; VAPOREON
	dw NoTechniques			; JOLTEON
	dw NoTechniques			; FLAREON
	dw AbraTechniques		; PORYGON
	dw NoTechniques			; OMANYTE
	dw TechniqueSwim		; OMASTAR
	dw NoTechniques			; KABUTO
	dw TentacruelTechniques	; KABUTOPS
	dw AerodactylTechniques	; AERODACTYL
	dw BlastoiseTechniques	; SNORLAX
	dw TechniqueSoar		; ARTICUNO
	dw ZapdosTechniques		; ZAPDOS
	dw TechniqueSoar		; MOLTRES
	dw NoTechniques			; DRATINI
	dw TechniqueSwim		; DRAGONAIR
	dw DragoniteTechniques	; DRAGONITE
	dw MewtwoTechniques		; MEWTWO
	dw AbraTechniques		; MEW

	dw NoTechniques			; HOPPIP
	dw NoTechniques			; SKIPLOOM
	dw NoTechniques			; JUMPLUFF
	dw NoTechniques			; LEDYBA
	dw NoTechniques			; LEDIAN
	dw NoTechniques			; SKARMORY
	dw NoTechniques			; AZURILL
	dw NoTechniques			; MARILL
	dw NoTechniques			; AZUMARILL
	dw NoTechniques			; SENTRET
	dw TechniqueChop		; FURRET
	dw NoTechniques			; HOOTHOOT
	dw TechniqueSoar		; NOCTOWL
	dw NoTechniques			; TOGEPI
	dw NoTechniques			; TOGETIC
	dw NoTechniques			; SPINARAK
	dw BeedrillTechniques	; ARIADOS
	dw TechniqueSoar		; CROBAT
	dw NoTechniques			; CHINCHOU
	dw TechniqueSwim		; LANTURN
	dw NoTechniques			; PICHU
	dw NoTechniques			; MUNCHLAX
	dw AbraTechniques		; MAGNEZONE
	dw BlastoiseTechniques	; RHYPERIOR
	dw GloomTechniques		; TANGROWTH
	dw NoTechniques			; NATU
	dw TechniqueSoar		; XATU
	dw TechniqueGlow		; MAREEP
	dw TechniqueGlow		; FLAFFY
	dw TechniqueGlow		; AMPHAROS
	dw GloomTechniques		; BELLOSSOM
	dw RaticateTechniques	; LICKILICKY
	dw BlastoiseTechniques	; POLITOED
	dw NoTechniques			; SUNKERN
	dw TechniqueChop		; SUNFLORA
	dw NoTechniques			; YANMA
	dw NoTechniques			; YANMEGA
	dw NoTechniques			; WOOPER
	dw BlastoiseTechniques	; QUAGSIRE
	dw NoTechniques			; ESPEON
	dw NoTechniques			; UMBREON
	dw NoTechniques			; MURKROW
	dw TechniqueSoar		; HONCHKROW
	dw SlowbroTechniques	; SLOWKING
	dw NoTechniques			; MISDREAVUS
	dw NoTechniques			; MISMAGIUS
	dw RaticateTechniques	; KLEAVOR
	dw RaticateTechniques	; SIRFETCHD
	dw AbraTechniques		; MR RIME
	dw NoTechniques			; PINECO
	dw NoTechniques			; FORRETRESS
	dw TechniqueGlow		; PERRSERKER
	dw NoTechniques			; GLIGAR
	dw TechniqueChop		; GLISCOR
	dw TechniqueSlam		; STEELIX
	dw ClefairyTechniques	; SNUBBULL
	dw ClefableTechniques	; GRANBULL
	dw TechniqueSlam		; ANNIHILAPE
	dw RaticateTechniques	; SCIZOR
	dw NoTechniques			; SHUCKLE
	dw RaticateTechniques	; HERACROSS
	dw TechniqueChop		; SNEASEL
	dw TechniqueChop		; WEAVILE
	dw NoTechniques			; TEDDIURSA
	dw TechniqueSlam		; URSARING
	dw TechniqueGlow		; SLUGMA
	dw TechniqueGlow		; MAGCARGO
	dw NoTechniques			; SWINUB
	dw NoTechniques			; PILOSWINE
	dw TechniqueSlam		; MAMOSWINE
	dw NoTechniques			; HAPPINY
	dw NoTechniques			; SMOOCHUM
	dw NoTechniques			; MIME_JR_
	dw TechniqueSoar		; TOGEKISS
	dw NoTechniques			; IGGLYBUFF
	dw NoTechniques			; HOUNDOUR
	dw NoTechniques			; HOUNDOOM
	dw TechniqueSwim		; KINGDRA
	dw NoTechniques			; PHANPY
	dw TechniqueSlam		; DONPHAN
	dw AbraTechniques		; PORYGON2
	dw AbraTechniques		; PORYGONZ
	dw NoTechniques			; CLEFFA
	dw TechniqueSlam		; TYROGUE
	dw TechniqueSlam		; HITMONTOP
	dw NoTechniques			; ELEKID
	dw ExeggutorTechniques	; ELECTIVIRE
	dw NoTechniques			; MAGBY
	dw ExeggutorTechniques	; MAGMORTAR
	dw MiltankTechniques	; MILTANK
	dw ChanseyTechniques	; BLISSEY
	dw NoTechniques			; KANGASKID
	dw NoTechniques			; MELTAN
	dw TechniqueSlam		; MELMETAL
	dw NoTechniques			; LARVITAR
	dw NoTechniques			; PUPITAR
	dw TechniqueSlam		; TYRANITAR
	dw TechniqueChop		; SNEASLER
	dw TechniqueSlam		; URSALUNA
	dw TechniqueSlam		; CLODSIRE
	dw NoTechniques			; LEAFEON
	dw NoTechniques			; GLACEON
	dw NoTechniques			; SYLVEON
	assert_table_length NUM_POKEMON

	dw NoTechniques ; Egg

	dw AbraTechniques		; ARMORED_MEWTWO
	dw NoTechniques			; PARTNER_PIKACHU
	dw NoTechniques			; PARTNER_EEVEE

	dw NoTechniques			; RATTATA
	dw RaticateTechniques
	dw TechniqueChop		; SANDSHREW
	dw RaticateTechniques	; SANDSLASH
	dw NoTechniques			; VULPIX
	dw NoTechniques			; NINETALES
	dw NoTechniques			; DIGLETT
	dw NoTechniques			; DUGTRIO
	dw TechniqueGlow		; MEOWTH
	dw TechniqueGlow		; PERSIAN
	dw TechniqueSlam		; GEODUDE ; ADD GLOW TO THIS LINE???
	dw TechniqueSlam		; GRAVELER
	dw TechniqueSlam		; GOLEM
	dw NoTechniques			; GRIMER
	dw NoTechniques			; MUK
	dw RaichuTechniques
	dw ExeggutorTechniques
	dw TechniqueSlam		; MAROWAK

	dw TechniqueGlow		; MEOWTH
	dw NoTechniques			; PONYTA
	dw NoTechniques			; RAPIDASH
	dw AbraTechniques		; SLOWPOKE
	dw SlowbroTechniques
	dw SlowbroTechniques	; SLOWKING
	dw TechniqueChop		; FARFETCHD
	dw TechniqueGlow		; WEEZING
	dw AbraTechniques		; MR MIME
	dw TechniqueSoar		; ARTICUNO
	dw ZapdosTechniques
	dw TechniqueSoar		; MOLTRES

	dw NoTechniques			; GROWLITHE
	dw TechniqueSlam		; ARCANINE
	dw AbraTechniques		; VOLTORB
	dw AbraTechniques		; ELECTRODE
	dw TechniqueChop		; SNEASEL

	dw NoTechniques			; WOOPER
	dw TechniqueSlam		; TAUROS
	dw TechniqueSlam		; TAUROS_F
	dw TechniqueSlam		; TAUROS_W
	assert_table_length NUM_EXT_POKEMON

Techniques::

TechniqueChop:
	db CHOP
	db 0

TechniqueSoar:
	db SOAR
	db 0

TechniqueSwim:
	db SWIM
	db 0

TechniqueSlam:
	db SLAM
	db 0

TechniqueGlow:
	db GLOW
	db 0

IvysaurTechniques:
	db CHOP
	db LURE
	db 0

CharizardTechniques:
	db CHOP
	db SOAR
	db SLAM
	db 0

BlastoiseTechniques:
	db SWIM
	db SLAM
	db 0

ButterfreeTechniques:
	db CHOP ; TEMP
	db GLOW
	db WARP
	db LURE
	db 0

BeedrillTechniques:
	db CHOP
	db GLOW
	db 0

RaticateTechniques:
	db CHOP
	db SLAM
	db 0

RaichuTechniques:
	db SLAM
	db GLOW
	db 0

ClefairyTechniques:
	db GLOW
	db WARP
	db LULL
	db 0

ClefableTechniques:
	db SLAM
	db GLOW
	db WARP
	db LULL
	db 0

GloomTechniques:
	db CHOP
	db GLOW
	db LURE
	db 0

GolduckTechniques:
	db SWIM
	db SLAM
	db GLOW
	db 0

AbraTechniques:
	db GLOW
	db WARP
	db 0

TentacruelTechniques:
	db CHOP
	db SWIM
	db 0

SlowbroTechniques:
	db SWIM
	db SLAM
	db GLOW
	db WARP
	db 0

KinglerTechniques:
	db CHOP
	db SWIM
	db SLAM
	db 0

ExeggutorTechniques:
	db SLAM
	db GLOW
	db WARP
	db 0

ChanseyTechniques:
	db SLAM
	db GLOW
	db WARP
	db HEAL
	db 0

StarmieTechniques:
	db SWIM
	db GLOW
	db WARP
	db 0

MiltankTechniques:
	db SLAM
	db HEAL
	db 0

LaprasTechniques:
	db SWIM
	db SLAM
	db LULL
	db 0

AerodactylTechniques:
	db SOAR
	db SOAR
	db 0

ZapdosTechniques:
	db SOAR
	db GLOW
	db 0

DragoniteTechniques:
	db SOAR
	db SWIM
	db SLAM
	db 0

MewtwoTechniques:
	db CHOP
	db SLAM
	db GLOW
	db WARP
NoTechniques:
	db 0
