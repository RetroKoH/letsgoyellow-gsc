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
	object_event 13, 2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, YoungsterDannyText1, EVENT_GOT_POKEDEX_FROM_OAK
	object_event 12, 2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerYoungsterDanny, EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	fruittree_event  5,  7, FRUITTREE_ROUTE_1, ORAN_BERRY, PAL_NPC_BLUE

GenericTrainerYoungsterDanny:
	generictrainer YOUNGSTER, YOUNGSTER_DANNY, EVENT_BEAT_YOUNGSTER_DANNY, YoungsterDannySeenText, YoungsterDannyBeatenText

	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done

Route1Text1:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iffalse_jumpopenedtext Route1ViridianMartEarlyText
	checkevent EVENT_GOT_LURE_ROUTE_1
	iftrue_jumpopenedtext Route1ViridianMartLateText
	writetext Route1ViridianMartSampleText
	promptbutton
	verbosegiveitem LURE_ITEM
	iffalse_endtext
	setevent EVENT_GOT_LURE_ROUTE_1
	jumpthisopenedtext

	text "We also carry"
	line "# Balls for"
	cont "catching #mon!"
	done

Route1ViridianMartEarlyText:
	text "Hi! I work at"
	line "a # Mart."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "Viridian City."
	done

Route1ViridianMartLateText:
	text "If you ever run"
	line "out of stock, go"
	cont "to your nearest"
	cont "# Mart!"
	done

Route1ViridianMartSampleText:
	text "Hi! I work at"
	line "a # Mart."

	para "We are running a"
	line "promotion on a"
	cont "brand-new item"
	cont "we have in stock."

	para "It's a Lure! It's"
	line "sprayed just like"
	cont "Repel, only this"
	cont "attracts #mon!"

	para "Some of them may"
	line "even be more rare"
	cont "than usual!"

	para "Try it out!"
	line "If you like it,"
	cont "we will have more"
	cont "in stock later."
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

YoungsterDannyText1:
	text "Wow! You've got a"
	line "cool #mon with"
	cont "you. I'll bring"
	cont "my favorite one"
	cont "later."

	para "You'd better be"
	line "ready to battle"
	cont "when I do!"
	done

YoungsterDannySeenText:
	text "You're back! Now"
	line "I'll show you my"
	cont "favorite #mon!"
	done

YoungsterDannyBeatenText:
	text "You're way too"
	line "strong!"
	done
