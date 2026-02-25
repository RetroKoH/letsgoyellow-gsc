	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29
.frame2
	db $01 ; bitmask
	db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35
	db $36, $37
.frame3
	db $02 ; bitmask
	db $38, $39, $2b, $3a, $3b, $2d, $2e, $2f, $3c, $3d, $31, $32
	db $33, $3e, $3f, $35, $36, $37, $40, $41, $42, $43
.frame4
	db $03 ; bitmask
	db $38, $44, $3a, $45, $24, $25, $3c, $46, $26, $27, $3e, $47
	db $28, $29, $40, $41, $42, $43
.frame5
	db $04 ; bitmask
	db $48, $49, $4a, $4b, $4c, $4d
