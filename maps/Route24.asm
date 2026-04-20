Route24_MapScriptHeader:
	def_scene_scripts
	scene_const SCENE_ROUTE24_BRIDGE_UNDERFOOT
	scene_const SCENE_ROUTE24_BRIDGE_OVERHEAD

	def_callbacks
	callback MAPCALLBACK_TILES, Route24TileScript

	def_warp_events

	def_coord_events
	coord_event 19, 15, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 20, 14, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 21, 14, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 22, 15, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 20, 15, SCENE_ROUTE24_BRIDGE_UNDERFOOT, Route24BridgeUnderfootTrigger
	coord_event 21, 15, SCENE_ROUTE24_BRIDGE_UNDERFOOT, Route24BridgeUnderfootTrigger
	coord_event 20, 39, SCENE_ROUTE24_BRIDGE_UNDERFOOT, Route24BridgeUnderfootTrigger
	coord_event 21, 39, SCENE_ROUTE24_BRIDGE_UNDERFOOT, Route24BridgeUnderfootTrigger
	coord_event 25, 13, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 15, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 16, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 17, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 18, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 19, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 20, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 21, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 22, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger
	coord_event 25, 23, SCENE_ROUTE24_BRIDGE_OVERHEAD, Route24BridgeOverheadTrigger

	def_bg_events
	bg_event 23, 11, BGEVENT_JUMPTEXT, Route24AdvancedTipsSignText

	def_object_events
	object_event 21, 16, SPRITE_PETREL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPetrel, EVENT_ROUTE_24_ROCKET
	object_event 21, 19, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperEthan, -1
	object_event 20, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerLassAli, -1
	object_event 21, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerYoungsterTimmy, -1
	object_event 20, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerLassAli, -1
	object_event 21, 31, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherCale, -1
	fruittree_event 16,  5, FRUITTREE_ROUTE_24, LANSAT_BERRY, PAL_NPC_PINK

	object_const_def
	const ROUTE24_ROCKET

Route24TileScript:
	checkscene
	iftruefwd .underfoot
	callasm Route24_OverheadBridgeAsm
	endcallback

.underfoot:
	callasm Route24_UnderfootBridgeAsm
	endcallback

Route24_OverheadBridgeAsm:
	changebridgeblock 20, 16, $39, ROUTE_24
	changebridgeblock 20, 18, $38, ROUTE_24
	changebridgeblock 20, 20, $38, ROUTE_24
	changebridgeblock 20, 22, $38, ROUTE_24
	changebridgeblock 20, 24, $38, ROUTE_24
	changebridgeblock 20, 26, $38, ROUTE_24
	changebridgeblock 20, 28, $38, ROUTE_24
	changebridgeblock 20, 30, $38, ROUTE_24
	changebridgeblock 20, 32, $38, ROUTE_24
	changebridgeblock 20, 34, $38, ROUTE_24
	changebridgeblock 20, 36, $38, ROUTE_24
	changebridgeblock 20, 38, $49, ROUTE_24
	jmp BufferScreen

Route24_UnderfootBridgeAsm:
	changebridgeblock 20, 16, $34, ROUTE_24
	changebridgeblock 20, 18, $34, ROUTE_24
	changebridgeblock 20, 20, $34, ROUTE_24
	changebridgeblock 20, 22, $34, ROUTE_24
	changebridgeblock 20, 24, $34, ROUTE_24
	changebridgeblock 20, 26, $34, ROUTE_24
	changebridgeblock 20, 28, $34, ROUTE_24
	changebridgeblock 20, 30, $34, ROUTE_24
	changebridgeblock 20, 32, $34, ROUTE_24
	changebridgeblock 20, 34, $34, ROUTE_24
	changebridgeblock 20, 36, $34, ROUTE_24
	changebridgeblock 20, 38, $4a, ROUTE_24
	jmp BufferScreen

Route24BridgeOverheadTrigger:
	callasm Route24_OverheadBridgeAsm
	callthisasm
	xor a
	jr Route24_FinishBridge

Route24BridgeUnderfootTrigger:
	callasm Route24_UnderfootBridgeAsm
	callthisasm
	ld a, $1
