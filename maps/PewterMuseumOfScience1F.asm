PewterMuseumOfScience1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	def_coord_events
	coord_event 15, 6, 0, PewterMuseum_MeetBrockScene1
	coord_event 16, 6, 0, PewterMuseum_MeetBrockScene2
	coord_event 17, 6, 0, PewterMuseum_MeetBrockScene3

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, KabutopsFossilSignpostScript
	bg_event  6,  3, BGEVENT_READ, OmastarFossilSignpostScript
	bg_event  3,  6, BGEVENT_READ, AerodactylFossilSignpostScript
	bg_event 12,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 13,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 14,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 15,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 17,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 18,  1, BGEVENT_JUMPTEXT, Museum1FBookshelfSignpostText

	def_object_events
	object_event 16,  3, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Museum1FBrockScript, EVENT_GYMUNLOCK_BROCK									; Hide after unlocking the gym
	object_event 16,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum1FScientistText, -1
	object_event 18,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Museum1FFossilScientistScript, EVENT_HIDE_MUSEUM_FOSSIL_GUY	; Hide until Route 3 quest finished
	object_event 12,  4, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum1FReceptionistScript, -1
	object_event  1,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum1FGrampsText, -1
	object_event  4,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum1FYoungsterText, -1

	object_const_def
	const MUSEUM_BROCK
	const MUSEUM_SCIENTIST1
	const MUSEUM_SCIENTIST2

PewterMuseum_BrockWelcomesYou:
	showtext PewterMuseum_BrockTalksToScientist
	showemote EMOTE_SHOCK, MUSEUM_BROCK, 15
	turnobject MUSEUM_BROCK, DOWN
	opentext
	writetext PewterMuseum_BrockGreetsPlayer
	waitbutton
	closetext
	end

PewterMuseum_MeetBrockScene1:
	scall PewterMuseum_BrockWelcomesYou
	applymovement PLAYER, Movement_WalkUpToBrock1
	sjump PewterMuseum_MeetBrockScene_Cont

PewterMuseum_MeetBrockScene2:
	scall PewterMuseum_BrockWelcomesYou
	applymovement PLAYER, Movement_WalkUpToBrock2
	sjump PewterMuseum_MeetBrockScene_Cont

PewterMuseum_MeetBrockScene3:
	scall PewterMuseum_BrockWelcomesYou
	applymovement PLAYER, Movement_WalkUpToBrock3

PewterMuseum_MeetBrockScene_Cont:
	showtext PewterMuseum_BrockExplains
	turnobject MUSEUM_BROCK, UP
	showtext PewterMuseum_ScientistQuestions
	showemote EMOTE_SHOCK, MUSEUM_BROCK, 15
	showtext PewterMuseum_BrockReassures
	turnobject MUSEUM_BROCK, DOWN
	showtext PewterMuseum_BrockAsksForHelp		; Asks you to meet Fossil Dude on Rt 3. There are fossil remains.
	;addcellnum PHONE_BROCK
	;setevent EVENT_START_BROCK_QUEST
	setscene $1
	end

Movement_WalkUpToBrock1:
	step_right
Movement_WalkUpToBrock2:
	step_up
	step_up
	step_end

Movement_WalkUpToBrock3:
	step_left
	step_up
	step_up
	step_end

Movement_BrockLeaves:
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end

Museum1FBrockScript:
	faceplayer
	opentext
	writetext Museum1FBrockText
	waitbutton
	closetext
	end

Museum1FFossilScientistScript:
	faceplayer
	opentext
	writetext Museum1FFossilScientistText
	waitbutton
	checkitem HELIX_FOSSIL
	iftrue .own_helix
	checkitem DOME_FOSSIL
	iftrue .own_dome
	checkitem OLD_AMBER
	iftrue .ask_old_amber
	jumpopenedtext NoFossilsText

