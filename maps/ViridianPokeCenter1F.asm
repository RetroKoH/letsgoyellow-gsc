ViridianPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, VIRIDIAN_CITY, 5
	warp_event  6,  7, VIRIDIAN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalBlueScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokeCenter1FCooltrainermScript, -1
	object_event  8,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianPokeCenter1FCooltrainerfText, -1
	object_event  3,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianPokeCenter1FBugCatcherText, -1
	;object_event  2,  4, SPRITE_COSPLAYER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1

MoveReminderScript:
	faceplayer
	opentext
	writetext MoveReminderIntroText
	waitbutton
;	checkitem GOLD_LEAF
;	iffalse .no_gold_leaf
	writetext MoveReminderPromptText
	yesorno
	iffalse .refused
	setval NO_MOVE ; to toggle move relearner
	writetext MoveReminderWhichMonText
	waitbutton
	special Special_MoveTutor
	ifequal $0, .teach_move
.refused
	jumpopenedtext MoveReminderCancelText

.no_gold_leaf
	jumpopenedtext MoveReminderNoGoldLeafText

.teach_move
	takeitem GOLD_LEAF
	jumpopenedtext MoveReminderCancelText

MoveReminderIntroText::
	text "Me? I'm the"
	line "Move Maniac."

	para "I'll make your"
	line "#mon remember"

	para "a move if you'll"
	line "trade me a"
	cont "Gold Leaf!"
	done

MoveReminderPromptText::
	text "Do you want me to"
	line "teach one of your"
	cont "#mon a move?"
	done

MoveReminderWhichMonText::
	text "Yay! Which #mon"
	line "needs tutoring?"
	done

MoveReminderNoGoldLeafText::
	text "Huh? You don't"
	line "have any Gold"
	cont "Leaves."

	para "Sometimes you can"
	line "find them on wild"
	cont "Bellsprout."
	done

MoveReminderNoMovesText::
	text "Sorry… There isn't"
	line "any move I can"

	para "make that #mon"
	line "remember."
	done

MoveReminderCancelText::
	text "If your #mon"
	line "needs to learn a"

	para "move, come back"
	line "with a Gold Leaf!"
	done

PokemonJournalBlueScript:
	setflag ENGINE_READ_BLUE_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Blue!"

	para "Blue supposedly"
	line "visits his cher-"
	cont "ished #mon"

	para "every year in the"
	line "House of Souls."
	done

ViridianPokeCenter1FCooltrainermScript:
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue_jumptextfaceplayer .BlueText
	jumpthistextfaceplayer

	text "Where in the world"
	line "is Viridian's Gym"

	para "Leader? I wanted"
	line "to challenge him."
	done

.BlueText:
	text "There are strong"
	line "Gym Trainers at"
	cont "the Viridian Gym."

	para "Someday I'm going"
	line "to join them!"
	done

ViridianPokeCenter1FCooltrainerfText:
	text "I heard that the"
	line "Gym in Cinnabar is"
	cont "gone."

	para "I wonder what be-"
	line "came of Blaine,"
	cont "the Gym Leader."
	done

ViridianPokeCenter1FBugCatcherText:
	text "My dream is to be-"
	line "come a Gym Leader."
	done
