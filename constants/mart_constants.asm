; mart types (see engine/items/mart.asm)
	const_def
	const MARTTYPE_STANDARD		; Repurposed to fill stock based on Story Progression
	const MARTTYPE_MTMOON		; DIALOGUE ONLY - New shop on Mt. Moon Square
	const MARTTYPE_BARGAIN		; SINGLE ITEM SYSTEM - Bargain Shop (Sells only one of: Nuggets, Pearls, etc. WILL USE)
	const MARTTYPE_HERBSHOP		; DIALOGUE ONLY - Herb Shop (Add nature mints) -- Change dialogue :: Replacing PHARMACY -- "What's up? Need some medicine?" - Unused. Will remove.
	const MARTTYPE_CELADON		; HARDCODED MARTS - Standard Mart dialog w/ hardcoded list
	const MARTTYPE_ROOFTOP		; ITEM SALE SYSTEM - Goldenrod Rooftop Sale (Sells a shortlist of items on sale. Will reuse this in Celadon 2F)
	const MARTTYPE_SILPH		; DIALOGUE ONLY - "Employees have access to company swag" Silph Shop (Change dialogue?)
	const MARTTYPE_ADVENTURER	; DIALOGUE ONLY - "I picked up some rare items abroad" - Use for an NPC in Fuchsia City.
	const MARTTYPE_INFORMAL		; DIALOGUE ONLY - "What's up? Need some medicine?" - Unused. Might use in Mt. Moon and Rock Tunnel.
	const MARTTYPE_BAZAAR		; DIALOGUE ONLY - "Come take a look at my wares" - Unused. Maybe add Berry Bazaar somewhere?
	const MARTTYPE_TM			; TMs SYSTEM - Standard dialogue, but inventory seems to work slightly differently. Needs testing.
	const MARTTYPE_BLUECARD		; POINTS SYSTEM - Was used for Radio Tower. Might reuse for Points System in the Safari Zone?
	const MARTTYPE_BP			; BP POINTS SYSTEM - Used for Battle Tower. Might keep?

; Special Mart indices (see data/items/marts.asm)
	const_def
	const MART_MT_MOON 			; Try to add a unique item?
	const MART_HERB 			; Bitter, Mint, etc
	const MART_CELADON_2F		; Use as fixed general
	; Use for daily sales on select items (change daily)
	const MART_CELADON_3F_TM	; TMs sold here
	const MART_CELADON_4F		; Evo stones
	const MART_CELADON_5F_1
	const MART_CELADON_5F_2
	const MART_SILPH_CO
	const MART_BT_1
	const MART_BT_2
	const MART_BT_3
NUM_MARTS EQU const_value
