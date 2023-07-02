NPCTrades:
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; NPC_TRADE_MIKE on Route 2
	rawchar 0, MR__MIME,   MR__MIME,   "Chaplin@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SATK_DOWN,  MALE | GALARIAN_FORM, PREMIER_BALL, SITRUS_BERRY
	dw 37460
	rawchar "Mike@@@@", $00
; NPC_TRADE_KYLE in Viridian Forest
	rawchar 3, PIKACHU,    BUTTERFREE, "Buttercup@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   FEMALE, POKE_BALL, PERSIM_BERRY
	dw 48926
	rawchar "Kylie@@@", $00
; NPC_TRADE_TIM in Pewter City
	rawchar 1, RATTATA,    RATTATA,    "Pepper@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   MALE | ALOLAN_FORM,   PREMIER_BALL,   SILK_SCARF
	dw 29189
	rawchar "Tim@@@@@", $00
; NPC_TRADE_EMY in Cerulean City
	rawchar 3, PONYTA,     PONYTA,     "Celeste@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_ATK_DOWN,   FEMALE | GALARIAN_FORM, LOVE_BALL,    PINK_BOW
	dw 00283
	rawchar "Emy@@@@@", $00
; NPC_TRADE_CHRIS in Vermilion City
	rawchar 2, GEODUDE,    GEODUDE,    "Rocky@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_SATK_DOWN,  MALE | ALOLAN_FORM,   GREAT_BALL,    SILVERPOWDER
	dw 15616
	rawchar "Chris@@@", $00
; NPC_TRADE_KIM in Celadon City
	rawchar 3, VULPIX,     VULPIX,     "Tails@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_ATK_DOWN,  FEMALE | ALOLAN_FORM, HEAL_BALL,    LUCKY_EGG
	dw 26491
	rawchar "Kim@@@@@", $00
; NPC_TRADE_JACQUES in Lavender Town
	rawchar 1, SANDSHREW,  SANDSHREW,  "Frosty@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_SATK_DOWN, FEMALE | ALOLAN_FORM, QUICK_BALL,    EVIOLITE
	dw 50082
	rawchar "Jacques@", $00
; NPC_TRADE_HARI in Saffron City
	rawchar 0, RAICHU,     RAICHU,     "Storm@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   MALE | ALOLAN_FORM,   FAST_BALL,    GOLD_LEAF
	dw 43972
	rawchar "Hari@@@@", $00
	assert_table_length NUM_NPC_TRADES

; to add:
; Diglett for Diglett-A in Vermilion after Diglett's cave can be explored again.
; Farfetch'd for Farfetch'd-G in Fuchsia
; Marowak for Marowak-A in Fuchsia
; Grimer for Grimer-A in ???
; Meowth for Meowth-A in ???
; Exeggutor for Exeggutor-A in ???