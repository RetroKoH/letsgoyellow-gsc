; mart types (see engine/items/mart.asm)
	const_def
	const MARTTYPE_STANDARD		; Repurpose to fill stock based on Story Progression
	const MARTTYPE_BITTER		; Herb Shop (Unused, or sell mints)
	const MARTTYPE_BARGAIN		; Bargain Shop (Maybe use)
	const MARTTYPE_PHARMACY		; Unused
	const MARTTYPE_ROOFTOP		; Goldenrod Rooftop Sale (Unused???)
	const MARTTYPE_SILPH		; Silph Shop
	const MARTTYPE_ADVENTURER	; Maybe Unused
	const MARTTYPE_INFORMAL		; Yellow Forest - Unused
	const MARTTYPE_BAZAAR		; Unused
	const MARTTYPE_TM			; TMs
	const MARTTYPE_BLUECARD		; Radio Tower - Unused
	const MARTTYPE_BP			; Battle Tower Points

; Special Mart indexes (see data/items/marts.asm)
	const_def
	const MART_MT_MOON
	const MART_PHARMACY 		; Bitter, Mint, etc
	const MART_CELADON_2F_1
	const MART_CELADON_2F_2
	const MART_CELADON_3F_TM
	const MART_CELADON_4F
	const MART_CELADON_5F_1
	const MART_CELADON_5F_2
	const MART_SILPH_CO
	const MART_BT_1
	const MART_BT_2
	const MART_BT_3
NUM_MARTS EQU const_value
