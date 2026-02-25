	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $04
	db $3c
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $3d, $34, $35, $36, $3e, $37, $38, $39, $3a
	db $3b, $04, $3f, $40, $41, $42
.frame3
	db $02 ; bitmask
	db $31, $43, $44, $45, $46, $34, $35, $47, $48, $37, $38, $39
	db $3a, $49, $4a, $4b, $16, $4c, $4d, $04, $4e, $4f, $50, $04
	db $04, $51, $52, $53
.frame4
	db $03 ; bitmask
	db $54, $55, $56
