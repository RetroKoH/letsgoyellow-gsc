GoldenrodMuseum2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 13,  7, GOLDENROD_MUSEUM_1F, 3

	db 0 ; coord events

	db 14 ; bg events
	bg_event  1,  0, SIGNPOST_READ, LugiaPaintingScript
	bg_event  2,  0, SIGNPOST_READ, LugiaPaintingScript
	bg_event  4,  0, SIGNPOST_READ, BellTowerPaintingScript
	bg_event  5,  0, SIGNPOST_READ, BellTowerPaintingScript
	bg_event  7,  0, SIGNPOST_READ, HoOhPaintingScript
	bg_event  8,  0, SIGNPOST_READ, HoOhPaintingScript
	bg_event  0,  4, SIGNPOST_READ, KabutoPuzzleScript
	bg_event  0,  5, SIGNPOST_READ, KabutoPuzzleScript
	bg_event  3,  4, SIGNPOST_READ, OmanytePuzzleScript
	bg_event  3,  5, SIGNPOST_READ, OmanytePuzzleScript
	bg_event  0,  6, SIGNPOST_READ, AerodactylPuzzleScript
	bg_event  0,  7, SIGNPOST_READ, AerodactylPuzzleScript
	bg_event  3,  6, SIGNPOST_READ, HoOhPuzzleScript
	bg_event  3,  7, SIGNPOST_READ, HoOhPuzzleScript

	db 1 ; object events
	object_event  6,  3, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_ROCK, PERSONTYPE_COMMAND, jumptext, GoldenrodMuseum2FBigPearlText, -1

LugiaPaintingScript:
	refreshscreen
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic
	thistext

	text "  The Leviathan"
	line "     Awakens"
	done

HoOhPaintingScript:
	refreshscreen
	paintingpic HO_OH_PAINTING
	waitbutton
	closepokepic
	thistext

	text "   The Phoenix"
	line "    Ascending"
	done

BellTowerPaintingScript:
	refreshscreen
	paintingpic BELL_TOWER_PAINTING
	waitbutton
	closepokepic
	thistext

	text "    Friendship"
	line "     and Hope"
	done

KabutoPuzzleScript:
	refreshscreen
	paintingpic KABUTO_PUZZLE
	waitbutton
	closepokepic
	thistext

	text "It's the completed"
	line "Kabuto panel!"
	done

OmanytePuzzleScript:
	refreshscreen
	paintingpic OMANYTE_PUZZLE
	waitbutton
	closepokepic
	thistext

	text "It's the completed"
	line "Omanyte panel!"
	done

AerodactylPuzzleScript:
	refreshscreen
	paintingpic AERODACTYL_PUZZLE
	waitbutton
	closepokepic
	thistext

	text "It's the completed"
	line "Aerodactyl panel!"
	done

HoOhPuzzleScript:
	refreshscreen
	paintingpic HO_OH_PUZZLE
	waitbutton
	closepokepic
	thistext

	text "It's the completed"
	line "Ho-Oh panel!"
	done

UnsolvedPuzzleText:
	text "The display is"
	line "still empty…"
	done

GoldenrodMuseum2FBigPearlText:
	text "It's a huge pearl"
	line "fished up from"
	cont "Goldenrod Harbor."
	done
