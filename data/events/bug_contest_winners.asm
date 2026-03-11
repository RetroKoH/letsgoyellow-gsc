BugContestantPointers:
	table_width 2
	dw BugContestant_BugCatcherDoug ; This reverts back to the player
	dw BugContestant_BugCatcherDoug
	dw BugContestant_BugCatcherSammy
	dw BugContestant_BugCatcherGreg
	dw BugContestant_BugCatcherCale
	dw BugContestant_BugCatcherElijah
	dw BugContestant_CamperLiam
	dw BugContestant_PicnickerDiana
	dw BugContestant_CamperEthan
	dw BugContestant_PicnickerNancy
	dw BugContestant_PokemaniacAshton
	assert_table_length NUM_BUG_CONTESTANTS + 1

MACRO contest_winner
; species, score
	dp \1
	dw \2
ENDM

BugContestant_BugCatcherDoug:
	db BUG_CATCHER, DOUG
	contest_winner KAKUNA,     300
	contest_winner METAPOD,    285
	contest_winner CATERPIE,   226

BugContestant_BugCatcherSammy:
	db BUG_CATCHER, SAMMY
	contest_winner YANMA,      286
	contest_winner BUTTERFREE, 251
	contest_winner CATERPIE,   237

BugContestant_BugCatcherGreg:
	db BUG_CATCHER, GREG
	contest_winner SCYTHER,    357
	contest_winner BUTTERFREE, 349
	contest_winner PINSIR,     368

BugContestant_BugCatcherCale:
	db BUG_CATCHER, CALE
	contest_winner VENOMOTH,   332
	contest_winner BUTTERFREE, 324
	contest_winner VENONAT,    321

BugContestant_BugCatcherElijah:
	db BUG_CATCHER, ELIJAH
	contest_winner BUTTERFREE, 318
	contest_winner WEEDLE,     295
	contest_winner CATERPIE,   285

BugContestant_CamperLiam:
	db CAMPER, LIAM
	contest_winner PINSIR,     366
	contest_winner VENONAT,    329
	contest_winner KAKUNA,     314

BugContestant_PicnickerDiana:
	db PICNICKER, DIANA
	contest_winner BUTTERFREE, 341
	contest_winner METAPOD,    301
	contest_winner CATERPIE,   264

BugContestant_CamperEthan:
	db CAMPER, ETHAN
	contest_winner SCYTHER,    326
	contest_winner BUTTERFREE, 292
	contest_winner METAPOD,    282

BugContestant_PicnickerNancy:
	db PICNICKER, NANCY
	contest_winner WEEDLE,     270
	contest_winner PINSIR,     282
	contest_winner CATERPIE,   251

BugContestant_PokemaniacAshton:
	db POKEMANIAC, ASHTON
	contest_winner VENONAT,    267
	contest_winner PARAS,      254
	contest_winner KAKUNA,     259
