; npctrade struct members (see data/events/npc_trades.asm)
rsreset
NPCTRADE_DIALOG      rb ; 00
NPCTRADE_GIVEMON     rb ; 01
NPCTRADE_GETMON      rb ; 02
NPCTRADE_LEVEL       rb ; 03 NEW
NPCTRADE_NICKNAME    rb MON_NAME_LENGTH ; 04 (+$B)
NPCTRADE_DVS         rb 3 ; 0F
NPCTRADE_PERSONALITY rw ; 10
NPCTRADE_BALL        rb ; 12
NPCTRADE_ITEM        rb ; 13
NPCTRADE_OT_ID       rw ; 14
NPCTRADE_OT_NAME     rb PLAYER_NAME_LENGTH ; 16
NPCTRADE_STRUCT_LENGTH EQU _RS

; NPCTrades indexes (see data/events/npc_trades.asm)
	const_def
	const NPC_TRADE_MIKE    ; 0 - Route 2: Mr Mime for Mr Mime-G
	const NPC_TRADE_JOANA   ; 1 - Viridian Forest: Pikachu for Butterfree
	const NPC_TRADE_TIM     ; 2
	const NPC_TRADE_EMY     ; 3
	const NPC_TRADE_CHRIS   ; 4 - Pewter Pokecenter: Geodude for Geodude-A
	const NPC_TRADE_KIM     ; 5
	const NPC_TRADE_JACQUES ; 6
	const NPC_TRADE_HARI    ; 7
NUM_NPC_TRADES EQU const_value

; trade gender limits
	const_def
	const TRADE_GENDER_EITHER
	const TRADE_GENDER_MALE
	const TRADE_GENDER_FEMALE

; TradeTexts indexes (see engine/events/npc_trade.asm)

; trade dialogs
	const_def
	const TRADE_DIALOG_INTRO
	const TRADE_DIALOG_CANCEL
	const TRADE_DIALOG_WRONG
	const TRADE_DIALOG_COMPLETE
	const TRADE_DIALOG_AFTER

; trade dialog sets
	const_def
	const TRADE_DIALOGSET_COLLECTOR
	const TRADE_DIALOGSET_HAPPY
	const TRADE_DIALOGSET_NEWBIE
	const TRADE_DIALOGSET_GIRL
