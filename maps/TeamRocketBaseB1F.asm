TeamRocketBaseB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 27,  2, MAHOGANY_MART_1F, 3
	warp_event  3, 14, TEAM_ROCKET_BASE_B2F, 1
	warp_event  5, 15, TEAM_ROCKET_BASE_B1F, 4
	warp_event 25,  2, TEAM_ROCKET_BASE_B1F, 3

	def_coord_events
	; KoH - Take note from Polished Crystal on how to do security cameras
	; I'll implement these in the Rocket Hideout.

	; There are spots on the floor that trigger a Pokémon battle.
	; Each Pokémon (Voltorb, Koffing, Geodude) knows Explosion as a unique wild move.
;	coord_event  2,  7, SCENE_TEAMROCKETBASEB1F_TRAPS, ExplodingTrap1


	def_bg_events

	def_object_events


; PlaySecurityCameraSounds:
	; playsound SFX_LICK
	; pause 10
	; playsound SFX_LICK
	; pause 10
	; playsound SFX_LICK
	; pause 10
	; playsound SFX_LICK
	; pause 10
	; playsound SFX_LICK
	; pause 10
	; playsound SFX_LICK
	; end

; ExplodingTrap1:
	; checkevent EVENT_EXPLODING_TRAP_1
	; iftrue NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_1
	; end

; ExplodingTrap2:
	; checkevent EVENT_EXPLODING_TRAP_2
	; iftrue NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_2
	; end

; ExplodingTrap3:
	; checkevent EVENT_EXPLODING_TRAP_3
	; iftrue NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_3
	; end

; ExplodingTrap4:
	; checkevent EVENT_EXPLODING_TRAP_4
	; iftrue NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_4
	; end

; ExplodingTrap5:
	; checkevent EVENT_EXPLODING_TRAP_5
	; iftrue NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_5
	; end

; ExplodingTrap6:
	; checkevent EVENT_EXPLODING_TRAP_6
	; iftrue NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_6
	; end

; ExplodingTrap7:
	; checkevent EVENT_EXPLODING_TRAP_7
	; iftrue NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_7
	; end

; ExplodingTrap8:
	; checkevent EVENT_EXPLODING_TRAP_8
	; iftruefwd NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_8
	; end

; ExplodingTrap9:
	; checkevent EVENT_EXPLODING_TRAP_9
	; iftruefwd NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_9
	; end

; ExplodingTrap10:
	; checkevent EVENT_EXPLODING_TRAP_10
	; iftruefwd NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_10
	; end

; ExplodingTrap11:
	; checkevent EVENT_EXPLODING_TRAP_11
	; iftruefwd NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_11
	; end

; ExplodingTrap12:
	; checkevent EVENT_EXPLODING_TRAP_12
	; iftruefwd NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_12
	; end

; ExplodingTrap13:
	; checkevent EVENT_EXPLODING_TRAP_13
	; iftruefwd NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_13
	; end

; ExplodingTrap14:
	; checkevent EVENT_EXPLODING_TRAP_14
	; iftruefwd NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_14
	; end

; ExplodingTrap15:
	; checkevent EVENT_EXPLODING_TRAP_15
	; iftruefwd NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_15
	; end

; ExplodingTrap16:
	; checkevent EVENT_EXPLODING_TRAP_16
	; iftruefwd NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_16
	; end

; ExplodingTrap17:
	; checkevent EVENT_EXPLODING_TRAP_17
	; iftruefwd NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_17
	; end

; ExplodingTrap18:
	; checkevent EVENT_EXPLODING_TRAP_18
	; iftruefwd NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_18
	; end

; ExplodingTrap19:
	; checkevent EVENT_EXPLODING_TRAP_19
	; iftruefwd NoExplodingTrap
	; scall GeodudeExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_19
	; end

; ExplodingTrap20:
	; checkevent EVENT_EXPLODING_TRAP_20
	; iftruefwd NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_20
	; end

; ExplodingTrap21:
	; checkevent EVENT_EXPLODING_TRAP_21
	; iftruefwd NoExplodingTrap
	; scall KoffingExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_21
	; end

; ExplodingTrap22:
	; checkevent EVENT_EXPLODING_TRAP_22
	; iftruefwd NoExplodingTrap
	; scall VoltorbExplodingTrap
	; reloadmapafterbattle
	; setevent EVENT_EXPLODING_TRAP_22
	; end

; VoltorbExplodingTrap:
	; special FadeOutPalettes
	; special LoadMapPalettes
	; cry VOLTORB
	; special FadeInPalettes_EnableDynNoApply
	; setlasttalked -1
	; loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	; loadwildmon VOLTORB, 30
	; startbattle
	; end

; GeodudeExplodingTrap:
	; special FadeOutPalettes
	; special LoadMapPalettes
	; cry GEODUDE
	; special FadeInPalettes_EnableDynNoApply
	; setlasttalked -1
	; loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	; loadwildmon GEODUDE, 28
	; startbattle
	; end

; KoffingExplodingTrap:
	; special FadeOutPalettes
	; special LoadMapPalettes
	; cry KOFFING
	; special FadeInPalettes_EnableDynNoApply
	; setlasttalked -1
	; loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	; loadwildmon KOFFING, 28
	; startbattle
	; end

; NoExplodingTrap:
	; end