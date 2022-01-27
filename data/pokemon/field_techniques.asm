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
	dw IvysaurTechniques
	dw IvysaurTechniques	; VENUSAUR
	dw TechniqueChop		; CHARMANDER
	dw TechniqueChop		; CHARMELEON
	dw CharizardTechniques
	dw NoTechniques			; SQUIRTLE
	dw NoTechniques			; WARTORTLE
	dw BlastoiseTechniques
	dw NoTechniques			; CATERPIE
	dw NoTechniques			; METAPOD
	dw ButterfreeTechniques
	dw NoTechniques			; WEEDLE
	dw NoTechniques			; KAKUNA
	dw BeedrillTechniques
	dw NoTechniques			; PIDGEY
	dw TechniqueSoar		; PIDGEOTTO
	dw TechniqueSoar		; PIDGEOT
	dw NoTechniques			; RATTATA
	dw RaticateTechniques
	dw NoTechniques			; SPEAROW
	dw TechniqueSoar		; FEAROW
	dw NoTechniques			; EKANS
	dw TechniquePush		; ARBOK
	dw TechniqueGlow		; PIKACHU
	dw RaichuTechniques
	dw TechniqueChop		; SANDSHREW
	dw RaticateTechniques	; SANDSLASH
	dw NoTechniques			; NIDORAN-F
	dw NoTechniques			; NIDORINA
	dw TechniquePush		; NIDOQUEEN
	dw NoTechniques			; NIDORAN-M
	dw NoTechniques			; NIDORINO
	dw TechniquePush		; NIDOKING
	dw ClefairyTechniques
	dw ClefableTechniques
	dw NoTechniques			; VULPIX
	dw NoTechniques			; NINETALES
	dw ClefairyTechniques	; JIGGLYPUFF
	dw ClefableTechniques	; WIGGLYTUFF
	dw NoTechniques			; ZUBAT
	dw NoTechniques			; GOLBAT
	dw TechniqueChop		; ODDISH
	dw GloomTechniques
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
	dw GolduckTechniques
	dw NoTechniques			; MANKEY
	dw TechniquePush		; PRIMEAPE
	dw NoTechniques			; GROWLITHE
	dw TechniquePush		; ARCANINE
	dw NoTechniques			; POLIWAG
	dw TechniqueSwim		; POLIWHIRL
	dw BlastoiseTechniques	; POLIWRATH
	dw AbraTechniques
	dw AbraTechniques		; KADABRA
	dw AbraTechniques		; ALAKAZAM
	dw TechniquePush		; MACHOP
	dw TechniquePush		; MACHOKE
	dw TechniquePush		; MACHAMP
	dw BeedrillTechniques	; BELLSPROUT
	dw GloomTechniques		; WEEPINBELL
	dw GloomTechniques		; VICTREEBEL
	dw TechniqueChop		; TENTACOOL
	dw TentacruelTechniques
	dw NoTechniques			; GEODUDE
	dw TechniquePush		; GRAVELER
	dw TechniquePush		; GOLEM
	dw NoTechniques			; PONYTA
	dw NoTechniques			; RAPIDASH
	dw AbraTechniques		; SLOWPOKE
	dw SlowbroTechniques
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
	dw TechniquePush		; GENGAR
	dw TechniquePush		; ONIX
	dw AbraTechniques		; DROWZEE
	dw AbraTechniques		; HYPNO
	dw TechniqueChop		; KRABBY
	dw KinglerTechniques
	dw AbraTechniques		; VOLTORB
	dw AbraTechniques		; ELECTRODE
	dw NoTechniques			; EXEGGCUTE
	dw ExeggutorTechniques
	dw NoTechniques			; CUBONE
	dw TechniquePush		; MAROWAK
	dw TechniquePush		; HITMONLEE
	dw TechniquePush		; HITMONCHAN
	dw TechniqueGlow		; KOFFING
	dw TechniqueGlow		; WEEZING
	dw TechniquePush		; RHYHORN
	dw BlastoiseTechniques	; RHYDON
	dw ChanseyTechniques
	dw GloomTechniques		; TANGELA
	dw TechniquePush		; KANGASKHAN
	dw NoTechniques			; HORSEA
	dw TechniqueSwim		; SEADRA
	dw NoTechniques			; TOGEPI
	dw NoTechniques			; TOGETIC
	dw TechniqueSoar		; TOGEKISS
	dw AbraTechniques		; STARYU
	dw StarmieTechniques
	dw AbraTechniques		; MR MIME
	dw TechniqueSwim		; SCYTHER
	dw ButterfreeTechniques	; JYNX
	dw ExeggutorTechniques	; ELECTABUZZ
	dw ExeggutorTechniques	; MAGMAR
	dw RaticateTechniques	; PINSIR
	dw TechniquePush		; TAUROS
	dw NoTechniques			; MAGIKARP
	dw BlastoiseTechniques	; GYARADOS
	dw LaprasTechniques
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
	dw AerodactylTechniques
	dw BlastoiseTechniques	; SNORLAX
	dw TechniqueSoar		; ARTICUNO
	dw ZapdosTechniques
	dw TechniqueSoar		; MOLTRES
	dw NoTechniques			; DRATINI
	dw TechniqueSwim		; DRAGONAIR
	dw DragoniteTechniques
	dw MewtwoTechniques
	dw AbraTechniques		; MEW
	dw TechniqueChop		; CHIKORITA
	dw TechniqueChop		; BAYLEEF
	dw TechniqueChop		; MEGANIUM
	dw TechniqueChop		; CYNDAQUIL
	dw TechniqueChop		; QUILAVA
	dw RaticateTechniques	; TYPHLOSION
	dw NoTechniques			; TOTODILE
	dw NoTechniques			; CROCONAW
	dw BlastoiseTechniques	; FERALIGATR
	dw NoTechniques			; SENTRET
	dw TechniqueChop		; FURRET
	dw NoTechniques			; HOOTHOOT
	dw TechniqueSoar		; NOCTOWL
	dw NoTechniques			; GOLDEEN
	dw TechniqueSwim		; SEAKING
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
	dw NoTechniques			; UNOWN
	dw RaticateTechniques	; SIRFETCHD
	dw AbraTechniques		; MR RIME
	dw NoTechniques			; PINECO
	dw NoTechniques			; FORRETRESS
	dw TechniqueGlow		; PERRSERKER
	dw NoTechniques			; GLIGAR
	dw TechniqueChop		; GLISCOR
	dw TechniquePush		; STEELIX
	dw ClefairyTechniques	; SNUBBULL
	dw ClefableTechniques	; GRANBULL
	dw NoTechniques			; QWILFISH
	dw RaticateTechniques	; SCIZOR
	dw NoTechniques			; SHUCKLE
	dw RaticateTechniques	; HERACROSS
	dw TechniqueChop		; SNEASEL
	dw TechniqueChop		; WEAVILE
	dw NoTechniques			; TEDDIURSA
	dw TechniquePush		; URSARING
	dw TechniqueGlow		; SLUGMA
	dw TechniqueGlow		; MAGCARGO
	dw NoTechniques			; SWINUB
	dw NoTechniques			; PILOSWINE
	dw TechniquePush		; MAMOSWINE
	dw NoTechniques			; HAPPINY
	dw NoTechniques			; SMOOCHUM
	dw NoTechniques			; MIME_JR_
	dw RaticateTechniques	; LICKITUNG
	dw NoTechniques			; IGGLYBUFF
	dw NoTechniques			; HOUNDOUR
	dw NoTechniques			; HOUNDOOM
	dw TechniqueSwim		; KINGDRA
	dw NoTechniques			; PHANPY
	dw TechniquePush		; DONPHAN
	dw AbraTechniques		; PORYGON2
	dw AbraTechniques		; PORYGONZ
	dw NoTechniques			; CLEFFA
	dw TechniquePush		; TYROGUE
	dw TechniquePush		; HITMONTOP
	dw NoTechniques			; ELEKID
	dw ExeggutorTechniques	; ELECTIVIRE
	dw NoTechniques			; MAGBY
	dw ExeggutorTechniques	; MARGMORTAR
	dw MiltankTechniques
	dw ChanseyTechniques	; BLISSEY
	dw NoTechniques			; RAIKOU
	dw NoTechniques			; ENTEI
	dw NoTechniques			; SUICUNE
	dw NoTechniques			; LARVITAR
	dw NoTechniques			; PUPITAR
	dw TechniquePush		; TYRANITAR
	dw TechniqueSoar		; LUGIA
	dw TechniqueSoar		; HO_OH
	dw AbraTechniques		; CELEBI
	dw NoTechniques			; LEAFEON
	dw NoTechniques			; GLACEON
	dw NoTechniques			; SYLVEON
