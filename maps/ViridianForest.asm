ViridianForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  4,  7, BGEVENT_JUMPTEXT, ViridianForestSignText1
	bg_event  6, 26, BGEVENT_JUMPTEXT, ViridianForestSignText2
	bg_event 28, 19, BGEVENT_JUMPTEXT, ViridianForestSignText3
	bg_event 18, 34, BGEVENT_JUMPTEXT, ViridianForestSignText4
	bg_event 26, 42, BGEVENT_JUMPTEXT, ViridianForestSignText5
	bg_event 20, 44, BGEVENT_JUMPTEXT, ViridianForestSignText6
	bg_event 32, 44, BGEVENT_ITEM + MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER
	bg_event 18, 43, BGEVENT_ITEM + FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL
	bg_event  4, 43, BGEVENT_ITEM + MULCH, EVENT_VIRIDIAN_FOREST_HIDDEN_MULCH
	bg_event 30,  9, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_VIRIDIAN_FOREST_HIDDEN_BIG_MUSHROOM
	bg_event  3, 14, BGEVENT_ITEM + LEAF_STONE, EVENT_VIRIDIAN_FOREST_HIDDEN_LEAF_STONE

	def_object_events
	object_event 4, 43, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerLassJoana, -1
	object_event 29, 42, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestBugBoyText, -1
	object_event 32, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherDoug, -1
	object_event 32, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerBugCatcherRick, -1
	object_event 31,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherBrian, -1
	object_event 15, 19, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassJocelyn, -1
	object_event  4, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherSammy, -1
	itemball_event 27, 13, ANTIDOTE, 1, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	itemball_event 14, 31, POTION, 1, EVENT_VIRIDIAN_FOREST_POTION

; Change this to an NPC who can battle AND trade
GenericTrainerLassJoana:
	generictrainer LASS, JOANA, EVENT_BEAT_LASS_JOANA, .SeenText, .BeatenText

	text "I looked forever,"
	line "but I never found"
	cont "a Pikachu here!"
	done

.SeenText:
	text "Hi! Do you have a"
	line "Pikachu?"
	done

.BeatenText:
	text "Oh no,"
	line "really?"
	done

ViridianForestBugBoyText:
	text "I ran out of #"
	line "Balls to catch"
	cont "#mon with!"

	para "You should carry"
	line "extras!"
	done

GenericTrainerBugCatcherDoug:
	generictrainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, .SeenText, .BeatenText

	text "Ssh! You'll scare"
	line "the bugs away!"
	done

.SeenText:
	text "Hey! You have"
	line "#mon! Come on!"
	cont "Let's battle 'em!"
	done

.BeatenText:
	text "No!"
	line "Weedle can't"
	cont "cut it!"
	prompt

GenericTrainerBugCatcherRick:
	generictrainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, .SeenText, .BeatenText

	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

.SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

.BeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#mon!"
	prompt

GenericTrainerBugCatcherBrian:
	generictrainer BUG_CATCHER, BRIAN, EVENT_BEAT_BUG_CATCHER_BRIAN, .SeenText, .BeatenText

	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

.SeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

.BeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#mon!"
	prompt

GenericTrainerLassJocelyn:
	generictrainer LASS, JOCELYN, EVENT_BEAT_LASS_JOCELYN, .SeenText, .BeatenText

	text "..."
	line "You win!"
	done

.SeenText:
	text "..."
	line "Let's Battle!"
	done

.BeatenText:
	text "Oh..."
	prompt

GenericTrainerBugCatcherSammy:
	generictrainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, .SeenText, .BeatenText

	text "..."
	line "You win!"
	done

.SeenText:
	text "..."
	line "Let's Battle!"
	done

.BeatenText:
	text "Oh..."
	prompt

ViridianForestSignText1:
	text "Leaving"
	line "Viridian Forest"
	cont "Pewter City Ahead"
	done

ViridianForestSignText2:
	text "Trainer Tips"

	para "Hold on to that"
	line "Big Mushroom!"

	para "Some maniacs will"
	line "pay lots of money"
	cont "for useless items!"
	done

ViridianForestSignText3:
	text "Trainer Tips"

	para "Grass-type #mon"
	line "are unaffected by"

	para "powder and spore"
	line "moves!"
	done

ViridianForestSignText4:
	text "For poison, use"
	line "Antidote! Get it"
	cont "at #mon Marts!"
	done

ViridianForestSignText5:
	text "Trainer Tips"

	para "Poison-type #-"
	line "mon can't be poi-"
	cont "soned themselves!"
	done

ViridianForestSignText6:
	text "Trainer Tips"

	para "Weaken #mon"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done