.own_helix
	checkitem DOME_FOSSIL
	iftrue .own_helix_and_dome
	checkitem OLD_AMBER
	iftrue .ask_helix_amber
	writetext AskHelixFossilText
	yesorno
	iftrue ResurrectHelixFossil
	sjump .maybe_later

.own_dome
	checkitem OLD_AMBER
	iftrue .ask_dome_amber
	writetext AskDomeFossilText
	yesorno
	iftrue ResurrectDomeFossil
	sjump .maybe_later

.own_helix_and_dome
	checkitem OLD_AMBER
	iftrue .ask_helix_dome_amber
	loadmenu HelixDomeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectDomeFossil
	sjump .maybe_later

.ask_old_amber
	writetext AskOldAmberText
	yesorno
	iftrue ResurrectOldAmber
	sjump .maybe_later

.ask_helix_amber
	loadmenu HelixAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectOldAmber
	sjump .maybe_later

.ask_dome_amber
	loadmenu DomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectDomeFossil
	ifequal $2, ResurrectOldAmber
	sjump .maybe_later

.ask_helix_dome_amber
	loadmenu HelixDomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, ResurrectHelixFossil
	ifequal $2, ResurrectDomeFossil
	ifequal $3, ResurrectOldAmber
.maybe_later:
	jumpopenedtext MaybeLaterText

HelixDomeMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Cancel@"

HelixAmberMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Helix Fossil@"
	db "Old Amber@"
	db "Cancel@"

DomeAmberMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Dome Fossil@"
	db "Old Amber@"
	db "Cancel@"

HelixDomeAmberMenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Old Amber@"
	db "Cancel@"

ResurrectHelixFossil:
	takeitem HELIX_FOSSIL
	scall ResurrectAFossilScript
	givepoke OMANYTE, 20
	sjump FinishResurrect

ResurrectDomeFossil:
	takeitem DOME_FOSSIL
	scall ResurrectAFossilScript
	givepoke KABUTO, 20
	sjump FinishResurrect

ResurrectOldAmber:
	takeitem OLD_AMBER
	scall ResurrectAFossilScript
	givepoke AERODACTYL, 20
FinishResurrect:
	iffalse_jumpopenedtext NoRoomForFossilPokemonText
	jumpopenedtext TakeGoodCareOfItText

ResurrectAFossilScript:
	writetext ResurrectingPokemonText
	waitbutton
	closetext
	turnobject MUSEUM_SCIENTIST2, RIGHT
	pause 15
	playsound SFX_BOOT_PC
	waitsfx
	pause 30
	playsound SFX_4_NOTE_DITTY
	waitsfx
	pause 5
	waitsfx
	pause 30
	playsound SFX_SHUT_DOWN_PC
	waitsfx
	pause 15
	faceplayer
	opentext
	end

Museum1FReceptionistScript:
	readvar VAR_FACING
	ifequal DOWN, .Sneak
	ifequal LEFT, .Sneak
	jumpthistextfaceplayer

	text "Welcome!"

	para "Thanks to a gene-"
	line "rous donation"
	cont "by Silph Co.,"

	para "admission is free"
	line "of charge!"

	para "Please go ahead."
	done

.Sneak:
	jumpthistextfaceplayer

	text "You can't sneak"
	line "in the back way!"
	done

KabutopsFossilSignpostScript:
	refreshscreen
	trainerpic KABUTOPS_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Kabutops Fossil"
	line "(Dome)"

	para "A primitive and"
	line "rare #mon."
	done

OmastarFossilSignpostScript:
	refreshscreen
	trainerpic OMASTAR_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Omastar Fossil"
	line "(Helix)"

	para "A primitive and"
	line "rare #mon."
	done

AerodactylFossilSignpostScript:
	refreshscreen
	trainerpic AERODACTYL_FOSSIL
	waitbutton
	closepokepic
	jumpthistext

	text "Aerodactyl Fossil"

	para "A primitive and"
	line "rare #mon."
	done

