	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
.frame2
	db $01 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c
	db $3d
.frame3
	db $00 ; bitmask
.frame4
	db $02 ; bitmask
	db $00, $3e, $00, $3f, $40, $41, $31, $32, $42, $33, $34, $35
	db $43, $36, $37, $38, $44, $39, $3a, $3b, $45, $3c, $3d, $46
	db $47
.frame5
	db $03 ; bitmask
	db $00, $3e, $00, $3f, $40, $41, $31, $32, $48, $49, $42, $33
	db $34, $35, $4a, $4b, $43, $36, $37, $38, $4c, $4d, $4e, $44
	db $39, $3a, $3b, $00, $45, $3c, $3d, $46, $47
