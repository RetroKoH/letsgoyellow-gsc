scene_var: MACRO
; db group, map
; dw address
	map_id \1
	dw \2
ENDM

MapTriggers::
	scene_var PALLET_TOWN,		wPalletTownTrigger
	scene_var OAKS_LAB,			wOaksLabTrigger
	scene_var VIRIDIAN_CITY,	wViridianCityTrigger
	db -1