;	assert_table_length NUM_POKEMON

	dw NoTechniques ; Egg

;	dw BlastoiseTechniques	; RED_GYARADOS
;	dw AbraTechniques		; ARMORED_MEWTWO
;	dw NoTechniques			; RATTATA
;	dw RaticateTechniques
;	dw TechniqueChop		; SANDSHREW
;	dw RaticateTechniques	; SANDSLASH
;	dw NoTechniques			; VULPIX
;	dw NoTechniques			; NINETALES
;	dw NoTechniques			; DIGLETT
;	dw NoTechniques			; DUGTRIO
;	dw TechniqueGlow		; MEOWTH
;	dw TechniqueGlow		; PERSIAN
;	dw GeodudeAlolanTechniques
;	dw GravelerAlolanTechniques
;	dw GolemAlolanTechniques
;	dw GrimerAlolanTechniques
;	dw MukAlolanTechniques
;	dw RaichuAlolanTechniques
;	dw ExeggutorAlolanTechniques
;	dw MarowakAlolanTechniques
;	dw PonytaGalarianTechniques
;	dw RapidashGalarianTechniques
;	dw SlowpokeGalarianTechniques
;	dw SlowbroGalarianTechniques
;	dw SlowkingGalarianTechniques
;	dw WeezingGalarianTechniques
;	dw ArticunoGalarianTechniques
;	dw ZapdosGalarianTechniques
;	dw MoltresGalarianTechniques
;	assert_table_length NUM_EXT_POKEMON

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

TechniquePush:
	db PUSH_T
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
	db PUSH_T
	db 0

BlastoiseTechniques:
	db SWIM
	db PUSH_T
	db 0

ButterfreeTechniques:
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
	db PUSH_T
	db 0

RaichuTechniques:
	db PUSH_T
	db GLOW
	db 0

ClefairyTechniques:
	db GLOW
	db WARP
	db LULL
	db 0

ClefableTechniques:
	db PUSH_T
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
	db PUSH_T
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
	db PUSH_T
	db GLOW
	db WARP
	db 0

KinglerTechniques:
	db CHOP
	db SWIM
	db PUSH_T
	db 0

ExeggutorTechniques:
	db PUSH_T
	db GLOW
	db WARP
	db 0

ChanseyTechniques:
	db PUSH_T
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
	db PUSH_T
	db HEAL
	db 0

LaprasTechniques:
	db SWIM
	db PUSH_T
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
	db PUSH_T
	db 0

MewtwoTechniques:
	db CHOP
	db PUSH_T
	db GLOW
	db WARP
NoTechniques:
	db 0
