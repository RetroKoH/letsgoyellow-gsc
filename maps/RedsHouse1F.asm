RedsHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CheckNPCGender

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, RedsHouse1FTVScript

	def_object_events
	object_event  5,  4, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, HomeNPC, EVENT_NPCRED_ON_ROUTE_2
	object_event  5,  4, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, HomeNPC, EVENT_NPCGREEN_ON_ROUTE_2
	object_event  5,  4, SPRITE_CRYS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, HomeNPC, EVENT_NPCCHASE_ON_ROUTE_2
	object_event  5,  4, SPRITE_BETA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, HomeNPC, EVENT_NPCELAINE_ON_ROUTE_2
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1

	object_const_def
	const REDHOME_NPCRED
	const REDHOME_NPCGREEN
	const REDHOME_NPCCHASE
	const REDHOME_NPCELAINE
	const REDHOME_MOM

CheckNPCGender:
	disappear REDHOME_NPCRED
	disappear REDHOME_NPCGREEN
	disappear REDHOME_NPCCHASE
	disappear REDHOME_NPCELAINE
	readvar VAR_PLAYERGENDER
	ifequalfwd PLAYER_FEMALE, .Female
	ifequalfwd PLAYER_ENBY, .Enby
	ifequalfwd PLAYER_BETA, .Beta
; Male
	appear REDHOME_NPCGREEN
	endcallback
.Female:
	appear REDHOME_NPCRED
	endcallback
.Enby:
	appear REDHOME_NPCELAINE
	endcallback
.Beta:
	appear REDHOME_NPCCHASE
	endcallback

HomeNPC:
	jumpthistextfaceplayer

	text "Testing variable"
	line "character sprites"

	para "on NPC objects"
	line "for future use."
	done

RedsMom:
	checkevent EVENT_MET_REDS_MOM
	iftrue_jumptextfaceplayer .Text2
	setevent EVENT_MET_REDS_MOM
	jumpthistextfaceplayer

	text "Hi!"

	para "Red's been away"
	line "for a long time."

	para "He hasn't called"
	line "either, so I have"

	para "no idea where he"
	line "is or what he's"
	cont "been doing."

	para "They say that no"
	line "word is proof that"

	para "he's doing fine,"
	line "but I do worry"
	cont "about him."
	done

.Text2:
	text "I worry about Red"
	line "getting hurt or"

	para "sick, but he's a"
	line "boy. I'm proud"

	para "that he is doing"
	line "what he wants to"
	cont "do."
	done

RedsHouse1FTVScript:
	jumpthistext

	text "They have programs"
	line "that aren't shown"
	cont "in Johto…"
	done
