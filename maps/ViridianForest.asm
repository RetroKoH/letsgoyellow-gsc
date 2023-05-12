ViridianForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	def_coord_events
	coord_event 18, 46, 0, ViridianForest_MeetJessieJames
	coord_event 19, 46, 0, ViridianForest_MeetJessieJames

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
	object_event 18, 44, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJessieText, EVENT_MET_JESSIE_JAMES
	object_event 19, 44, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestJamesText, EVENT_MET_JESSIE_JAMES
	object_event 16, 18, SPRITE_YELLOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestYellowText, -1
	object_event 29, 42, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBug_maniacDane, -1
	object_event 33, 35, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerBug_maniacDion, -1
	object_event 32, 21, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBug_maniacStacey, -1
	object_event 31,  4, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBug_maniacEllis, -1
	object_event  5, 24, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBug_maniacAbner, -1
	itemball_event 14, 31, DIRE_HIT, 1, EVENT_ROUTE_2_DIRE_HIT
	itemball_event  3, 33, MAX_POTION, 1, EVENT_ROUTE_2_MAX_POTION

	object_const_def
	const VFOREST_JAMES
	const VFOREST_JESSIE

ViridianForest_MeetJessieJames:
	showemote EMOTE_WAIT, VFOREST_JESSIE, 15
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JessieJames1
	showemote EMOTE_SHOCK, VFOREST_JESSIE, 15
	turnobject VFOREST_JESSIE, DOWN
	showtext Text_JessieSeesPlayer
	turnobject VFOREST_JAMES, DOWN
	showemote EMOTE_SHOCK, VFOREST_JAMES, 15
	showtext Text_JessieSeesPlayer2
	turnobject VFOREST_JAMES, RIGHT
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JamesAsksForMeowth
	showemote EMOTE_WAIT, VFOREST_JESSIE, 15
	applymovement VFOREST_JESSIE, Movement_JessieJamesApproach
	applymovement VFOREST_JAMES, Movement_JessieJamesApproach
	showtext Text_JessieDemandsPlayer
	showtext Text_JamesBoasts
	turnobject VFOREST_JAMES, RIGHT
	turnobject VFOREST_JESSIE, LEFT
	showtext Text_JessieJamesLaugh
	applymovement VFOREST_JESSIE, Movement_JessieLeaves
	disappear VFOREST_JESSIE
	turnobject VFOREST_JAMES, DOWN
	showtext Text_JamesWarnsPlayer
	applymovement VFOREST_JAMES, Movement_JamesLeaves
	disappear VFOREST_JAMES
	setscene $1
	end

Text_JessieJames1:
	text "???: Looks like"
	line "there's nothing"
	cont "in here."

	para "???: Then let's"
	line "just search a bit"
	cont "farther in."
	done

Text_JessieSeesPlayer:
	text "???: Hey! What are"
	line "you doing there?"
	done

Text_JessieSeesPlayer2:
	text "???: You were"
	line "eavesdropping,"
	cont "weren't you?"
	done

Text_JamesAsksForMeowth:
	text "???: Why didn't we"
	line "have Meowth here"
	cont "keeping watch"
	cont "for us?"
	done

Text_JessieDemandsPlayer:
	text "???: We know there"
	line "are rare Bug-type"
	cont "#mon hiding in"
	cont "Viridian Forest!"

	para "If you've found"
	line "any, you better"
	cont "hand 'em over"
	cont "to us, twerp!"
	done

Text_JamesBoasts:
	text "???: That's right!"
	line "If anyone's going"
	cont "to have the most"
	cont "powerful #mon,"
	cont "it's us!"
	done

Text_JessieJamesLaugh:
	text "???: Wahahaha!"
	done

Text_JamesWarnsPlayer:
	text "???: And don't"
	line "even think about"
	cont "following us!"
	done

Movement_JessieJamesApproach:
	step_down
	step_end

Movement_JamesLeaves:
	step_right
Movement_JessieLeaves:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

GenericTrainerBug_maniacDane:
	generictrainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_MANIAC_DANE, BugManiacDaneSeenText, BugManiacDaneBeatenText

	text "Pretty impressive!"

	para "I'm sure you can"
	line "go anywhere with"
	cont "that skill!"
	done

GenericTrainerBug_maniacDion:
	generictrainer BUG_CATCHER, DION, EVENT_BEAT_BUG_MANIAC_DION, BugManiacDionSeenText, BugManiacDionBeatenText

	text "Bug-type #mon"
	line "make all kinds of"
	cont "sounds."

	para "For bug #mon"
	line "fans, knowing how"
	cont "to distinguish"
	cont "them is key!"
	done

GenericTrainerBug_maniacStacey:
	generictrainer BUG_CATCHER, STACEY, EVENT_BEAT_BUG_MANIAC_STACEY, BugManiacStaceySeenText, BugManiacStaceyBeatenText

	text "Has anyone ever"
	line "told you that from"
	cont "behind you look"
	cont "like a Venonat?"
	done

GenericTrainerBug_maniacEllis:
	generictrainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_MANIAC_ELLIS, BugManiacEllisSeenText, BugManiacEllisBeatenText

	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done

GenericTrainerBug_maniacAbner:
	generictrainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_MANIAC_ABNER, BugManiacAbnerSeenText, BugManiacAbnerBeatenText

	text "Doesn't matter what"
	line "kind of #mon--"

	para "as long as you"
	line "like them, they"
	cont "all look cute."
	done

BugManiacDaneSeenText:
	text "Welcome to"
	line "Viridian Forest."
	cont "Enjoy my Bug-type"
	cont "#mon."
	done

BugManiacDaneBeatenText:
	text "That's wonderful…"
	done

BugManiacDionSeenText:
	text "Shh! Be quiet! The"
	line "bug #mon will"
	cont "run away!"
	done

BugManiacDionBeatenText:
	text "Phew…"
	done

BugManiacStaceySeenText:
	text "Wow, that's a HUGE"
	line "#mon!"

	para "…"
	line "…What kind of"
	cont "trainer?!"
	done

BugManiacStaceyBeatenText:
	text "I couldn't catch"
	line "it!"
	done

BugManiacEllisSeenText:
	text "There's nothing"
	line "more efficient and"
	cont "beautiful than a"
	cont "Bug-type #mon."
	done

BugManiacEllisBeatenText:
	text "I lost"
	line "beautifully!"
	done

BugManiacAbnerSeenText:
	text "Many people prefer"
	line "solid bug #mon"
	cont "over squishy bug"
	cont "#mon."
	done

BugManiacAbnerBeatenText:
	text "Thanks for your"
	line "hard work, my"
	cont "lovely #mon…"
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

ViridianForestJessieText:
	text "Beat it, twerp!"
	line "We're hard at"
	cont "work over here!"
	done

ViridianForestJamesText:
	text "Prepare for"
	line "trouble! And make"
	cont "it double!"
	done

ViridianForestYellowText:
	text "Hi! My name's"
	line "Yellow. It's nice"
	cont "to meet you!"
	done