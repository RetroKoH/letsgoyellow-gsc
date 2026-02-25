	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
	dw .frame6
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $00, $3b
	db $3c
.frame2
	db $01 ; bitmask
	db $00, $00, $00, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $49, $4a, $4b, $00, $00, $4c, $4d, $00, $00
	db $00
.frame3
	db $02 ; bitmask
	db $00, $00, $00, $3d, $3e, $3f, $4e, $4f, $50, $42, $43, $51
	db $52, $46, $47, $48, $49, $4a, $4b, $00, $00, $4c, $4d, $00
	db $00, $00
.frame4
	db $03 ; bitmask
	db $31, $32, $53, $33, $34, $4e, $4f, $54, $55, $56, $35, $36
	db $37, $38, $39, $3a, $00, $3b, $3c
.frame5
	db $04 ; bitmask
	db $53, $4e, $4f, $54, $55, $56
.frame6
	db $05 ; bitmask
	db $53, $40, $57, $58, $59
