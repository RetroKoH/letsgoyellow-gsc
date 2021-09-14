ViridianNicknameSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, VIRIDIAN_CITY, 2
	warp_event  3,  7, VIRIDIAN_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x9ae54, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x9aecb, -1
	object_event  5,  2, SPRITE_PIDGEY, SPRITEMOVEDATA_POKEMON, 0, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_POKEMON, PIDGEY, PodgeyText, -1
	object_event  6,  3, SPRITE_RATTATA, SPRITEMOVEDATA_POKEMON, 0, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_POKEMON, RATTATA, RatteyText, -1

UnknownText_0x9ae54:
	text "Do you put a lot"
	line "of thought into"

	para "naming your"
	line "#mon?"

	para "Giving them good"
	line "nicknames adds to"

	para "the fun of trading"
	line "with others."
	done

UnknownText_0x9aecb:
	text "They're Podgey--"
	line "a Pidgey--and"
	cont "Rattey--a Rattata."
	done

PodgeyText:
	text "Podgey: Piiiii!"
	done

RatteyText:
	text "Rattey: Kikiii!"
	done
