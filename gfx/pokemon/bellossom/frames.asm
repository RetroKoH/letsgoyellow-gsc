	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
	dw .frame8
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
.frame2
	db $01 ; bitmask
	db $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
	db $3a, $3b, $3c, $3d, $3e
.frame3
	db $01 ; bitmask
	db $2e, $3f, $40, $41, $42, $43, $34, $35, $44, $45, $38, $46
	db $47, $3b, $48, $49, $00
.frame4
	db $02 ; bitmask
	db $4a, $4b, $4c, $4d, $4e, $34, $4f, $50, $51, $52, $53, $54
	db $3b, $55, $56, $00
.frame5
	db $01 ; bitmask
	db $00, $57, $58, $59, $5a, $5b, $34, $5c, $5d, $5e, $5f, $60
	db $61, $3b, $62, $63, $00
.frame6
	db $02 ; bitmask
	db $64, $65, $66, $67, $68, $34, $5c, $69, $6a, $5f, $6b, $6c
	db $3b, $62, $6d, $00
.frame7
	db $03 ; bitmask
	db $6e, $6f, $70, $71, $73, $74, $75, $76, $77, $78, $79, $7a
.frame8
	db $04 ; bitmask
	db $7b, $7c, $7d
