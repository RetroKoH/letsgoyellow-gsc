specialcall: MACRO
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallWhereverYouAre,  PHONE_OAK,  BikeShopPhoneScript   ; SPECIALCALL_BIKESHOP
	specialcall SpecialCallOnlyWhenOutside, PHONE_LYRA, LyraPhoneScript2      ; SPECIALCALL_YELLOWFOREST
	specialcall SpecialCallOnlyWhenOutside, PHONE_LYRA, LyraPhoneScript2      ; SPECIALCALL_FIRSTBADGE
	specialcall SpecialCallOnlyWhenOutside, PHONE_BILL, BillPhoneScript2      ; SPECIALCALL_SECONDBADGE
	specialcall SpecialCallOnlyWhenOutside, PHONE_LYRA, LyraPhoneScript2      ; SPECIALCALL_LYRASEGG
	assert_table_length NUM_SPECIALCALLS
