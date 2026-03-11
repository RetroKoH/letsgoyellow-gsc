Route13East_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_JUMPTEXT, Route13TrainerTips1Text
	bg_event 29,  5, BGEVENT_JUMPTEXT, Route13TrainerTips2Text
	bg_event 27, 11, BGEVENT_JUMPTEXT, Route13SignText

	def_object_events
	object_event  5, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route13EastGrampsScript, -1
	cuttree_event 30,  4, EVENT_ROUTE_13_CUT_TREE

Route13EastGrampsScript:
	special CheckIfTrendyPhraseIsLucky
	iftruefwd .lucky
	jumpthistextfaceplayer

	text "I can't see Lucky"
	line "Island today…"

	para "But I know it's"
	line "appeared before!"
	done

.lucky
	jumpthistextfaceplayer

	text "I can see Lucky"
	line "Island today!"
	cont "What a spectacle!"
	done

Route13TrainerTips1Text:
	text "Trainer Tips"

	para "Look! Right there,"
	line "at the left side"
	cont "of the post."
	done

Route13TrainerTips2Text:
	text "Trainer Tips"

	para "Some #mon need"
	line "items to evolve."

	para "If you're lucky,"
	line "a wild #mon can"

	para "be found holding"
	line "its own evolution"
	cont "item!"
	done

Route13SignText:
	text "Route 13"

	para "North to Silence"
	line "Bridge"
	done
