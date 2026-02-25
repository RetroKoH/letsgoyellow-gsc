	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $19
.frame2
	db $01 ; bitmask
	db $1a, $1b, $19
.frame3
	db $02 ; bitmask
	db $1c, $1d, $1e
.frame4
	db $02 ; bitmask
	db $1f, $20, $1e
.frame5
	db $03 ; bitmask
	db $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
	db $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $02, $36, $37
.frame6
	db $04 ; bitmask
	db $1c, $1d, $1e, $38, $39, $3a, $3b
