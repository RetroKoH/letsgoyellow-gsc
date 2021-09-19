ViridianForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	db 0 ; coord events

	db 9 ; bg events
	bg_event  4,  7, SIGNPOST_JUMPTEXT, ViridianForestSignText1
	bg_event  6, 26, SIGNPOST_JUMPTEXT, ViridianForestSignText2
	bg_event 28, 19, SIGNPOST_JUMPTEXT, ViridianForestSignText3
	bg_event 18, 34, SIGNPOST_JUMPTEXT, ViridianForestSignText4
	bg_event 26, 42, SIGNPOST_JUMPTEXT, ViridianForestSignText5
	bg_event 20, 44, SIGNPOST_JUMPTEXT, ViridianForestSignText6
	bg_event 17, 29, SIGNPOST_JUMPTEXT, ViridianForestMossRockText
	bg_event 32, 44, SIGNPOST_ITEM + POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION
	bg_event 18, 43, SIGNPOST_ITEM + ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

	db 13 ; object events
	object_event 22, 44, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestText1, -1
	object_event 29, 42, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestText2, -1
	object_event 16, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestText3, -1
	object_event  4, 43, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 0, GenericTrainerLassBrittany, -1
	object_event 32, 35, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherRick, -1
	object_event 32, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherDoug, -1
	object_event 30,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherAntony, -1
	object_event 11,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherCharly, -1
	object_event  4, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherSammy, -1
	fruittree_event 31,  3, FRUITTREE_VIRIDIAN_FOREST, PECHA_BERRY
	itemball_event  14, 31, POTION, 1, EVENT_VIRIDIAN_FOREST_POTION
	itemball_event   3, 33, POKE_BALL, 1, EVENT_VIRIDIAN_FOREST_POKEBALL
	itemball_event  27, 13, ANTIDOTE, 1, EVENT_VIRIDIAN_FOREST_ANTIDOTE

GenericTrainerLassBrittany:
	generictrainer LASS, BRITTANY, EVENT_BEAT_LASS_BRITTANY, LassBrittanySeenText, LassBrittanyBeatenText
	; LassSarahAfterText
	text "I saw a Pikachu"
	line "earlier, but I"
	cont "haven't caught one"
	cont "yet…"
	done

LassBrittanySeenText:
	text "Hi, do you have a"
	line "Pikachu?"
	done

LassBrittanyBeatenText:
	text "Oh no, really?"
	done

GenericTrainerBugCatcherRick:
	generictrainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, BugCatcherRickSeenText, BugCatcherRickBeatenText
	; BugCatcherRickAfterText
	text "Ssh! You'll scare"
	line "the bugs away!"
	cont "Another time, OK?"
	done

BugCatcherRickSeenText:
	text "Hey! You have"
	line "#mon! Come on,"
	cont "let's battle 'em!"
	done

BugCatcherRickBeatenText:
	text "No! Caterpie just"
	line "can't cut it!"
	done

GenericTrainerBugCatcherDoug:
	generictrainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText
	; BugCatcherDougAfterText
	text "Darn, I'm going"
	line "to catch some"
	cont "stronger ones…"
	done

BugCatcherDougSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

BugCatcherDougBeatenText:
	text "Huh? I ran out of"
	line "#mon!"
	done

GenericTrainerBugCatcherAntony:
	generictrainer BUG_CATCHER, ANTONY, EVENT_BEAT_BUG_CATCHER_ANTONY, BugCatcherAntonySeenText, BugCatcherAntonyBeatenText
	; BugCatcherTajiriAfterText
	text "A Metapod is cool"
	line "because its"
	cont "attack is its"
	cont "defense!"
	done

BugCatcherAntonySeenText:
	text "I'm gonna be the"
	line "best. You just"
	cont "can't beat me!"
	done

BugCatcherAntonyBeatenText:
	text "After all I did…"
	done

GenericTrainerBugCatcherCharly:
	generictrainer BUG_CATCHER, CHARLY, EVENT_BEAT_BUG_CATCHER_CHARLY, BugCatcherCharlySeenText, BugCatcherCharlyBeatenText
	; BugCatcherTajiriAfterText
	text "I lost some of my"
	line "allowance…"
	done

BugCatcherCharlySeenText:
	text "I may be little,"
	line "but I won't like"
	cont "if you go easy!"
	done

BugCatcherCharlyBeatenText:
	text "Oh, boo. Nothing"
	line "went right."
	done

GenericTrainerBugCatcherSammy:
	generictrainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, BugCatcherSammySeenText, BugCatcherSammyBeatenText
	; BugCatcherSammyAfterText
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground."
	
	para "I'm looking for"
	line "the stuff I"
	cont "dropped…"
	done

BugCatcherSammySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherSammyBeatenText:
	text "I give! You're"
	line "good at this!"
	done

ViridianForestText1:
	text "I came here with"
	line "some friends!"
	
	para "They're out for"
	line "#MON battles!"
	done

ViridianForestText2:
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with."
	
	para "You should carry"
	line "extras."
	done

ViridianForestText3:
	text "Hi there. The"
	line "name's YELLOW."
	cont "I heal #MON."
	
	para "Come back later,"
	line "ok?"
	done

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

ViridianForestMossRockText:
	text "The rock is cover-"
	line "ed in moss."

	para "It feels pleasant-"
	line "ly cool."
	done
