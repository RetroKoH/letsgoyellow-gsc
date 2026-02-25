	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $24, $25, $26, $27, $28, $1e, $29, $2a, $2b, $2c, $2d, $2e
	db $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
	db $3b, $3c, $3d, $3e, $3f, $1e, $40
.frame2
	db $01 ; bitmask
	db $41, $42, $43, $44, $45, $46, $30, $47, $48, $49, $4a, $35
	db $36, $4b, $4c, $4d, $4e, $1e, $1e
.frame3
	db $02 ; bitmask
	db $4f, $50, $51, $52, $53, $54, $55, $56, $33, $57, $58, $59
	db $4c, $5a, $5b, $5c, $5d
.frame4
	db $03 ; bitmask
	db $1e, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68
	db $2e, $69, $6a, $6b, $6c, $33, $6d, $6e, $6f, $70, $71, $73
	db $74, $75, $76, $77, $78, $79, $7a, $7b
.frame5
	db $04 ; bitmask
	db $1e, $1e, $7c, $66, $7d, $7e, $45, $7f, $6a, $80, $81, $49
	db $82, $6e, $6f, $83, $75, $84, $7a, $85
.frame6
	db $05 ; bitmask
	db $86, $87, $88, $89, $53, $54, $8a, $8b, $33, $57
.frame7
	db $06 ; bitmask
	db $8c, $33
