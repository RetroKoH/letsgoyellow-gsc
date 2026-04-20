TinTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 15, BELLCHIME_TRAIL, 3
	warp_event  8, 15, BELLCHIME_TRAIL, 3
	warp_event  8,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events	; KoH - Look up use of pokemon_events for future use
	pokemon_event  7,  9, SUICUNE, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BLUE, ClearText, EVENT_TIN_TOWER_1F_SUICUNE
	pokemon_event  5,  9, RAIKOU, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_BROWN, ClearText, EVENT_TIN_TOWER_1F_RAIKOU
	pokemon_event 10,  9, ENTEI, SPRITEMOVEDATA_POKEMON, -1, PAL_MON_RED, ClearText, EVENT_TIN_TOWER_1F_ENTEI