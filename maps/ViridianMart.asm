ViridianMart_MapScriptHeader:
	def_scene_scripts
	scene_script ViridianMartTrigger0
	scene_script ViridianMartTrigger1

	def_callbacks

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
;	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_VIRIDIAN
	object_event  7,  2, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianMartLassText, -1
	object_event  1,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianMartCooltrainerMText, -1

ViridianMartTrigger0:
	showtext FromPalletText
	applymovement PLAYER, Movement_WalkUpToViridianClerk
	opentext
	writetext ViridianMartParcelQuestText
	waitbutton
	verbosegivekeyitem OAKS_PARCEL
	setevent EVENT_GOT_OAKS_PARCEL
	showtext HiToOakText
	setscene $1
ViridianMartTrigger1:
	end

Movement_WalkUpToViridianClerk:
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

ViridianMartClerkScript:
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .AfterDex
	showtext HiToOakText
	end
.AfterDex
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN

FromPalletText:
	text "Hey! You came from"
	line "Pallet Town?"
	done

ViridianMartParcelQuestText:
	text "You know Prof."
	line "Oak, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
	done

HiToOakText:
	text "Okay! Say hi to"
	line "Prof. Oak for me!"
	done

ViridianMartLassText:
	text "The Gym Leader"
	line "here is totally"
	cont "cool."

	para "He's the only one"
	line "without a type"
	cont "specialty."

	para "He likes to keep"
	line "people guessing."
	done

ViridianMartCooltrainerMText:
	text "Have you been to"
	line "Cinnabar?"

	para "It's an island way"
	line "south of here."
	done
