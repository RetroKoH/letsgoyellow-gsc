TradeCenter_MapScriptHeader:
	db 1 ; scene scripts
	scene_script TradeCenterTrigger0

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, TradeCenter_SetWhichRed

	db 2 ; warp events
	warp_event  4,  7, POKECENTER_2F, 2
	warp_event  5,  7, POKECENTER_2F, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  4,  4, SIGNPOST_RIGHT, MapTradeCenterSignpost1Script
	bg_event  5,  4, SIGNPOST_LEFT, MapTradeCenterSignpost1Script

	db 2 ; object events
	object_event  3,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RedScript_0x193499, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  6,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RedScript_0x193499, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2

	const_def 1 ; object constants
	const TRADECENTER_RED1
	const TRADECENTER_RED2

TradeCenterTrigger0:
	priorityjump TradeCenter_Initialize
	end

TradeCenter_SetWhichRed:
	special Special_CableClubCheckWhichRed
	iffalse .Red2
	disappear TRADECENTER_RED2
	appear TRADECENTER_RED1
	return

.Red2:
	disappear TRADECENTER_RED1
	appear TRADECENTER_RED2
	return

TradeCenter_Initialize:
	setscene $1
	setmapscene POKECENTER_2F, $1
	end

MapTradeCenterSignpost1Script:
	special Special_TradeCenter
	newloadmap MAPSETUP_LINKRETURN
	end
