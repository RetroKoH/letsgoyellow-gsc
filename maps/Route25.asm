Route25_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	itemball_event 25,  4, PROTEIN, 1, EVENT_ROUTE_25_PROTEIN
	cuttree_event 28,  6, EVENT_ROUTE_25_CUT_TREE
	object_event 20,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route25MewYoungsterText, -1
	object_event 21,  4, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, Route25SlowpokeScript, -1

	const_def 1 ; object constants
	const ROUTE25_COOLTRAINERM_BEFORE
	const ROUTE25_COOLTRAINERM_AFTER

Route25SlowpokeScript:
	opentext
	writetext Route25SlowpokeText1
	pause 60
	writetext Route25SlowpokeText2
	cry SLOWPOKE
	waitendtext

Route25MewYoungsterText:
	text "One time I saw a"
	line "Mew around here!"

	para "You don't believe"
	line "me? Slowpoke saw"
	cont "it too!"
	done

Route25SlowpokeText1:
	text "Slowpoke: …"

	para "…… …… ……"
	done

Route25SlowpokeText2:
	text "…… ……Yawn?"
	done
