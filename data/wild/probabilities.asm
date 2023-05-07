GrassMonProbTable:
	table_width 1, GrassMonProbTable
	db 30  ; 30% chance
	db 60  ; 30% chance
	db 80  ; 20% chance
	db 90  ; 10% chance
	db 95  ;  5% chance
	db 98  ;  3% chance
	db 100 ;  2% chance
	assert_table_length NUM_GRASSMON_ACTUAL

GrassMonProbTable_Lure:
	table_width 1, GrassMonProbTable_Lure
	db 30  ; 30% chance
	db 50  ; 20% chance
	db 65  ; 15% chance
	db 75  ; 10% chance
	db 85  ; 10% chance
	db 95  ; 10% chance
	db 100 ;  5% chance
	assert_table_length NUM_GRASSMON_ACTUAL

WaterMonProbTable:
	table_width 1, WaterMonProbTable
	db 60  ; 60% chance
	db 90  ; 30% chance
	db 100 ; 10% chance
	assert_table_length NUM_WATERMON_ACTUAL

WaterMonProbTable_Lure:
	table_width 1, WaterMonProbTable_Lure
	db 40  ; 40% chance
	db 70  ; 30% chance
	db 100 ; 30% chance
	assert_table_length NUM_WATERMON_ACTUAL