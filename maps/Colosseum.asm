Colosseum_MapScriptHeader:
	db 1 ; scene scripts
	scene_script ColosseumTrigger0

	db 2 ; callbacks
	callback MAPCALLBACK_OBJECTS, ColosseumScript_SetWhichRed
	callback MAPCALLBACK_NEWMAP, ColosseumScript_InitializeCB

	db 2 ; warp events
	warp_event  4,  7, POKECENTER_2F, 3
	warp_event  5,  7, POKECENTER_2F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  4,  4, SIGNPOST_RIGHT, MapColosseumSignpost1Script
	bg_event  5,  4, SIGNPOST_LEFT, MapColosseumSignpost1Script

	db 2 ; object events
	object_event  3,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RedScript_0x193499, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RedScript_0x193499, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2

	const_def 1 ; object constants
	const COLOSSEUM_RED1
	const COLOSSEUM_RED2

ColosseumTrigger0:
	priorityjump ColosseumScript_Initialize
	end

ColosseumScript_SetWhichRed:
	special Special_CableClubCheckWhichRed
	iffalse .Red2
	disappear COLOSSEUM_RED2
	appear COLOSSEUM_RED1
	return

.Red2:
	disappear COLOSSEUM_RED1
	appear COLOSSEUM_RED2
	return

ColosseumScript_InitializeCB:
	setmapscene POKECENTER_2F, $2
	return

ColosseumScript_Initialize:
	setscene $1
	setmapscene POKECENTER_2F, $2
	end

MapColosseumSignpost1Script:
	special Special_Colosseum
	newloadmap MAPSETUP_LINKRETURN
	end

RedScript_0x193499:
	thistext

	text "Your friend is"
	line "ready."
	done
