InitialEvents:
; Hidden-By-Default NPC events
	dw EVENT_HIDE_PALLETTOWN_OAK
	dw EVENT_HIDE_OAKSLAB_OAK
	dw EVENT_HIDE_OAKSLAB_TRACE
	dw EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	dw EVENT_HIDE_ROUTE_22_TRACE
	dw EVENT_HIDE_PEWTERGYM_BROCK
	dw EVENT_INITIALIZED_EVENTS
	dw -1

InitialEngineFlags:
	dw ENGINE_ROCKET_SIGNAL_ON_CH20
	dw ENGINE_ROCKETS_IN_MAHOGANY
	dw -1

InitialVariableSpritesAndMapScenes:
varspriteaddr EQUS "wVariableSprites - SPRITE_VARS +"
	dwb varspriteaddr SPRITE_FUCHSIA_GYM_1, SPRITE_JANINE
	dwb varspriteaddr SPRITE_FUCHSIA_GYM_2, SPRITE_JANINE
	dwb varspriteaddr SPRITE_FUCHSIA_GYM_3, SPRITE_JANINE
	dwb varspriteaddr SPRITE_FUCHSIA_GYM_4, SPRITE_JANINE
	dwb varspriteaddr SPRITE_COPYCAT, SPRITE_LASS
	dwb varspriteaddr SPRITE_JANINE_IMPERSONATOR, SPRITE_CUTE_GIRL
	dwb wGoldenrodCitySceneID, $1
	dwb wBattleTowerOutsideSceneID, $1
	dwb wBellchimeTrailSceneID, $1
	dw -1
