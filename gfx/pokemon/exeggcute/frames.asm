	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $00
	db $3c
.frame2
	db $01 ; bitmask
	db $3d, $3c, $3e, $3f, $40, $41, $42, $43, $44
.frame3
	db $02 ; bitmask
	db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50
.frame4
	db $03 ; bitmask
	db $3d, $51, $52, $00, $53, $54, $55, $56, $57, $58, $59, $5a
	db $5b, $5c
.frame5
	db $04 ; bitmask
	db $3d, $5d, $5e, $3c, $5f, $60, $61, $62, $63, $64
.frame6
	db $05 ; bitmask
	db $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
	db $71, $72, $73, $74, $75
