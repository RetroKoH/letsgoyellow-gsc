PokemonMansion1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5, 27, CINNABAR_ISLAND, 3
	warp_event  6, 27, CINNABAR_ISLAND, 3
	warp_event 21, 23, POKEMON_MANSION_B1F, 1

	db 0 ; coord events

	db 8 ; bg events
	bg_event 21, 12, SIGNPOST_ITEM + FULL_RESTORE, EVENT_POKEMON_MANSION_1F_HIDDEN_FULL_RESTORE
	bg_event 14, 23, SIGNPOST_READ, PokemonMansion1FHiddenPPUp
	bg_event  2,  5, SIGNPOST_JUMPTEXT, PokemonMansion1FMewtwoStatueText
	bg_event 15, 23, SIGNPOST_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event 18, 23, SIGNPOST_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event 19, 23, SIGNPOST_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event 18, 19, SIGNPOST_JUMPTEXT, PokemonMansion1FFlowerPotText
	bg_event 19, 19, SIGNPOST_JUMPTEXT, PokemonMansion1FFlowerPotText

	db 2 ; object events
	itemball_event 17, 22, PROTEIN, 1, EVENT_POKEMON_MANSION_1F_PROTEIN
	itemball_event 27, 22, IRON, 1, EVENT_POKEMON_MANSION_1F_IRON

PokemonMansion1FHiddenPPUp:
	checkevent EVENT_POKEMON_MANSION_1F_HIDDEN_PP_UP
	iftrue_jumptext PokemonMansion1FFlowerPotText
	giveitem PP_UP
	iffalse .PackFull
	opentext
	itemtotext PP_UP, $0
	writetext PokemonMansion1FFoundItemText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_POKEMON_MANSION_1F_HIDDEN_PP_UP
	end

.PackFull:
	opentext
	itemtotext PP_UP, $0
	writetext PokemonMansion1FFoundItemText
	buttonsound
	jumpopenedtext PokemonMansion1FNoRoomForItemText

PokemonMansion1FFoundItemText:
	text "<PLAYER> found"
	line "@"
	text_from_ram wStringBuffer3
	text "!"
	done

PokemonMansion1FNoRoomForItemText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done

PokemonMansion1FMewtwoStatueText:
	text "A #mon statue…"

	para "It looks very"
	line "threatening."
	done

PokemonMansion1FFlowerPotText:
	text "It's filled with"
	line "soil and ashes…"
	done
