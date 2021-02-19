ManiasHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  5,  1, SIGNPOST_JUMPSTD, radio2
	bg_event  7,  1, SIGNPOST_JUMPSTD, picturebookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ManiaScript, -1

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckie
	yesorno
	iffalse .refusetotakeshuckie
	special SpecialGiveShuckie
	iffalse .partyfull
	special TeachShuckiePoisonJab
	writetext ManiaText_TakeCareOfShuckie
	buttonsound
	waitsfx
	writetext ManiaText_GotShuckie
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_SHUCKIE_GIVEN
	iffalse .returnshuckie
	jumpopenedtext ManiaText_TakeCareOfShuckie

.partyfull
	jumpopenedtext ManiaText_PartyFull

.refusetotakeshuckie
	jumpopenedtext ManiaText_IfHeComesBack

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special SpecialReturnShuckie
	ifequal $0, .wrong
	ifequal $1, .refused
	ifequal $3, .superhappy
	ifequal $4, .default_postevent
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	jumpopenedtext ManiaText_ShuckieNotThere

.superhappy
	writetext ManiaText_ShuckieLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	jumpopenedtext ManiaText_SameAsBeingRobbed

.nothingleft
	jumpopenedtext ManiaText_ShuckieIsYourLastMon

.default_postevent
	jumpopenedtext ManiaText_HappinessSpeech

ManiaText_AskLookAfterShuckie:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #mon!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #mon"
	line "for a while?"
	done

ManiaText_TakeCareOfShuckie:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotShuckie:
	text "<PLAYER> received a"
	line "#mon."
	done

ManiaText_PartyFull:
	text "Your #mon party"
	line "is full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my #-"
	line "mon?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done

ManiaText_ThankYou:
	text "Thank you!"
	done

ManiaText_ShuckieNotThere:
	text "Hey, you don't"
	line "have my #mon"
	cont "with you."
	done

ManiaText_ShuckieLikesYou:
	text "My #mon has"
	line "come to like you."

	para "All right, you"
	line "should keep it."

	para "But promise to"
	line "be good to it!"
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."
	done

ManiaText_HappinessSpeech:
	text "For #mon, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done

ManiaText_ShuckieIsYourLastMon:
	text "If I take my #-"
	line "mon back, what are"

	para "you going to use"
	line "in battle?"
	done
