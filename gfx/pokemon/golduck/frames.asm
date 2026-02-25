	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37
.frame2
	db $01 ; bitmask
	db $38, $39, $3a, $00, $00, $3b, $3c, $3d, $00, $00, $33, $34
	db $3e, $00, $36, $37, $3f, $40, $41, $42, $43, $44, $45, $46
	db $47, $48
.frame3
	db $02 ; bitmask
	db $38, $39, $3a, $00, $00, $3b, $3c, $3d, $00, $00, $33, $34
	db $49, $4a, $36, $4b, $4c, $4d, $4e, $4f, $50, $51, $00, $52
	db $53, $00, $54
.frame4
	db $03 ; bitmask
	db $38, $39, $3a, $00, $00, $3b, $3c, $3d, $00, $00, $33, $34
	db $3e, $00, $55, $56, $57, $58, $59
.frame5
	db $04 ; bitmask
	db $5a, $5b, $5c
.frame6
	db $05 ; bitmask
	db $5d, $5e, $00, $31, $5f, $60, $00, $33, $34, $3e, $00, $36
	db $37