Route24_FinishBridge:
	ld [wWalkingOnBridge], a
	ld [wRoute24SceneID], a ; setscene a
	jmp GenericFinishBridge

GenericTrainerCamperEthan:
	generictrainer CAMPER, ETHAN, EVENT_BEAT_CAMPER_LLOYD, .SeenText, .BeatenText

	text "I did my best."
	line "I have no regrets."
	done

.SeenText:
	text "OK! I'm No. 5!"
	line "I'll stomp you!"
	done

.BeatenText:
	text "Whoa! Too much!"
	done

GenericTrainerLassReli:
	generictrainer LASS, RELI, EVENT_BEAT_LASS_ELLEN, .SeenText, .BeatenText

	text "I did my best."
	line "I have no regrets."
	done

.SeenText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

.BeatenText:
	text "I lost too…"
	done

GenericTrainerYoungsterTimmy:
	generictrainer YOUNGSTER, TIMMY, EVENT_BEAT_SCHOOLBOY_JOE, .SeenText, .BeatenText

	text "I did my best."
	line "I have no regrets."
	done

.SeenText:
	text "Here's No. 3!"
	line "I won't be easy."
	done

.BeatenText:
	text "Ow! Stomped flat!"
	done

GenericTrainerLassAli:
	generictrainer LASS, ALI, EVENT_BEAT_LASS_ELLEN, .SeenText, .BeatenText

	text "I did my best."
	line "I have no regrets."
	done

.SeenText:
	text "I'm second!"
	line "Now it's serious!"
	done

.BeatenText:
	text "How could I lose?"
	done

GenericTrainerBugCatcherCale:
	generictrainer BUG_CATCHER, CALE, EVENT_BEAT_SCHOOLBOY_DUDLEY, .SeenText, .BeatenText

	text "I did my best."
	line "I have no regrets."
	done

.SeenText:
	text "This is Nugget"
	line "Bridge! Beat us 5"
	cont "trainers and win"
	cont "a fabulous prise!"

	para "Think you've got"
	line "what it takes?"
	done

.BeatenText:
	text "Whoo! Good stuff!"
	done

TrainerPetrel:
	trainer ADMIN_PETREL, 1, EVENT_BEAT_ROCKET_GRUNTM_31, .SeenText, .BeatenText, 0, .Script

.Script:
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext .AfterBattleText
	promptbutton
	special Special_FadeOutMusic
	writetext .DisappearsText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	setevent EVENT_LEARNED_ABOUT_MACHINE_PART
	pause 25
	special Special_FadeInQuickly
	playmusic MUSIC_NUGGET_BRIDGE_HGSS
	end

.SeenText:
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!"

	para "You just earned a"
	line "fabulous prize!"

; Gives a NUGGET

	para "By the way, would"
	line "you like to join"
	cont "Team Rocket?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #mon!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "Ok, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

.BeatenText:
	text "Ayieeeh! No, no,"
	line "no, believe it I"
	cont "can't!"

	para "Strong very much"
	line "be you! Match I am"
	cont "not to you!"
	done

.AfterBattleText:
	text "OK. Tell you mine"
	line "secret will I."

	para "Machine Part steal"
	line "by me, hide it I"

	para "did in Gym of the"
	line "Cerulean."

	para "Inside water put"
	line "it I did. Look for"

	para "in water center of"
	line "Gym at."

	para "But you forget me"
	line "not!"

	para "Beat you for sure"
	line "will Team Rocket."

	para "Come from Johto"
	line "will they, mine"

	para "friends, yes. Will"
	line "revenge they are."
	done

.DisappearsText:
	text "…"

	para "You say what? Team"
	line "Rocket bye-bye a"

	para "go-go? Broken it"
	line "is says you?"

	para "Oh, no! Should I"
	line "do what now on"
	cont "from, me?"
	done

Route24AdvancedTipsSignText:
	text "Advanced Tips!"

	para "The Sheer Force"
	line "Ability negates"

	para "side effects of"
	line "moves, but it"

	para "also negates some"
	line "other effects!"

	para "In particular,"
	line "the damage done"

	para "by a held Life Orb"
	line "is ignored!"
	done
