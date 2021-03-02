Route1_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events
;	warp_event 10,  1, ROUTE_1_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event  9, 27, SIGNPOST_JUMPTEXT, Route1SignText

	db 3 ; object events
	object_event  5, 24, SPRITE_CLERK, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, Route1Text1, -1
	object_event 15, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1Text2, -1
	fruittree_event  5,  7, FRUITTREE_ROUTE_1, ORAN_BERRY

Route1Text1:
	checkevent EVENT_GOT_POTION_ROUTE_1
	iftrue_jumptextfaceplayer Route1ViridianMartSampleReceivedText
	faceplayer
	opentext
	writetext Route1ViridianMartSampleText
	buttonsound
	verbosegiveitem POTION
	iffalse_endtext
	setevent EVENT_GOT_POTION_ROUTE_1
	thisopenedtext

Route1ViridianMartSampleReceivedText:
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

Route1ViridianMartSampleText:
	text "Hi! I work at"
	line "a #MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	done

Route1Text2:
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done
