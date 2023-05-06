; Kanto Pokémon in grass
; KantoGrassWildMons:

	def_grass_wildmons ROUTE_1, 2, 6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	wildmon PIDGEY
	wildmon RATTATA
	wildmon RATTATA
	wildmon RATTATA
	wildmon PIDGEY
	wildmon PIDGEY
	wildmon BELLSPROUT
	wildmon BULBASAUR ; RARE
	; day
	wildmon PIDGEY
	wildmon RATTATA
	wildmon RATTATA
	wildmon RATTATA
	wildmon PIDGEY
	wildmon PIDGEY
	wildmon BELLSPROUT
	wildmon BULBASAUR ; RARE
	; nite
	wildmon HOOTHOOT
	wildmon RATTATA
	wildmon RATTATA
	wildmon RATTATA
	wildmon HOOTHOOT
	wildmon HOOTHOOT
	wildmon ODDISH
	wildmon BULBASAUR ; RARE
	end_grass_wildmons

	db -1 ; end
