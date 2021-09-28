BugContestantPointers:
	dw BugContestant_BugCatcherDon ; This reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd

BugContestant_BugCatcherDon:
	db 1, 1 ; TODO: class, trainer
	dbw KAKUNA,     300
	dbw METAPOD,    285
	dbw CATERPIE,   226

BugContestant_BugCatcherEd:
	db 1, 1 ; TODO: class, trainer
	dbw SCYTHER,    286
	dbw BUTTERFREE, 251
	dbw CATERPIE,   237
