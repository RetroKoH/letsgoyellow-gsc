Route17South_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17SouthAlwaysOnBikeCallback

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 64, BGEVENT_JUMPTEXT, Route17SouthNotice1Text
	bg_event  9, 71, BGEVENT_JUMPTEXT, Route17SouthTrainerTips1Text
	bg_event  9, 94, BGEVENT_JUMPTEXT, Route17SouthTrainerTips2Text
	bg_event  9, 101, BGEVENT_JUMPTEXT, Route17SouthNotice2Text

	def_object_events

Route17SouthAlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

Route17SouthNotice1Text:
	text "It's a notice."

	para "Watch out for"
	line "discarded items!"
	done

Route17SouthTrainerTips1Text:
	text "Trainer Tips"

	para "All #mon are"
	line "unique."

	para "Two #mon of the"
	line "same species and"
	cont "level may still"

	para "look, act, and"
	line "grow differently."
	done

Route17SouthTrainerTips2Text:
	text "Trainer Tips"

	para "Open the Start"
	line "menu to stay in"
	cont "place while on a"
	cont "slope."
	done

Route17SouthNotice2Text:
	text "It's a notice."

	para "Don't throw the"
	line "game, throw #"
	cont "Balls instead!"
	done
