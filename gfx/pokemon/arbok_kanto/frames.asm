	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $00, $3a, $3b
.frame2
	db $01 ; bitmask
	db $32, $3c, $3d, $3e, $3f, $00, $00, $40, $41, $42, $43
.frame3
	db $01 ; bitmask
	db $44, $45, $46, $47, $48, $00, $49, $4a, $4b, $4c, $4d
.frame4
	db $02 ; bitmask
	db $4e, $4f, $50, $51
.frame5
	db $03 ; bitmask
	db $52, $53, $54, $55, $51
.frame6
	db $03 ; bitmask
	db $52, $56, $57, $58, $51
