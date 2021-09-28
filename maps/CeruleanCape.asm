CeruleanCape_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  9,  5, BILLS_HOUSE, 1
	warp_event 38, 29, DIM_CAVE_2F, 1

	db 3 ; coord events
	coord_event  4,  6, 1, CeruleanCapeDateInterruptedTrigger1
	coord_event  4,  7, 1, CeruleanCapeDateInterruptedTrigger2
	coord_event  9, 12, 1, CeruleanCapeDateInterruptedTrigger3

	db 2 ; bg events
	bg_event  7,  5, SIGNPOST_JUMPTEXT, BillsHouseSignText
	bg_event 18,  3, SIGNPOST_ITEM + BOTTLE_CAP, EVENT_CERULEAN_CAPE_HIDDEN_BOTTLE_CAP

	db 3 ; object events
	object_event  8,  9, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CAPE_BOYFRIEND
	object_event  8, 10, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CAPE_BOYFRIEND
	itemball_event 31, 12, SHELL_BELL, 1, EVENT_CERULEAN_CAPE_SHELL_BELL

	const_def 1 ; object constants
	const CERULEANCAPE_MISTY
	const CERULEANCAPE_BOYFRIEND

CeruleanCapeDateInterruptedTrigger1:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
	applyonemovement CERULEANCAPE_BOYFRIEND, big_step_down
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, UP
	pause 5
;	applymovement CERULEANCAPE_MISTY, MovementData_0x19efed
	showtext UnknownText_0x19f006
;	applymovement CERULEANCAPE_MISTY, MovementData_0x19effa
	jump CeruleanCapeDateFinishScript

CeruleanCapeDateInterruptedTrigger2:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
;	applymovement CERULEANCAPE_BOYFRIEND, MovementData_0x19efea
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, UP
	pause 5
;	applymovement CERULEANCAPE_MISTY, MovementData_0x19eff4
	showtext UnknownText_0x19f006
;	applymovement CERULEANCAPE_MISTY, MovementData_0x19effd
CeruleanCapeDateFinishScript:
	turnobject PLAYER, LEFT
;	applymovement CERULEANCAPE_MISTY, MovementData_0x19f000
	disappear CERULEANCAPE_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene $0
	special RestartMapMusic
	end

CeruleanCapeDateInterruptedTrigger3:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	turnobject CERULEANCAPE_BOYFRIEND, DOWN
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
	applymovement CERULEANCAPE_BOYFRIEND, .RunAwayMovement1
	turnobject CERULEANCAPE_MISTY, UP
	applymovement CERULEANCAPE_BOYFRIEND, .RunAwayMovement2
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, DOWN
	pause 5
	applymovement CERULEANCAPE_MISTY, .ApproachMovement
	showtext UnknownText_0x19f006
	applymovement CERULEANCAPE_MISTY, .LeaveMovement
	disappear CERULEANCAPE_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene $0
	special RestartMapMusic
	end

.RunAwayMovement1:
	big_step_right
	big_step_up
	step_end

.RunAwayMovement2:
	big_step_up
	big_step_up
	step_end

.ApproachMovement:
	step_right
	step_down
	step_down
	step_end

.LeaveMovement:
	step_up
	step_up
	step_up
	step_up
	step_end

UnknownText_0x19f006:
	text "Misty: Aww! Why"
	line "did you have to"

	para "show up and bug us"
	line "now?"

	para "Do you know what"
	line "they call people"
	cont "like you?"

	para "Pests! You heard"
	line "me right, pest!"

	para "…"

	para "…Oh? Those Badges"
	line "you have… Are they"
	cont "Johto Gym Badges?"

	para "If you have eight,"
	line "you must be good."

	para "OK, then. Come to"
	line "Cerulean Gym."

	para "I'll be happy to"
	line "take you on."

	para "I'm Misty, the"
	line "Gym Leader in"
	cont "Cerulean."
	done

BillsHouseSignText:
	text "Sea Cottage"
	line "Bill's House"
	done
