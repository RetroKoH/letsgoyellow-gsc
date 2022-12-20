Route7_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15,  6, ROUTE_7_SAFFRON_GATE, 1
	warp_event 15,  7, ROUTE_7_SAFFRON_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5, 13, BGEVENT_JUMPTEXT, Route7UndergroundPathSignText
	bg_event  6, 11, BGEVENT_JUMPTEXT, Route7LockedDoorText

	def_object_events
	object_event  1,  0, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_SNORLAX, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7Snorlax, EVENT_ROUTE_8_SNORLAX
	itemball_event 16,  1, MENTAL_HERB, 1, EVENT_ROUTE_7_MENTAL_HERB

	object_const_def
	const ROUTE7_BIG_SNORLAX

Route7Snorlax:
	opentext
	special SpecialSnorlaxAwake
	iftrue .Awake
	jumpopenedtext .AsleepText

.Awake:
	writetext .AwakeText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 15
	startbattle
	disappear ROUTE7_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

.AsleepText:
	text "Snorlax is snoring"
	line "peacefully…"
	done

.AwakeText:
	text "The #gear was"
	line "placed near the"
	cont "sleeping Snorlax…"

	para "…"

	para "Snorlax woke up!"
	done

Route7UndergroundPathSignText:
	text "What's this flyer?"

	para "“Uncouth trainers"
	line "have been holding"

	para "battles in the"
	line "Underground Path."

	para "Because of rising"
	line "complaints by lo-"
	cont "cal residents, the"
	cont "Underground Path"
	cont "has been sealed"
	cont "indefinitely.”"

	para "-- Celadon Police"
	done

Route7LockedDoorText:
	text "It's locked…"
	done