PewterMuseum_BrockTalksToScientist:
	text "Brock: And you"
	line "believe that"
	cont "Aerodactyl is"
	cont "connected, right?"
	done
	
PewterMuseum_BrockGreetsPlayer:
	text "Brock: Oh! You"
	line "must be <PLAYER>!"
	
	para "Blue told me about"
	line "you. Please, come"
	cont "over!"
	done

PewterMuseum_BrockExplains:
	text "Brock: I'm glad to"
	line "see you! We've got"
	cont "a huge problem!"
	
	para "A bizarre group of"
	line "people broke in"
	cont "and stole some of"
	cont "our equipment."
	
	para "The equipment is"
	line "for digging up the"
	cont "#mon fossils!"
	
	para "We think they want"
	line "to use the fossils"
	cont "for awful #mon"
	cont "experiments!"
	done

PewterMuseum_ScientistQuestions:
	text "Scientist: To be"
	line "precise, I think"
	cont "they want to make"
	cont "a new monstrosity!"
	
	para "Apparently, they"
	line "also stole tech"
	cont "from Bill in"
	cont "Cerulean City!"
	
	para "But Brock, why do"
	line "you think this kid"
	cont "can help us?"
	done

PewterMuseum_BrockReassures:
	text "Brock: Hey now,"
	line "Blue hand-picked"
	cont "<PLAYER> from the"
	cont "Viridian School!"
	
	para "<PLAYER> has been"
	line "one of Blue's top"
	cont "three prospect"
	cont "trainers!"
	
	para "Blue's a former"
	line "Champion. I trust"
	cont "his eye for"
	cont "potential!"
	done

PewterMuseum_BrockAsksForHelp:
	text "Brock: Please go"
	line "to Route 3."
	
	para "One of our best"
	line "scientists needs"
	cont "help to uncover"
	cont "another fossil."
	
	para "He can't do it"
	line "without that"
	cont "equipment they"
	cont "stole."
	
	para "Meet me back here"
	line "afterward!"
	done

Museum1FBrockText:
	text "You can find my"
	line "assistant on"
	cont "Route 3."
	
	para "He's near a set"
	line "of rocks toward"
	cont "the south."
	done

Museum1FScientistText:
	text "We are proud of"
	line "three fossils of"

	para "rare, prehistoric"
	line "#mon."

	para "I helped assemble"
	line "them!"
	done

Museum1FFossilScientistText:
	text "Did you know that"
	line "you can extract"

	para "#mon from"
	line "fossils?"

	para "If you ever need"
	line "to, let me take"
	cont "care of it!"
	done

Museum1FGrampsText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1FYoungsterText:
	text "There are two"
	line "places that I"
	cont "love!"

	para "One is the Ruins"
	line "of Alph in Johto."

	para "The other is the"
	line "Pewter Museum!"

	para "I get a sense of"
	line "history from both"
	cont "of them."
	done

Museum1FBookshelfSignpostText:
	text "Thick and well-"
	line "read books!"

	para "Archaeology Man-"
	line "ual, Lost #mon,"
	cont "#mon Ancestors,"

	para "Caring at the"
	line "Loamy Layer of"
	cont "Kanto…"
	done

AskHelixFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Helix Fossil?"
	done

AskDomeFossilText:
	text "Do you want to"
	line "resurrect the"
	cont "Dome Fossil?"
	done

AskOldAmberText:
	text "Do you want to"
	line "resurrect the"
	cont "Old Amber?"
	done

NoFossilsText:
	text "Hey! You don't"
	line "have any fossils."
	done

MaybeLaterText:
	text "Just talk to me"
	line "if you change"
	cont "your mind."
	done

ResurrectingPokemonText:
	text "OK! I'll resurrect"
	line "the #mon!"
	done

NoRoomForFossilPokemonText:
	text "Hey! You can't"
	line "carry another"
	cont "#mon, and your"
	cont "box is full, too!"
	done

TakeGoodCareOfItText:
	text "Take good care"
	line "of it!"
	done
