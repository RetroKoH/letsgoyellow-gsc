	dw .frame1
	dw .frame2
	dw .frame3
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $35, $36, $37, $38, $39, $3a, $3b, $31, $3c, $3d, $3e
	db $3f, $32, $40, $41, $42, $33, $43, $44, $45, $46, $47, $48
	db $49
.frame3
	db $02 ; bitmask
	db $31, $4a, $32, $33
