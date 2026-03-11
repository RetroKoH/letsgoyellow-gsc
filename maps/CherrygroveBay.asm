CherrygroveBay_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 21, 22, HIDDEN_TREE_GROTTO, 1

	def_coord_events

	def_bg_events
	bg_event 21, 21, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_CHERRYGROVE_BAY
	bg_event 22, 21, BGEVENT_JUMPSTD, treegrotto, HIDDENGROTTO_CHERRYGROVE_BAY
	bg_event 11, 12, BGEVENT_READ, CherrygroveBayGalarianBirdsScript

	def_object_events
	itemball_event 22, 23, SHINY_STONE, 1, EVENT_CHERRYGROVE_BAY_SHINY_STONE
	cuttree_event -1,  8, EVENT_CHERRYGROVE_BAY_CUT_TREE
	fruittree_event  8,  9, FRUITTREE_CHERRYGROVE_BAY_1, POMEG_BERRY, PAL_NPC_RED
	fruittree_event  7, 11, FRUITTREE_CHERRYGROVE_BAY_2, KELPSY_BERRY, PAL_NPC_BLUE
	fruittree_event  8, 13, FRUITTREE_CHERRYGROVE_BAY_3, QUALOT_BERRY, PAL_NPC_PINK
	fruittree_event 14,  9, FRUITTREE_CHERRYGROVE_BAY_4, HONDEW_BERRY, PAL_NPC_GREEN
	fruittree_event 15, 11, FRUITTREE_CHERRYGROVE_BAY_5, GREPA_BERRY, PAL_NPC_YELLOW
	fruittree_event 14, 13, FRUITTREE_CHERRYGROVE_BAY_6, TAMATO_BERRY, PAL_NPC_RED

CherrygroveBayGalarianBirdsScript:
	opentext
	writetext .GreatTreeText
	waitbutton
	callasm CheckForLures
	iffalse_endtext ; User has no lures, do nothing
	writetext .LikeToUseItemText
	yesorno
	iffalse_endtext
	writetext .WhichLureText
	callasm CheckForLures
	callasm SetUpLureMenu
	iffalse_endtext ; User canceled the menu
	writetext .YouSprayedTheLureText
	waitbutton
	ifequalfwd POTENT_LURE_MENU_OPT, .Galarian_Articuno
	ifequalfwd MALIGN_LURE_MENU_OPT, .Galarian_Zapdos
; HARSH_LURE_MENU_OPT, .Galarian_Moltres
	checkevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_MOLTRES
	iftruefwd .NothingHappens
	closetext
	callasm GalarianMoltresEvent
	opentext
	farwritetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	loadwildmon MOLTRES, GALARIAN_FORM, 65
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	setevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_MOLTRES
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .NoCatchGalarianMoltres
	setflag ENGINE_PLAYER_CAUGHT_GALARIAN_MOLTRES
.NoCatchGalarianMoltres
	end

.Galarian_Articuno
	checkevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_ARTICUNO
	iftruefwd .NothingHappens
	closetext
	callasm GalarianArticunoEvent
	opentext
	farwritetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	loadwildmon ARTICUNO, GALARIAN_FORM, 65
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	setevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_ARTICUNO
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .NoCatchGalarianArticuno
	setflag ENGINE_PLAYER_CAUGHT_GALARIAN_ARTICUNO
.NoCatchGalarianArticuno
	end

.Galarian_Zapdos
	checkevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_ZAPDOS
	iftruefwd .NothingHappens
	closetext
	callasm GalarianZapdosEvent
	opentext
	farwritetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	loadwildmon ZAPDOS, GALARIAN_FORM, 65
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	setevent EVENT_CHERRYGROVE_BAY_FOUGHT_GALARIAN_ZAPDOS
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .NoCatchGalarianZapdos
	setflag ENGINE_PLAYER_CAUGHT_GALARIAN_ZAPDOS
.NoCatchGalarianZapdos
	end

.NothingHappens
	writetext .NothingHappensText
	waitbutton
	endtext

.GreatTreeText
	text "It's the Great"
	line "Tree of Cherry-"
	cont "grove!"
	done

.LikeToUseItemText
	text "Would you like to"
	line "use a Lure on"
	cont "the Great Tree?"
	done

.WhichLureText
	text "Which Lure would"
	line "you like to use?"
	done

.YouSprayedTheLureText
	text "You sprayed the"
	line "Lure on the tree."
	done

.NothingHappensText
	text "Nothing happened…"
	done
