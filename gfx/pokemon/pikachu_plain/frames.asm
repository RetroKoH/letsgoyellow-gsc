	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24
	db $25, $00, $26, $27, $28
.frame2
	db $01 ; bitmask
	db $19, $1a, $1b, $29, $1d, $2a, $1e, $2b, $20, $2c, $2d, $22
	db $23, $2e, $2f, $30, $00, $26, $27, $28
.frame3
	db $02 ; bitmask
	db $19, $31, $32, $1b, $29, $1d, $2a, $1e, $2b, $20, $2c, $2d
	db $22, $23, $2e, $2f, $30, $00, $26, $27, $28
.frame4
	db $03 ; bitmask
	db $33, $34, $35, $36, $37
.frame5
	db $04 ; bitmask
	db $19, $1b, $38
