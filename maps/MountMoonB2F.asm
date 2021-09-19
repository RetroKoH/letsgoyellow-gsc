MountMoonB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 10, 24, MOUNT_MOON_B1F, 4
	warp_event 21,  7, MOUNT_MOON_B1F, 5
	warp_event 17, 15, MOUNT_MOON_B1F, 6
	warp_event  3,  9, MOUNT_MOON_B1F, 7

	db 0 ; coord events

	db 3 ; bg events
	bg_event 28,  7, SIGNPOST_ITEM + ETHER, EVENT_MOUNT_MOON_B2F_HIDDEN_ETHER
	bg_event  7,  9, SIGNPOST_ITEM + STARDUST, EVENT_MOUNT_MOON_B2F_HIDDEN_STARDUST
	bg_event 10, 30, SIGNPOST_ITEM + PP_UP, EVENT_MOUNT_MOON_B2F_HIDDEN_PP_UP

	db 7 ; object events
	object_event  9,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerSuperNerdMiguel, -1
	object_event 10,  6, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_POKEBALL, PLAYEREVENT_ITEMBALL, HELIX_FOSSIL, 1, EVENT_MOUNT_MOON_B2F_HELIX_FOSSIL
	object_event 11,  6, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_POKEBALL, PLAYEREVENT_ITEMBALL, DOME_FOSSIL, 1, EVENT_MOUNT_MOON_B2F_DOME_FOSSIL
	itemball_event 11, 14, MOON_STONE, 1, EVENT_MOUNT_MOON_B2F_MOON_STONE
	itemball_event 18, 21, DUSK_STONE, 1, EVENT_MOUNT_MOON_B2F_DUSK_STONE
	itemball_event 22,  3, SHINY_STONE, 1, EVENT_MOUNT_MOON_B2F_SHINY_STONE
	itemball_event 26, 11, BIG_MUSHROOM, 1, EVENT_MOUNT_MOON_B2F_BIG_MUSHROOM

	const_def 1 ; object constants
	const MT_MOON_JESSIE
	const MT_MOON_JAMES
	const MT_MOON_FOSSIL_NERD
	const MT_MOON_ARIANA
	const MT_MOON_GRUNT1
	const MT_MOON_GRUNT2
	const MT_MOON_GRUNT3
	const MT_MOON_DOME_FOSSIL
	const MT_MOON_HELIX_FOSSIL

GenericTrainerSuperNerdMiguel:
	generictrainer SUPER_NERD, MIGUEL, EVENT_BEAT_SUPER_NERD_MIGUEL, SuperNerdMiguelSeenText, SuperNerdMiguelBeatenText

	text "Maybe if I had"
	line "an Aerodactyl…"
	done

SuperNerdMiguelSeenText:
	text "I found these"
	line "fossils and re-"
	cont "vived them!"

	para "Now they're both"
	line "mine!"
	done

SuperNerdMiguelBeatenText:
	text "My fossils were"
	line "crushed!"
	done

