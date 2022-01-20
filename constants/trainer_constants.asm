trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer groups
	enum_start
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_OAK
	const PHONECONTACT_BILL

	trainerclass RED ; 1
	; TODO: Add unchosen player as second rival

	trainerclass GREEN ; 2
	; TODO: Add unchosen player as second rival

	trainerclass PROF_OAK ; 3
	; TODO: Add Oak battle

	trainerclass BUGSY ; 4 ; Pokeballs Sidequest - Optional battle?
	trainerclass CHUCK ; 7 ; Optional side character
	trainerclass JASMINE ; 8 ; Optional battle in Saffron, get Metal Coat from her?
	trainerclass CLAIR ; a ; Optional battle; Can give the Dragon Scale

; Elite 4: Round 1
	trainerclass LORELEI ; 76
	trainerclass BRUNO ; d
	trainerclass AGATHA ; 77
	trainerclass LANCE ; 77

; Elite 4: Round 2
	trainerclass WILL ; b
	trainerclass KOGA ; as gym leader
	trainerclass KOGA2 ; as elite
	trainerclass KAREN ; e

	trainerclass CHAMPION ; f - CHAMPION LANCE

	trainerclass BROCK ; 10
	trainerclass MISTY ; 11
	trainerclass LT_SURGE ; 12
	trainerclass ERIKA ; 13
	trainerclass JANINE ; 14
	trainerclass SABRINA ; 15
	trainerclass BLAINE ; 16
	trainerclass BLUE ; 17

	trainerclass RIVAL0 ; 1a
	const RIVAL0_LAB_EEVEE
	const RIVAL0_LAB_PIKACHU
	const RIVAL0_R22_EEVEE
	const RIVAL0_R22_PIKACHU
	const RIVAL0_CC_EEVEE
	const RIVAL0_CC_PIKACHU
	trainerclass RIVAL1 ; 1b
	const RIVAL1_SS_EEVEE
	const RIVAL1_SS_PIKACHU
	const RIVAL1_TOWER_JOLT
	const RIVAL1_TOWER_FLAR
	const RIVAL1_TOWER_VAPO
	const RIVAL1_TOWER_RAI
	const RIVAL1_SILPH_JOLT
	const RIVAL1_SILPH_FLAR
	const RIVAL1_SILPH_VAPO
	const RIVAL1_SILPH_RAI
	const RIVAL1_R22_JOLT
	const RIVAL1_R22_FLAR
	const RIVAL1_R22_VAPO
	const RIVAL1_R22_RAI
	trainerclass RIVAL2 ; 1c - CHAMPION BLUE
	const RIVAL2_JOLTEON
	const RIVAL2_FLAREON
	const RIVAL2_VAPOREON
	const RIVAL2_RAICHU

	trainerclass YELLOW ; 1d - Replaces Lyra

	trainerclass YELLOW2 ; 1e - Replaces Lyra

	trainerclass YOUNGSTER ; 1f
	const BEN
	const CALVIN
	const JOSH
	const TIMMY
	const JOEY
	const DAN
	const IAN;CHAD
	const EDDIE
	const DILLON
	const YASU
	const DAVE

	trainerclass BUG_CATCHER ; 20
	const RICK
	const DOUG
	const ANTONY
	const CHARLY
	const SAMMY
	const COLTON
	const GREG
	const JAMES
	const KENT
	const ROB
	const CALE
	const KEIGO
	const ELIJAH
	const BRENT
	const CONNER

	trainerclass CAMPER ; 21
	const LIAM
	const SHANE
	const ETHAN
	const FLINT
	const RICKY
	const JEFF
	const CHRIS
	const DREW
	const JUSTIN

	trainerclass PICNICKER ; 22
	const AMARA
	const DIANA
	const TINA
	const NANCY
	const BELLE
	const LISHA
	const CAITLIN
	const HEIDI
	const CAROL
	const SOFIA
	const MARTHA
	const LEAH
	const DANA
	const ANA
	const SUZI
	const VALERI
	const GWEN
	const ALMA
	const KENDRA
	const BECKY
	const CELIA
	const YAZMIN
	const IRENE
	const MISSY

	trainerclass FISHER ; 24
	const DALE
	const BARNY
	const NED
	const CHIP
	const HANK
	const ELLIOT
	const ANDREW
	const RONALD
	const CLAUDE
	const WADE
	const NOLAN

	trainerclass BIRD_KEEPER ; 25
	const SEBBY
	const PERRY
	const ROBERT
	const DONALD
	const BENNY
	const CARTER
	const MITCH
	const BECK
	const MARLON
	const EDWIN
	const CHET
	const WILTON
	const RAMIRO
	const JACOB
	const ROGER

	trainerclass HIKER ; 26
	const MARCOS
	const FRANKLIN
	const NOB
	const WAYNE
	const ALAN
	const BRICE
	const JEREMY
	const CLARK
	const TRENT
	const DUDLEY
	const ALLEN
	const ERIC
	const LENNY
	const OLIVER
	const LUCAS

	trainerclass GRUNTM ; 27

	trainerclass GRUNTF ; 28

	trainerclass POKEMANIAC ; 2e
	const MARK
	const HERMAN
	const COOPER
	const STEVE
	const WINSTON
	const ASHTON
	const DAWSON

	trainerclass SUPER_NERD ; 30
	const JOVAN
	const MIGUEL
	const AIDAN
	const GLENN
	const LESLIE
	const ERIK
	const AVERY
	const DEREK
	const ZAC

	trainerclass LASS ; 31
	const BRITTANY
	const JANICE
	const SALLY
	const ROBIN
	const CRISSY
	const MIRIAM
	const IRIS
	const RELI
	const ALI
	const KELSEY
	const HALEY
