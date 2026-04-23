DEF __trainer_pal__ = 0

MACRO trainerpal
	DEF TRAINERPAL_\1 = __trainer_pal__
	DEF __trainer_pal__ += 1
ENDM

DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
	trainerpal \1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVsAndPersonality (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are indexes for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF CHRIS EQU __trainer_class__
	trainerclass RED ; 1 - KoH class rename

DEF KRIS EQU __trainer_class__
	trainerclass GREEN ; 2 - KoH class rename

DEF CRYS EQU __trainer_class__
	trainerclass CHASE ; 3 - KoH class rename

DEF BETA EQU __trainer_class__
	trainerclass ELAINE ; 4 - KoH class rename

	trainerclass FALKNER ; 5

	trainerclass BUGSY ; 6

	trainerclass WHITNEY ; 7

	trainerclass MORTY ; 8

	trainerclass CHUCK ; 9

	trainerclass JASMINE ; a

	trainerclass PRYCE ; b

	trainerclass CLAIR ; c

	trainerclass WILL ; d

	trainerclass JANINE ; e

	trainerclass BRUNO ; f

	trainerclass KAREN ; 10

	trainerclass CHAMPION ; 11
	const LANCE
	const LANCE2

	trainerclass BROCK ; 12

	trainerclass MISTY ; 13

	trainerclass LT_SURGE ; 14

	trainerclass ERIKA ; 15

	trainerclass KOGA ; 16

	trainerclass SABRINA ; 17

	trainerclass BLAINE ; 18

	trainerclass BLUE ; 19 - I'll use this for the post-game Gym Leader.

	trainerclass NINTEN ; 1a ; KoH - Formerly RED; RED is playable again

	trainerclass LEAF ; 1b

; Rival Blue
	trainerclass RIVAL0 ; 1c
; Oak Lab
	const RIVAL0_1
	const RIVAL0_2
; Route 22 (First)
	const RIVAL0_3
	const RIVAL0_4
; Cerulean City
	const RIVAL0_5
	const RIVAL0_6

	trainerclass RIVAL1 ; 1d
; SS ANNE
	const RIVAL1_1
	const RIVAL1_2
; Lavender Tower
	const RIVAL1_3
	const RIVAL1_4
; Silph Co (7F)
	const RIVAL1_5
	const RIVAL1_6
; Route 22 (Second)
	const RIVAL1_7
	const RIVAL1_8

	trainerclass RIVAL2 ; 1e
; Champion
	const RIVAL2_1
	const RIVAL2_2

; This will be used for the new, second rival
	trainerclass LYRA1 ; 1f
	const LYRA1_1
	const LYRA1_2
	const LYRA1_3
	const LYRA1_4
	const LYRA1_5
	const LYRA1_6

	trainerclass LYRA2 ; 20

	trainerclass YOUNGSTER ; 21 (FINISHED)
	const RONNY		; Route 1
	const BEN		; Route 3
	const CALVIN
	const JOSH		; Mt. Moon
	const TIMMY		; Route 24
	const JOEY		; Route 25
	const DAN
	const TYLER		; SS Anne 1F
	const EDDIE		; Route 11
	const DILLON
	const DAVE
	const OWEN
	const AJ		; Route 9 (Y)
	const JOEY1		; Unused Gen 2 Phone Trainer
	const JOEY2
	const JOEY3
	const JOEY4
	const JOEY5

	trainerclass BUG_CATCHER ; 22 (FINISHED; RENAMED 'BUG BOY')
	const RICK		; Viridian Forest
	const DOUG
	const BRIAN
	const ANTHONY
	const SAMMY
	const COLTON	; Route 3
	const GREG
	const JAMES
	const KENT		; Mt. Moon
	const ROBBY
	const CALE		; Route 24
	const KEIGO		; Route 6
	const ELIJAH
	const BRENT		; Route 9
	const CONNOR
	const WADE1		; Unused Gen 2 Phone Trainers
	const WADE2
	const WADE3
	const WADE4
	const WADE5
	const ARNIE1
	const ARNIE2
	const ARNIE3
	const ARNIE4
	const ARNIE5

	trainerclass CAMPER ; 23 (FINISHED; Formerly Jr Trainer)
	const LIAM		; Pewter Gym
	const ETHAN		; Route 24
	const SHANE
	const FLINT		; Route 25
	const RICKY		; Route 6
	const JOE		; 			(Y)
	const CAMPER_CHRIS		; Route 9
	const JUSTIN	; Route 12
	const TODD1		; Unused Gen 2 Phone Trainer
	const TODD2
	const TODD3
	const TODD4
	const TODD5

	trainerclass PICNICKER ; 24 (FINISHED; Formerly Jr Trainer)
	const DIANA		; Cerulean Gym
	const GISELLE	; Route 6 (Y)
	const NANCY
	const ALICIA	; Route 9
	const CAITLIN
	const HEIDI		; Route 10
	const MARTHA	; Rock Tunnel
	const SOFIA
	const LEAH
	const ARIANA
	const DANA
	const CAROL		; Route 10 (After Rock Tunnel)
	const TINA		; Celadon Gym
	const ALMA		; Route 13
	const SUSIE
	const VALERIE
	const GWEN
	const BECKY		; Route 15
	const CELIA
	const KINDRA
	const YAZMIN
	const IRENE		; Route 20
	const MISSY
	const LIZ1		; Unused Gen 2 Phone Trainers
	const LIZ2
	const LIZ3
	const LIZ4
	const LIZ5
	const GINA1
	const GINA2
	const GINA3
	const GINA4
	const GINA5
	const ERIN1
	const ERIN2
	const ERIN3
	const TIFFANY1
	const TIFFANY2
	const TIFFANY3
	const TIFFANY4

	trainerclass TWINS ; 25 (FINISHED: Implemented with FRLG trainers)
	const ELIANDANNE1
	const ELIANDANNE2
	const KIRIANDJAN1
	const KIRIANDJAN2

	trainerclass FISHER ; 26 (FINISHED)
	const BARNY				; SS Anne B1F
	const DALE				; SS Anne 2F
	const NED				; Route 12
	const CHIP
	const HANK
	const ELLIOT
	const ANDREW
	const WADE				; Route 21
	const RONALD
	const CLAUDE
	const NOLAN
	const RALPH1			; Unused Phone Trainers
	const RALPH2
	const RALPH3
	const RALPH4
	const RALPH5
	const TULLY1
	const TULLY2
	const TULLY3
	const TULLY4
	const WILTON1
	const WILTON2
	const WILTON3

	trainerclass BIRD_KEEPER ; 27 (FINISHED)
	const BRET				; Route 13
	const ROB
	const PERRY
	const CARTER			; Route 14
	const MITCH
	const MARLON
	const BECK
	const DON
	const BENNY
	const CHESTER			; Route 15
	const EDWIN
	const JACOB				; Route 18
	const WILTON
	const RAMIRO
	const ROGER				; Route 20
	const VANCE1			; Unused Phone Trainers
	const VANCE2
	const VANCE3
	const JOSE1
	const JOSE2
	const JOSE3

	trainerclass HIKER ; 28 (FINISHED)
	const MARCOS			; Mt. Moon
	const FRANKLIN			; Route 25
	const WAYNE
	const NOB
	const JEREMY			; Route 9
	const ALAN
	const BRICE
	const ALLEN				; Rock Tunnel
	const ERIC
	const LENNY
	const OLIVER
	const LUCAS
	const DUDLEY
	const CLARK
	const TRENT
	const ANTHONY1			; Unused Phone Trainers
	const ANTHONY2
	const ANTHONY3
	const ANTHONY4
	const ANTHONY5
	const PARRY1
	const PARRY2
	const PARRY3

	trainerclass GRUNTM ; 29

	trainerclass GRUNTF ; 2a

	trainerclass POKEFANM ; 2b (UNUSED: Maybe use w/ the Fan Club)
	const DEREK1
	const DEREK2
	const DEREK3

	trainerclass POKEFANF ; 2c (UNUSED: Maybe use w/ the Fan Club)
	const BEVERLY1
	const BEVERLY2
	const BEVERLY3

	trainerclass OFFICERM ; 2d (UNUSED: Will use for night battles in select cities)
	const KEITH

	trainerclass OFFICERF ; 2e (UNUSED: Will use for night battles in select cities)
	const JENNY

	trainerclass NURSE ; 2f (UNUSED: Might use at Indigo Plateau?)
	const JOY

	trainerclass POKEMANIAC ; 30 (FINISHED)
	const ASHTON			; Rock Tunnel
	const WINSTON
	const STEVE
	const COOPER
	const MARK				; Route 10
	const HERMAN
	const DAWSON			; Victory Road
	const DAMIAN			; Bonus trainer from LGPE
	const BRENT1			; Unused Phone Trainer
	const BRENT2
	const BRENT3
	const BRENT4

	trainerclass COSPLAYER ; 31 (Female Pokemaniac; Might use)
	const CLARA
	const CHLOE
	const BROOKE
	const KUROKO
	const LYRIC

	trainerclass SUPER_NERD ; 32 (FINISHED)
	const JOVAN
	const MIGUEL
	const GLENN
	const LESLIE
	const AIDAN
	const ERIK
	const AVERY
	const DEREK
	const ZAC

	trainerclass LASS ; 33 (FINISHED)
	const JOANA				; Viridian Forest
	const BRITTANY
	const JANICE			; Route 3
	const SALLY
	const ROBIN
	const IRIS				; Mt. Moon
	const MIRIAM
	const ALI				; Route 24
	const RELI
	const HALEY				; Route 25
	const ANN				; SS Anne
	const DAWN
	const JULIA				; Route 8
	const PAIGE
	const ANDREA
	const MEGAN
	const KAY				; Celadon Gym
	const LISA
	const CRISSY			; Route 4
	const DANA1				; Unused Phone Trainer
	const DANA2
	const DANA3
	const DANA4
	const DANA5

	trainerclass BEAUTY ; 34 (FINISHED)
	const BRIDGET			; Celadon Gym
	const LORI
	const TAMIA
	const LOLA				; Route 13
	const SHELIA
	const GRACE				; Route 15
	const OLIVIA

	trainerclass BUG_MANIAC ; 35 (UNUSED; Might use in Fuchsia?)
	const LOU

	trainerclass RUIN_MANIAC ; 36 (UNUSED; Might use in Pewter or Cinnabar?)
	const JONES

	trainerclass FIREBREATHER ; 37 (Reimplemented in Cinnabar Gym, replacing Burglars)
	const QUINN
	const RAMON
	const DUSTY

	trainerclass JUGGLER ; 38
	const DALTON			; Silph Co: 5F
	const NATE				; Fuchsia Gym
	const KAYDEN
	const KIRK
	const SHAWN
	const NELSON			; Victory Road
	const GREGORY
	const IRWIN1			; Unused Phone Trainer
;	const IRWIN2
;	const IRWIN3
;	const IRWIN4

	trainerclass SCHOOLBOY ; 39 (UNUSED; Might use in Viridian's School)
	const JACK1				; Unused Phone Trainers
	const JACK2
	const JACK3
	const JACK4
	const JACK5
	const ALAN1
	const ALAN2
	const ALAN3
	const ALAN4
	const ALAN5
	const CHAD1
	const CHAD2
	const CHAD3
	const CHAD4
	const CHAD5

	trainerclass SCHOOLGIRL ; 3a (UNUSED; Might use in Viridian's School)
	const MOLLY

	trainerclass PSYCHIC_T ; 3b
	const CAMERON			; Saffron Gym
	const TYRON
	const PRESTON
	const JOHAN

	trainerclass HEX_MANIAC ; 3c (UNUSED; Might use in Lavender Town)
	const AMANDA			; Saffron Gym
	const STACY
	const TASHA

	trainerclass SAGE ; 3d (UNUSED)

	trainerclass MEDIUM ; 3e (Repurposed as the CHANNELER in Lavender Tower; w/ SPRITE_GRANNY)

	trainerclass KIMONO_GIRL ; 3f (UNUSED: Might use)
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI
	const MAKO
	const AMI
	const MINA

	trainerclass ELDER ; 40 (UNUSED)
	const LI

	trainerclass SR_AND_JR ; 41 (UNUSED: Might add one in SS Anne)
	const JOANDCATH1
	const JOANDCATH2

	trainerclass COUPLE ; 42 (Will take place of FRLG's Young Couples)
	const GIAANDJES1		; Route 12
	const GIAANDJES2
	const LEAANDJED1		; Route 16
	const LEAANDJED2

	trainerclass GENTLEMAN ; 43 (FINISHED)
	const THOMAS			; SS ANNE
	const ARTHUR
	const BROOKS
	const LAMAR
	const TUCKER			; Vermilion Gym

	trainerclass RICH_BOY ; 44 (Unused; Might replace one SS ANNE Youngster with this class)
	const BOY_WINSTON

	trainerclass LADY ; 45 (Unused; Might use somewhere)
	const JESSICA

	trainerclass BREEDER ; 46 (UNUSED; Might use in certain places)
	const ALLISON
	const ALIZE
	const BETHANY

	trainerclass BAKER ; 47 (Unused; Will use in Celadon)
	const OLGA

	trainerclass COWGIRL ; 48 (Unused; Will use in Fuchsia)
	const DANIELA

	trainerclass SAILOR ; 49 (FINISHED)
	const TREVOR			; SS Anne
	const EDMOND
	const PHILLIP
	const HUEY
	const DUNCAN
	const LEONARD
	const DWAYNE			; Vermilion Gym
	const HUEY1
	const HUEY2
	const HUEY3
	const HUEY4

	trainerclass SWIMMERM ; 4a (FINISHED)
	const LUIS				; Cerulean Gym
	const RICHARD			; Route 19
	const REECE
	const TONY
	const DAVID
	const DOUGLAS
	const MATTHEW
	const AXLE
	const BARRY				; Route 20
	const DARRIN
	const DEAN
	const SPENCER			; Route 21
	const JACK
	const ROLAND
	const JEROME

	trainerclass SWIMMERF ; 4b (FINISHED; Might add one to Misty's gym)
	const ALICE				; Route 19
	const ANYA
	const CONNIE
	const SHIRLEY			; Route 20
	const TIFFANY
	const NORA
	const MELISSA

	trainerclass BURGLAR ; 4c (FINISHED; The Burglars in Cinnabar Gym are now Firebreathers, w/ SPRITE_FIREBREATHER)
	const ARNIE				; Cinnabar Mansion
	const SIMON
	const LEWIS

	trainerclass PI ; 4d (UNUSED)
	const LOOKER

	trainerclass SCIENTIST ; 4e (FINISHED)
	const BRAYDON			; Cinnabar Mansion
	const TED
	const IVAN

	trainerclass ROCKET_SCIENTIST ; 4f (FINISHED)
	const JERRY				; Silph Co
	const ROCKET_CONNOR
	const JOSE
	const RODNEY
	const BEAU
	const TAYLOR
	const JOSHUA
	const PARKER
	const ED
	const TRAVIS

	trainerclass BOARDER ; 50 (UNUSED)

	trainerclass SKIER ; 51 (UNUSED)

	trainerclass BLACKBELT_T ; 52 (FINISHED)
	const HIDEKI			; Fighting Dojo
	const HITOSHI
	const MIKE
	const AARON
	const KIYO				; Viridian Gym
	const ATSUSHI
	const TAKASHI
	const DAISUKE			; Victory Road
	const KENJI1

	trainerclass BATTLE_GIRL ; 53 (UNUSED)
	const DIANE

	trainerclass DRAGON_TAMER ; 54 (UNUSED)
	const PAUL

	trainerclass ENGINEER ; 55
	const BRAXTON			; Route 11
	const BERNIE
	const DYLAN				; SS Anne (replaces a sailor)

	trainerclass TEACHER_F ; 56 (UNUSED; Might use in Viridian School)
	const COLETTE

	trainerclass TEACHER_M ; 57 (UNUSED; Might use in Viridian School)
	const TEACHER_NOLAN

	trainerclass GUITARISTM ; 58
	const CLYDE

	trainerclass GUITARISTF ; 59
	const MORGAN

	trainerclass BIKER ; 5a (FINISHED)
	const JARED					; Route 13
	const GERALD				; Route 14
	const MALIK
	const ISAAC
	const LUKAS
	const ERNEST				; Route 15
	const ALEX
	const LAO					; Route 16
	const HIDEO
	const RUBEN
	const VIRGIL				; Route 17
	const BILLY
	const NIKOLAS
	const JAXON
	const WILLIAM

	trainerclass ROUGHNECK ; 5b (FINISHED)
	const KOJI					; Route 16
	const LUKE
	const CAMRON
	const ISAIAH				; Route 17
	const RAUL
	const JAMAL
	const ZEEK
	const COREY
	const MARTIN				; Route 21

	trainerclass TAMER ; 5c (FINISHED)
	const EDGAR					; Fuchsia Gym
	const PHIL
	const COLE					; Viridian Gym
	const JASON
	const VINCENT				; Victory Road

	trainerclass ARTIST ; 5d (UNUSED)
	const REINA

	trainerclass AROMA_LADY ; 5e (UNUSED: Will use one in Celadon Gym)
	const HOLLY

	trainerclass SOLDIER ; 5f (UNUSED: Might use one in Vermilion City or Gym)

	trainerclass WAITER ; 60 (UNUSED)

	trainerclass WAITRESS ; 61 (UNUSED)

	trainerclass SIGHTSEERM ; 62 (UNUSED: Might use one in SS ANNE)
	const JASKA

	trainerclass SIGHTSEERF ; 63 (UNUSED)
	const KAMILA

	trainerclass SIGHTSEERS ; 64 (UNUSED)
	const LIANDSU1
	const LIANDSU2

	trainerclass COOLTRAINERM ; 65
	const KEVIN						; Placeholder
	const COOLTRAINERM_RAYMOND		; Celadon Uni - Will keep
	const COOLTRAINERM_COREY		; Celadon Uni - Will keep
	const FERGUS					; Celadon Uni
	const GAVEN1					; Unused Phone Trainers
	const GAVEN2
	const GAVEN3

	trainerclass COOLTRAINERF ; 66
	const NEESHA			; Celadon Uni - Will keep
	const BETH1				; Unused Phone Trainers
	const BETH2
	const BETH3
	const REENA1
	const REENA2
	const REENA3

	trainerclass ACE_DUO ; 67 (UNUSED)
	const ELANANDIDA1
	const ELANANDIDA2

	trainerclass VETERANM ; 68 (UNUSED)

	trainerclass VETERANF ; 69 (UNUSED)

; Each of these will have post-game battles
	trainerclass ADMIN_PROTON ; 6a
	const PROTON1
	const PROTON2

	trainerclass ADMIN_PETREL ; 6b
	const PETREL1
	const PETREL2

	trainerclass ADMIN_ARCHER ; 6c
	const ARCHER1
	const ARCHER2

	trainerclass ADMIN_ARIANA ; 6d
	const ARIANA1
	const ARIANA2

	trainerclass GIOVANNI ; 6e
	const GIOVANNI1
	const GIOVANNI2
	const GIOVANNI3		; Gym Battle

	trainerclass PROF_OAK ; 6f

	trainerclass PROF_ELM ; 70

	trainerclass PROF_IVY ; 71

	trainerclass MYSTICALMAN ; 72
	const EUSINE

	trainerclass KARATE_KING ; 73
	const KOICHI		; Used for the Saffron Fighting Dojo

	trainerclass TOWERTYCOON ; 74

	trainerclass FACTORYHEAD ; 75

	trainerclass JESSIE_JAMES ; 76

	trainerclass LORELEI ; 77

	trainerclass AGATHA ; 78

	trainerclass STEVEN ; 79

	trainerclass CYNTHIA ; 7a

	trainerclass INVER ; 7b

	trainerclass CHERYL ; 7c

	trainerclass RILEY ; 7d

	trainerclass BUCK ; 7e

	trainerclass MARLEY ; 7f

	trainerclass MIRA ; 80

	trainerclass ANABEL ; 81

	trainerclass DARACH ; 82

	trainerclass UNK_CAITLIN ; 83

	trainerclass CANDELA ; 84

	trainerclass BLANCHE ; 85

	trainerclass SPARK_T ; 86

	trainerclass FLANNERY ; 87

	trainerclass MAYLENE ; 88

	trainerclass UNK_MARLON ; 89

	trainerclass UNK_VALERIE ; 8a

	trainerclass KUKUI ; 8b

	trainerclass PIERS ; 8c

	trainerclass KATY ; 8d

	trainerclass VICTOR  ; 8e

	trainerclass BILL_T ; 8f

	trainerclass YELLOW ; 90

	trainerclass WALKER ; 91

	trainerclass IMAKUNI ; 92

	trainerclass LAWRENCE ; 93

	trainerclass REI ; 94

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1

	trainerclass OMASTAR_FOSSIL ; 95

	trainerclass KABUTOPS_FOSSIL ; 96

	trainerclass AERODACTYL_FOSSIL ; 97

	trainerclass CUBONE_ARMOR ; 98

	trainerclass METEORITE ; 99

	trainerclass SILHOUETTE ; 9a

DEF NUM_TRAINER_CLASS_PICS EQU __trainer_class__ - 1
	trainerpal SAYO ; 9b
	trainerpal ZUKI ; 9c
	trainerpal KUNI ; 9d
	trainerpal MIKI ; 9e
	trainerpal MAKO ; 9f
	trainerpal AMI  ; a0
	trainerpal MINA ; a1
DEF NUM_TRAINER_PALS EQU __trainer_pal__ - 1
