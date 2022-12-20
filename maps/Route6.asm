Route6_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 21,  9, ROUTE_6_UNDERGROUND_ENTRANCE, 1
	warp_event 10,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 23, 11, BGEVENT_JUMPTEXT, Route6UndergroundPathSignText

	def_object_events
	object_event 20, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterChaz, -1
	object_event 12, 13, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitaristfWanda, -1
	object_event 21, 19, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, OfficerfJennyScript, -1

GenericTrainerYoungsterChaz:
	generictrainer YOUNGSTER, CHAZ, EVENT_BEAT_YOUNGSTER_CHAZ, .SeenText, .BeatenText

	text "Me and my big"
	line "mouth…"
	done

.SeenText:
	text "Do I see a strong"
	line "trainer?"

	para "Nope, there's only"
	line "trash here!"
	done

.BeatenText:
	text "The trash was me…"
	done

GenericTrainerGuitaristfWanda:
	generictrainer GUITARISTF, WANDA, EVENT_BEAT_GUITARISTF_WANDA, .SeenText, .BeatenText

	text "Just move along…"
	done

.SeenText:
	text "You'd better"
	line "scatter and run!"
	done

.BeatenText:
	text "The battle's lost"
	line "and not won…"
	done

OfficerfJennyScript:
	checktime 1 << NITE
	iffalse_jumptextfaceplayer .DaytimeText
	checkevent EVENT_BEAT_OFFICERF_JENNY
	iftrue .AfterScript
	faceplayer
	opentext
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer OFFICERF, JENNY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERF_JENNY
	endtext

.AfterScript:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue_jumptextfaceplayer .AfterTextFemale
	jumptextfaceplayer .AfterTextMale

.DaytimeText:
	text "Us Officers are"
	line "here to keep the"
	cont "peace."
	done

.SeenText:
	text "You don't look"
	line "familiar."

	para "Squirtle Squad,"
	line "attack!"
	done

.BeatenText:
	text "Squirtle Squad,"
	line "retreat…"
	done

.AfterTextMale:
	text "Sorry to bother"
	line "you, sir."

	para "I get jumpy at"
	line "night."
	done

.AfterTextFemale:
	text "Sorry to bother"
	line "you, miss."

	para "I get jumpy at"
	line "night."
	done

Route6UndergroundPathSignText:
	text "Underground Path"

	para "Cerulean City -"
	line "Vermilion City"
	done
