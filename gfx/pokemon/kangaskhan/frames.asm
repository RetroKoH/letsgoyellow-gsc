	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $01, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f
.frame2
	db $01 ; bitmask
	db $01, $40, $41, $42, $31, $43, $44, $45, $46, $34, $35, $36
	db $47, $48, $38, $39, $3a, $3b, $49, $3c, $3d, $3e, $3f
.frame3
	db $02 ; bitmask
	db $01, $40, $41, $42, $31, $43, $4a, $45, $46, $34, $35, $4b
	db $4c, $4d, $38, $39, $4e, $4f, $3c, $3d, $50, $51, $52, $3f
	db $53, $54, $55, $56, $57, $58
.frame4
	db $03 ; bitmask
	db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $50, $51
	db $52, $53, $54, $55, $56, $57, $58
.frame5
	db $04 ; bitmask
	db $59, $63, $5c, $64, $65, $66, $67, $68
.frame6
	db $05 ; bitmask
	db $59, $5a, $5b, $5c, $5d, $5e, $66, $61, $62
.frame7
	db $06 ; bitmask
	db $69, $49
