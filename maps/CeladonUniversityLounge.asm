CeladonUniversityLounge_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 11, CELADON_UNIVERSITY_1F, 10
	warp_event  5, 11, CELADON_UNIVERSITY_1F, 10

	db 0 ; coord events

	db 3 ; bg events
	bg_event  7,  5, SIGNPOST_JUMPTEXT, CeladonUniversityLoungeBookshelf1Text
	bg_event  7,  8, SIGNPOST_READ, CeladonUniversityLoungeBookshelf2
	bg_event  0,  7, SIGNPOST_RIGHT, CeladonUniversityLoungeComputer

	db 0 ; object events

CeladonUniversityLoungeBookshelf1Text:
	text "It's stuffed full"
	line "of copies of"
	cont "#mon manga!"
	done

CeladonUniversityLoungeBookshelf2:
	opentext
	writetext .Text1
	waitbutton
	checkevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
	iftrue .GotItem
	verbosegiveitem PP_MAX
	iffalse .Done
	setevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
.Done
	endtext

.GotItem
	jumpopenedtext .Text2

.Text1:
	text "This book has a"
	line "secret compartment"

	para "where the pages"
	line "should be!"
	done

.Text2:
	text "Too bad--it's"
	line "empty."
	done

CeladonUniversityLoungeComputer:
	thistext

	text "There's a player"
	line "character running"

	para "around a 2D"
	line "Celadon City."
	done
