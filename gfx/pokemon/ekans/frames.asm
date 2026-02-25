	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b, $1c, $14, $1d, $1e, $1f
.frame2
	db $01 ; bitmask
	db $14, $20, $21, $22, $14, $23, $24, $25, $14, $26, $27, $28
	db $29, $2a
.frame3
	db $01 ; bitmask
	db $14, $20, $21, $22, $14, $23, $2b, $2c, $14, $26, $27, $28
	db $29, $2a
.frame4
	db $02 ; bitmask
	db $2d, $2e
.frame5
	db $02 ; bitmask
	db $2f, $2e
