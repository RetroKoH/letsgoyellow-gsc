Route17_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, UnknownScript_0x1ad0ab

	db 0 ; warp events

	db 0 ; coord events

	db 6 ; bg events
	bg_event 11, 71, SIGNPOST_ITEM + MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER
	bg_event 10, 123, SIGNPOST_ITEM + MAX_ELIXIR, EVENT_ROUTE_17_HIDDEN_MAX_ELIXIR
	bg_event  9, 64, SIGNPOST_JUMPTEXT, Route17Notice1Text
	bg_event  9, 71, SIGNPOST_JUMPTEXT, Route17TrainerTips1Text
	bg_event  9, 94, SIGNPOST_JUMPTEXT, Route17TrainerTips2Text
	bg_event  9, 101, SIGNPOST_JUMPTEXT, Route17Notice2Text

	db 0 ; object events

UnknownScript_0x1ad0ab:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	return

Route17Notice1Text:
	text "It's a notice."

	para "Watch out for"
	line "discarded items!"
	done

Route17TrainerTips1Text:
	text "Trainer Tips"

	para "All #mon are"
	line "unique."

	para "Two #mon of the"
	line "same species and"
	cont "level may still"

	para "look, act, and"
	line "grow differently."
	done

Route17TrainerTips2Text:
	text "Trainer Tips"

	para "Open the Start"
	line "menu to stay in"
	cont "place while on a"
	cont "slope."
	done

Route17Notice2Text:
	text "It's a notice."

	para "Don't throw the"
	line "game, throw #"
	cont "Balls instead!"
	done
