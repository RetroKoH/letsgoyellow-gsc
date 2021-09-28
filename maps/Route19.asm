Route19_MapScriptHeader:
	db 0 ; scene scripts

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, Route19ClearSmashRocks
	callback MAPCALLBACK_TILES, Route19ClearRocks

	db 2 ; warp events
	warp_event  7,  1, ROUTE_19_FUCHSIA_GATE, 3
	warp_event  5, 13, ROUTE_19_BEACH_HOUSE, 1

	db 0 ; coord events

	db 6 ; bg events
	bg_event 11, 15, SIGNPOST_JUMPTEXT, Route19SignText
	bg_event 11, -1, SIGNPOST_JUMPTEXT, CarefulSwimmingSignText
	bg_event  5,  3, SIGNPOST_ITEM + REVIVE, EVENT_ROUTE_19_HIDDEN_REVIVE
	bg_event  3, 11, SIGNPOST_ITEM + MAX_REVIVE, EVENT_ROUTE_19_HIDDEN_MAX_REVIVE
	bg_event  5, 15, SIGNPOST_ITEM + PEARL, EVENT_ROUTE_19_HIDDEN_PEARL
	bg_event 13, 13, SIGNPOST_ITEM + BIG_PEARL, EVENT_ROUTE_19_HIDDEN_BIG_PEARL

	db 8 ; object events
	smashrock_event 11,  4, EVENT_ROUTE_19_ROCK
	smashrock_event  6, 3
	smashrock_event  4, 11
	smashrock_event 12, 13
	smashrock_event 13, 14
	object_event  9,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, EngineerScript_0x19ea4d, -1
	object_event 11,  3, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, EngineerScript_0x19ea61, -1
	tmhmball_event 14, 52, TM_SCALD, EVENT_ROUTE_19_TM_SCALD

	const_def 1 ; object constants
	const ROUTE19_ROCK1

Route19ClearSmashRocks:
	disappear ROUTE19_ROCK1
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iffalse .Done
	appear ROUTE19_ROCK1
.Done:
	return

Route19ClearRocks:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .Done
	changeblock 6, 4, $7a
	changeblock 8, 4, $7a
	changeblock 10, 4, $7a
	changeblock 6, 6, $7a
	changeblock 12, 6, $7a
	changeblock 8, 8, $7a
.Done:
	return

EngineerScript_0x19ea4d:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iffalse_jumptextfaceplayer UnknownText_0x19ecaf
	jumptextfaceplayer UnknownText_0x19ed24

EngineerScript_0x19ea61:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iffalse_jumptextfaceplayer Route19EngineerText2
	jumptextfaceplayer Route19EngineerText1

UnknownText_0x19ecaf:
	text "Sorry. This road"
	line "is closed for"
	cont "construction."

	para "If you want to get"
	line "to Cinnabar, you'd"

	para "better go south"
	line "from Pallet Town."
	done

UnknownText_0x19ed24:
	text "I'm all sweaty."
	line "Time for a swim!"
	done

Route19EngineerText1:
	text "Who knows how long"
	line "it would take to"
	cont "move this boulder…"
	done

Route19EngineerText2:
	text "The roadwork is"
	line "finally finished."

	para "Now I can go"
	line "fishing again."
	done

Route19SignText:
	text "Route 19"

	para "Fuchsia City -"
	line "Seafoam Islands"
	done

CarefulSwimmingSignText:
	text "Please be careful"
	line "if you are swim-"
	cont "ming to Seafoam"
	cont "Islands."

	para "Fuchsia Police"
	done
