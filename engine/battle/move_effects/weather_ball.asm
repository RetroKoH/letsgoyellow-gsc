BattleCommand_weatherball:
	ld a, [wAttackMissed]
	and a
	ret nz
	farjp WeatherBallDamageStats
