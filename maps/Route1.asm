Route1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_JUMPTEXT, Route1SignText

	def_object_events
	object_event  5, 24, SPRITE_CLERK, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1Text1, -1
	object_event 15, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route1Text2, -1
	fruittree_event  5,  7, FRUITTREE_ROUTE_1, ORAN_BERRY, PAL_NPC_BLUE

Route1Text1:
	checkevent EVENT_GOT_POTION_ROUTE_1
	iftrue_jumptextfaceplayer Route1ViridianMartSampleReceivedText
	faceplayer
	opentext
	writetext Route1ViridianMartSampleText
	promptbutton
	verbosegiveitem POTION
	iffalse_endtext
	setevent EVENT_GOT_POTION_ROUTE_1
	jumpthisopenedtext

Route1ViridianMartSampleReceivedText:
	text "We also carry"
	line "# Balls for"
	cont "catching #mon!"
	done

Route1ViridianMartSampleText:
	text "Hi! I work at"
	line "a #Mart."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "Viridian City."

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
	line "to Pallet Town"
	cont "quicker that way."
	done

Route1SignText:
	text "Route 1"

	para "Pallet Town -"
	line "Viridian City"
	done
