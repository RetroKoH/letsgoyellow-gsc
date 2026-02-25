	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $19, $00, $1a, $1b, $1c, $1d, $1e
.frame2
	db $00 ; bitmask
	db $1f, $00, $20, $21, $22, $23, $1e
.frame3
	db $01 ; bitmask
	db $1f, $00, $24, $22, $25, $1e
.frame4
	db $02 ; bitmask
	db $1f, $00, $26, $24, $22, $27, $28, $1e, $29, $2a
