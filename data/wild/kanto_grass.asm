; Kanto Pokémon in grass
; KantoGrassWildMons:

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	wildmon 3, PIDGEY
	wildmon 3, RATTATA
	wildmon 3, RATTATA
	wildmon 2, RATTATA
	wildmon 2, PIDGEY
	wildmon 4, PIDGEY
	wildmon 6, PIDGEY
	; day
	wildmon 3, PIDGEY
	wildmon 3, RATTATA
	wildmon 3, RATTATA
	wildmon 2, RATTATA
	wildmon 2, PIDGEY
	wildmon 4, PIDGEY
	wildmon 4, BELLSPROUT
	; nite
	wildmon 3, HOOTHOOT
	wildmon 3, RATTATA
	wildmon 3, RATTATA
	wildmon 2, RATTATA
	wildmon 2, HOOTHOOT
	wildmon 4, HOOTHOOT
	wildmon 4, ODDISH
	end_grass_wildmons

	db -1 ; end
