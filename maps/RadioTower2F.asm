DEF BLUE_CARD_POINT_CAP EQU 30		; KoH - Make note of this constant to use in future maps

RadioTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	def_coord_events

	def_bg_events

	def_object_events