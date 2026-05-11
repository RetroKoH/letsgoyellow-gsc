ViridianForestViridianGate_MapScriptHeader:
	def_scene_scripts				; KoH - Added new friend cutscene
	scene_script ForestGateTrigger0	; Enter gate for the first time (Trigger cutscene)
	scene_script ForestGateTrigger1

	def_callbacks

	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2_SOUTH, 2
	warp_event  5,  7, ROUTE_2_SOUTH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FriendNPC, EVENT_NPCRED_ON_ROUTE_2
	object_event  4,  2, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FriendNPC, EVENT_NPCGREEN_ON_ROUTE_2
	object_event  4,  2, SPRITE_CRYS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FriendNPC, EVENT_NPCCHASE_ON_ROUTE_2
	object_event  4,  2, SPRITE_BETA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FriendNPC, EVENT_NPCELAINE_ON_ROUTE_2
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianForestViridianGateOfficerText, -1

	object_const_def
	const FORESTGATE_NPCRED
	const FORESTGATE_NPCGREEN
	const FORESTGATE_NPCCHASE
	const FORESTGATE_NPCELAINE

ForestGateTrigger0:
	sdefer OaksLab_FriendCutscene
ForestGateTrigger1:
	end

OaksLab_FriendCutscene:
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15

	readvar VAR_PLAYERGENDER
	scalltable ForestGatePanTable

	playmusic MUSIC_RIVAL_ENCOUNTER
	end

ForestGatePanTable:
	table_width 2
	dw .Red
	dw .Green
	dw .Chase
	dw .Elaine
	assert_table_length NUM_PLAYER_GENDERS

.Red:
	appear FORESTGATE_NPCGREEN
	applymovement FORESTGATE_NPCGREEN, ForestGateMovementData_PanDown
	showtext .SeenText
	setlasttalked FORESTGATE_NPCGREEN
	scall .FriendBattle

	showtext .AfterText
	applymovement FORESTGATE_NPCGREEN, ForestGateMovementData_PanUp
	playsound SFX_EXIT_BUILDING
	disappear FORESTGATE_NPCGREEN
	sjumpfwd .EndScene

.Green:
	appear FORESTGATE_NPCRED
	applymovement FORESTGATE_NPCRED, ForestGateMovementData_PanDown
	showtext .SeenText
	setlasttalked FORESTGATE_NPCRED
	scall .FriendBattle

	showtext .AfterText
	applymovement FORESTGATE_NPCRED, ForestGateMovementData_PanUp
	playsound SFX_EXIT_BUILDING
	disappear FORESTGATE_NPCRED
	sjumpfwd .EndScene

.Chase:
	appear FORESTGATE_NPCELAINE
	applymovement FORESTGATE_NPCELAINE, ForestGateMovementData_PanDown
	showtext .SeenText
	setlasttalked FORESTGATE_NPCELAINE
	scall .FriendBattle

	showtext .AfterText
	applymovement FORESTGATE_NPCELAINE, ForestGateMovementData_PanUp
	playsound SFX_EXIT_BUILDING
	disappear FORESTGATE_NPCELAINE
	sjumpfwd .EndScene

.Elaine:
	appear FORESTGATE_NPCCHASE
	applymovement FORESTGATE_NPCCHASE, ForestGateMovementData_PanDown
	showtext .SeenText
	setlasttalked FORESTGATE_NPCCHASE
	scall .FriendBattle

	showtext .AfterText
	applymovement FORESTGATE_NPCCHASE, ForestGateMovementData_PanUp
	playsound SFX_EXIT_BUILDING
	disappear FORESTGATE_NPCCHASE
	sjumpfwd .EndScene

.FriendBattle:
	winlosstext .WinText, .LossText
	loadtrainer LYRA1, LYRA1_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	end

.EndScene:
;	setmapscene VIRIDIAN_FOREST_VIRIDIAN_GATE, $1
	setscene $1
	waitsfx
	playmapmusic
	end

.SeenText:
	text "Hi friend…"
	line "Let's see how"
	cont "good you are."
	done

.AfterText:
	text "Wow!"
	line "I can't wait to"
	cont "battle with you"
	cont "again."
	done

.WinText:
	text "That was a fun"
	line "battle!"
	done

.LossText:
	text "You're way too"
	line "strong!"
	done

ForestGateMovementData_PanDown:
	step_down
	step_down
	step_down
	step_down
	step_end

ForestGateMovementData_PanUp:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

FriendNPC:
	jumpthistextfaceplayer

	text "Testing variable"
	line "character sprites"

	para "on NPC objects"
	line "for future use."
	done

ViridianForestViridianGateOfficerText:
	text "Be careful,"
	line "Viridian Forest"

	para "is a natural"
	line "maze!"
	done