;	const ANN - Changed to LADY class
;	const DAWN - Changed to LADY class
	const PAIGE
	const ANDREA
	const MEGAN
	const JULIA
	const KAY
	const LISA

	trainerclass BEAUTY ; 32
	const TAMIA
	const BRIDGET
	const LORI
	const LOLA
	const SHEILA
	const GRACE
	const OLIVIA

	trainerclass JUGGLER ; 36
	const NATE
	const KIRK
	const KAYDEN
	const SHAWN
	const DALTON
	const NELSON
	const GREGORY

	trainerclass SCHOOLBOY ; 37
	const JACKY

	trainerclass SCHOOLGIRL ; 38
	const MOLLY

	trainerclass PSYCHIC_T ; 39
	const JOHAN
	const TYRON
	const CAMERON
	const PRESTON

	trainerclass HEX_MANIAC ; 3a
	const TAMARA
	const AMANDA
	const STACY
	const TASHA

	trainerclass MEDIUM ; 3c
	const HOPE
	const CARLY
	const PATRICIA
	const PAULA
	const LAUREL
	const JODY
	const TAMMY
	const RUTH
	const KATRINA
	const JANAE
	const ANGELICA
	const JENNIFER
	const EMILIA

	trainerclass GENTLEMAN ; 45
	const TUCKER
	const THOMAS
	const ARTHUR
	const BROOKS
	const LAMAR

	trainerclass RICH_BOY ; 46
	const TYLER

	trainerclass LADY ; 47
	const ANN
	const DAWN

	trainerclass SAILOR ; 4b
	const EDMOND
	const TREVOR
	const LEONARD
	const DUNCAN
	const HUEY
	const DYLAN
	const PHILLIP
	const DWAYNE

	trainerclass SWIMMERM ; 4c
	const LUIS
	const RICHARD
	const REECE
	const MATTHEW
	const DOUGLAS
	const DAVID
	const TONY
	const AXLE
	const BARRY
	const DEAN
	const DARRIN
	const SPENCER
	const JACK
	const JEROME
	const ROLAND
	const JOSIAH

	trainerclass SWIMMERF ; 4d
	const COLBY
	const ANYA
	const ALICE
	const CONNIE
	const SHIRLEY
	const DEBRA
	const MELISSA
	const TIFFANY
	const NORA
	const MINA

	trainerclass BURGLAR ; 4e
	const QUINN
	const RAMON
	const DUSTY
	const ARNIE
	const SIMON
	const LEWIS

	trainerclass PI ; 4f - Will be used for Shadow mon post game
	const LOOKER

	trainerclass SCIENTIST ; 50
	const TED
	const BRAYDON
	const IVAN

	trainerclass ROCKET_SCIENTIST ; 51
	const CONNOR
	const JERRY
	const JOSE
	const RODNEY
	const BEAU
	const TAYLOR
	const JOSHUA
	const PARKER
	const ED
	const TRAVIS

	trainerclass BLACKBELT_T ; 54
	const MIKE
	const HIDEKI
	const AARON
	const HITOSHI
	const ATSUSHI
	const KENJI
	const TAKASHI
	const DAISUKE

	trainerclass BATTLE_GIRL ; 55

	trainerclass DRAGON_TAMER ; 56 - Will be used in Clair side quest

	trainerclass ENGINEER ; 57
	const BRAXTON
	const BERNIE

	trainerclass TEACHER ; 58 - Will be used in the school

	trainerclass BIKER ; 5b
	const JARED
	const MALIK
	const LUKAS
	const ISAAC
	const GERALD
	const ERNEST
	const ALEX
	const LAO
	const HIDEO
	const RUBEN
	const VIRGIL
	const BILLY
	const NIKOLAS
	const JAXON
	const WILLIAM

	trainerclass ROUGHNECK ; 5c - Cue Ball
	const KOJI
	const LUKE
	const CHAD
	const RAUL
	const ISAIAH
	const ZEEK
	const JAMAL
	const COREY

	trainerclass TAMER ; 5d
	const PHIL
	const EDGAR
	const EVAN
	const COLE
	const VINCENT

	trainerclass ARTIST ; 5e

	trainerclass AROMA_LADY ; 5f

	trainerclass COOLTRAINERM ; 65
	const SAMUEL
	const YUJI
	const WARREN
	const CLYDE
	const GEORGE
	const CODY

	trainerclass COOLTRAINERF ; 66
	const BETH
	const NAOMI
	const CHRISTY
	const ALEXA

	trainerclass ARCHER ; 6c

	trainerclass GIOVANNI ; 6e
	const GIOVANNI1
	const GIOVANNI2
	const GIOVANNI_MEWTWO
	const GIOVANNI_GYM
	const GIOVANNI_END

	trainerclass KARATE_KING ; 73
	const KIYO

	trainerclass TOWERTYCOON ; 74

	trainerclass JESSIE_JAMES ; 75

	trainerclass OMASTAR_FOSSIL ; 92

	trainerclass KABUTOPS_FOSSIL ; 93

	trainerclass AERODACTYL_FOSSIL ; 94

	trainerclass CUBONE_ARMOR ; 95

	trainerclass METEORITE ; 96

NUM_TRAINER_CLASSES EQU __enum__
