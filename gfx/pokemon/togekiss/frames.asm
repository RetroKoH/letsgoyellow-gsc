	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
	dw .frame7
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34
.frame2
	db $00 ; bitmask
	db $31, $35, $36, $37
.frame3
	db $01 ; bitmask
	db $38, $39, $3a, $3b, $35, $3c, $3d, $3e, $3f, $36, $40, $41
	db $42, $43, $44, $37
.frame4
	db $02 ; bitmask
	db $45, $46, $00, $47, $48, $49, $35, $4a, $3c, $4b, $4c, $4d
	db $4e, $4f, $36, $50, $51, $52, $53, $54, $37
.frame5
	db $03 ; bitmask
	db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
	db $61, $62, $63, $64, $00, $00, $65, $66, $67
.frame6
	db $04 ; bitmask
	db $00, $00, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $5f
	db $00, $71, $72, $73, $74, $00, $00, $00, $75, $76, $77
.frame7
	db $05 ; bitmask
	db $00, $00, $78, $69, $6a, $79, $6b, $6c, $6d, $6e, $6f, $70
	db $5f, $00, $71, $72, $73, $74, $00, $00, $00, $75, $76, $77
