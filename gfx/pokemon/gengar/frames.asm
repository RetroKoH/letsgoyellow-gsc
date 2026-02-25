	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
	db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41
.frame2
	db $01 ; bitmask
	db $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
	db $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59
	db $5a, $5b, $5c, $5d, $5e, $23, $5f, $60, $40, $61, $62
.frame3
	db $02 ; bitmask
	db $63, $47, $64, $65, $66, $67, $68, $5e, $69, $62
.frame4
	db $03 ; bitmask
	db $6a, $23, $6b, $6c, $6d, $6e, $6f, $70
.frame5
	db $03 ; bitmask
	db $6a, $23, $6b, $71, $73, $74, $6f, $75
