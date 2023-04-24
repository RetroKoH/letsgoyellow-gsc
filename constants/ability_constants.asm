; ability constants
	const_def
	const NO_ABILITY	; $00
	const STENCH		; $01 - 10% chance of making the target flinch when attacking it. If leading, chance of wild mons -50%
	const DRIZZLE		; $02 - Summons rain in battle
	const SPEED_BOOST	; $03 - Speed increases 1 stage each turn
	const BATTLE_ARMOR	; $04 - Protects from critical hits.
	const STURDY		; $05 - Cannot be OHKOd from full health
	const DAMP			; $06 - Prevents Explosion and Aftermath Ability
	const LIMBER		; $07 - Prevents paralysis
	const SAND_VEIL		; $08 - Boosts evasion by 1 stage in a sandstorm; Negates Sandstorm damage.
	const STATIC		; $09 - 30% chance of paralyzing foes on contact
	const VOLT_ABSORB	; $0a - Electric attacks and status moves restore HP (Cell Battery is overridden by this)
	const WATER_ABSORB	; $0b - Water attacks and status moves restore HP (Absorb Bulb and L.Moss are overridden by this)
	const OBLIVIOUS		; $0c - Prevents infatuation, Intimidate, and Taunt (Unless Mold Breaker). Destiny Knot and Mental Herb take effect first.
	const CLOUD_NINE	; $0d - Negates weather effects
	const COMPOUND_EYES	; $0e - Move accuracy boosted by 1.3x. If leading, wild mon held item frequency is boosted.
	const INSOMNIA		; $0f - Prevents sleep
	const IMMUNITY		; $10 - Prevents poison
	const FLASH_FIRE	; $11 - Immunity to Fire moves. If hit, move will boost Fire attack power by 1.5x.
	const SHIELD_DUST	; $12 - Prevents added effects (e.g. Fake Out won't flinch you)
	const OWN_TEMPO		; $13 - Prevents confusion and Intimidate. Berry will take effect first.
	const SUCTION_CUPS	; $14 - Prevents forced switch via moves or Red Card. If leading, bites will occur more often while fishing.
	const INTIMIDATE	; $15 - Lowers the foe's Attack, unless it has Oblivious, Own Tempo, Inner Focus, or Scrappy. Triggers Rattled, 50% chance to prevent encounters 5+ lv lower.
	const SHADOW_TAG	; $16 - Prevents switching out, unless via U-turn, Volt Switch or Helping Hand, Run Away Ability, Shed Shell or Smoke Ball. Cannot Teleport. This ability negates itself, as does Ghost type.
	const LEVITATE		; $17 - Immune to Ground Type moves or Arena Trap ability. - Should Add Smack Down Attack???
	const EFFECT_SPORE	; $18 - 30% chance that attackers will be poisoned, paralyzed, OR asleep, (10% probability each), unless Grass-type, Overcoat Ability, or Safety Goggles.
	const SYNCHRONIZE	; $19 - Passes on status problems. This takes effect before berries cure the status. Also guarantees the nature of wild mons.
	const CLEAR_BODY	; $1a - Prevents stat reductions by foes, except by Mold Breaker Ability users.
	const NATURAL_CURE	; $1b - Cures any status conditions upon switching out, or ending battle.
	const LIGHTNING_ROD	; $1c - Immunity to Electric moves. If hit, move will boost Special Attack by 1 stage.
	const SERENE_GRACE	; $1d - Doubles the chances of a move's secondary effect, as well as effects of Kings Rock and Razor Fang.
	const SWIFT_SWIM	; $1e - Speed stat is doubled in rain.
	const CHLOROPHYLL	; $1f - Speed stat is doubled in sunlight.
	const ILLUMINATE	; $20 - Light-based moves are boosted by 1.2x (NEW). Doubles encounter rate.
	const TRACE			; $21 - Copies foe's ability. Cannot Copy Imposter, Neutralizing Gas, or Power of Alchemy.
	const HUGE_POWER	; $22 - Physical Attack stat is doubled. Doubles opponent's Physical attack when using Foul Play.
	const POISON_POINT	; $23 - 30% chance of poisoning foes on contact. Doesn't work on Poison or Steel types.
	const INNER_FOCUS	; $24 - Prevents flinching (Except by Mold Breakers) or Intimidation
	const MAGMA_ARMOR	; $25 - Prevents freezing. (Berry takes effect first). The number of cycles it takes for all Pokémon Eggs in the party to hatch are halved.
	const WATER_VEIL	; $26 - Prevents burns. (Berry takes effect first).
	const MAGNET_PULL	; $27 - Traps Steel-type Pokemon.
	const SOUNDPROOF	; $28 - Immunity to sound-based moves.
	const RAIN_DISH		; $29 - Recovers 1/16 HP in rain every turn.
	const SAND_STREAM	; $2a - Summons sandstorm in battle.
	const PRESSURE		; $2b - Raises foe's PP usage. If leading, 50% chance to force wild encounter to be max level.
	const THICK_FAT		; $2c - Reduces damage from Fire and Ice attacks by 50%.
	const EARLY_BIRD	; $2d - Sleep duration is halved.
	const FLAME_BODY	; $2e - 30% chance of burning foes on contact. The number of cycles it takes for all Pokémon Eggs in the party to hatch are halved.
	const RUN_AWAY		; $2f - Guarantees fleeing, Teleporting, AND switching out (NEW)*
	const KEEN_EYE		; $30 - Prevents lowering of accuracy stat; Ignores foe's evasion stat; Negated by Mold Breaker. 50% chance to prevent encounters 5+ lv lower.
	const HYPER_CUTTER	; $31 - Prevents lowering of phys. attack stat; Negated by Mold Breaker. Using Chop in the overworld cuts more grass.
	const PICKUP		; $32 - Picks up a consumable item used by the opposing Pokemon if not holding anything. Picks up items after battles in the overworld.
	const HUSTLE		; $33 - Boosts the Pokémon's Physical Attack stat by 50% (not including Confusion damage), but lowers accuracy of physical attacks by 20%. If leading, 50% chance to force wild encounter to be max level.
	const CUTE_CHARM	; $34 - 30% chance of infatuating foes on contact. If leading, 66.7% chance to force an encounter to be the opposite gender.
	const STICKY_HOLD	; $35 - Prevents loss of item via Knock Off or Bug Bite. If leading, bites will occur more often while fishing.
	const SHED_SKIN		; $36 - 1/3 chance of removing a status condition
	const GUTS			; $37 - Boosts Attack by 50% if mon has a status condition. Burn reduction is ALSO negated. Doesn't take effect if thawing from Freeze w/ Flame Wheel.
	const MARVEL_SCALE	; $38 - Boosts Defense by 50% if mon has a status condition.
	const LIQUID_OOZE	; $39 - Inflicts damage on foes using any draining move against it. This includes Leech Seed and Dream Eater.
	const OVERGROW		; $3a - Grass-type move's power increased by 50% if user has 1/3 or less of its max HP remaining.
	const BLAZE			; $3b - Fire-type move's power increased by 50% if user has 1/3 or less of its max HP remaining.
	const TORRENT		; $3c - Water-type move's power increased by 50% if user has 1/3 or less of its max HP remaining.
	const SWARM			; $3d - Bug-type move's power increased by 50% if user has 1/3 or less of its max HP remaining.
	const ROCK_HEAD		; $3e - Prevents recoil damage, except from Struggle and Frustration.
	const DROUGHT		; $3f - Summons sunlight in battle
	const ARENA_TRAP	; $40 - Prevents grounded mons from switching out, except for Ghosts. Helping Hand, U-turn, Volt Switch, Shed Shell, and Run Away allows switch out. Cannot Teleport. Doubles encounter rate.
	const VITAL_SPIRIT	; $41 - Prevents sleep. If leading, 50% chance to force wild encounter to be max level.
	const WHITE_SMOKE	; $42 - Prevents stat reduction from other Pokémon's moves and Abilities. Negated by Mold Breaker. If leading, chance of wild mons -50%.
	const SHELL_ARMOR	; $43 - Protects from critical hits.
	const TANGLED_FEET	; $44 - Doubles evasion if Pokémon is confused.
	const MOTOR_DRIVE	; $45 - Immunity to Electric moves. If hit, move will boost Speed by 1 stage.
	const RIVALRY		; $46 - Deals 25% more damage if the target is the same gender, and 25% less if the target is the opposite gender. (not including Confusion damage)
	const STEADFAST		; $47 - Increases user's Speed stat by one stage whenever it flinches.
	const SNOW_CLOAK	; $48 - Boosts evasion by 1 stage in hail; Negates Hail damage.
	const GLUTTONY		; $49 - User eats Berries that would normally be eaten at 25% HP or lower to be eaten at 50% HP or lower instead.
	const ANGER_POINT	; $4a - Maxes the Attack stat after the Pokémon takes a critical hit. Does not activate if a Substitute is hit.
	const UNBURDEN		; $4b - Doubles the Pokémon's Speed stat when the Pokémon's held item is used or lost.
	const DRY_SKIN		; $4c - Loses 1/8 HP in sunlight. Gains 1/8 HP in rainfall. Fire attacks deal 25% more damage. Water attacks are negated, healing instead (Absorb Bulb isn't consumed).
	const DOWNLOAD		; $4d - Raises Attack or Sp. Attack +1 depending on the foe's currently lowest defensive stat. In case of a tie, Sp. Attack is raised.
	const IRON_FIST		; $4e - Boosts punching-based moves by 20%.
	const POISON_HEAL	; $4f - Poisoning or toxic poisoning restores 1/8 HP per turn instead of dealing damage. Toxic will still increment, and if suppressed, Toxic will carry out HP loss as normal.
	const ADAPTABILITY	; $50 - STAB moves deal 2x damage instead of 1.5x damage.
	const SKILL_LINK	; $51 - Maximizes the number of times multistrike moves hit.
	const HYDRATION		; $52 - Cures status conditions in rain.
	const SOLAR_POWER	; $53 - In sun, the Pokémon's Sp. Atk stat is boosted by 1.5x, but its HP decreases by 1/8 every turn.
	const QUICK_FEET	; $54 - Boosts Speed by 50% if mon has a status condition. Paralysis reduction is ALSO negated. If leading, chance of wild mons -50%.
	const SNIPER		; $55 - Critical hits deal 2.25x damage, instead of 1.5x damage.
	const MAGIC_GUARD	; $56 - All forms of indirect damage is prevented, though the statuses and their other effects remain.
	const NO_GUARD		; $57 - Ensures attacks by or against the Pokémon always land, immunities notwithstanding. Doubles encounter rate.
	const TECHNICIAN	; $58 - Increases BP of moves w/ BP of 60 or less by 50%. This includes moves with variable power, but not BP modifiers. Struggle is boosted, but confusion damage is not.
	const LEAF_GUARD	; $59 - Prevents status conditions in sun. Does NOT cure pre-existing status problems.
	const MOLD_BREAKER	; $5a - Moves can be used regardless of (most) Abilities.
	const SUPER_LUCK	; $5b - Increases the critical hit ratio by 1 stage. If leading, wild mon held item frequency is boosted.
	const AFTERMATH		; $5c - If this Pokemon faints from a contact move, 1/4 Max HP damage is dealt back to the attacker. 
	const ANTICIPATION	; $5d - Senses an opposing Pokémon's dangerous moves.
	const FOREWARN		; $5e - Forewarn shows the opponent's move with the highest BP.
	const UNAWARE		; $5f - When attacking or being attacked, the Pokémon ignores the target's stat changes. Doesn't affect Gyro Ball or confusion damage.
	const TINTED_LENS	; $60 - Doubles the damage done by Not Very Effective moves.
	const FILTER		; $61 - Reduces damage taken from super effective moves by 25%.
	const SCRAPPY		; $62 - Enables moves to hit Ghost-type foes. Negates Intimidate.
	const ICE_BODY		; $63 - Recovers 1/16 HP in hail every turn.
	const SOLID_ROCK	; $64 - Reduces damage taken from super effective moves by 25%.
	const SNOW_WARNING	; $65 - Summons hail in battle
	const FRISK			; $66 - Allows the Pokémon to see the opponent's held item upon entering battle
	const RECKLESS		; $67 - Boosts moves with recoil or crash damage by 20%.
	const PICKPOCKET	; $68 - Steals a foe's held item on contact, if not holding one.
	const SHEER_FORCE	; $69 - Raises BP of attacks with additional effects by 30%, ignoring the additional effects.
	const CONTRARY		; $6a - Reverses all stat changes to this Pokemon.
	const UNNERVE		; $6b - Opposing Pokémon are unable to eat Berries.
	const DEFIANT		; $6c - With every stat lowering by an opponent, Attack stat increases by 2 stages. Activates before White Herb.
	const CURSED_BODY	; $6d - 30% chance to disable a move used on the Pokémon.
;	const HEALER		; $6e - This Pokemon heals an ally’s status condition when switching in or out.
;	const FRIEND_GUARD	; $6f - When this Pokemon switches out, the ally switching in takes 25% less damage on the next turn.
	const WEAK_ARMOR	; $70 - Physical attacks to the Pokémon lower its Defense, but raise its Speed by 2 stages.
	const LIGHT_METAL	; $71 - Halves the Pokemon's weight. Heavy Ball uses species weight, not the weight as a result of this Ability.
	const MULTISCALE	; $72 - Reduces damage taken from damage-dealing moves by half when at maximum HP. Doesn't affect static damage moves.
	const HARVEST		; $73 - 50% chance to create another Berry after one is used. Lost Berries don't get Harvested. IF leading, 50% chance to force a Grass encounter.
	const MOODY			; $74 - Raises one stat by 2 stages and lowers another by 1 stage, each turn. Doesn't affect Accuracy/Evasion (UNUSED)
	const OVERCOAT		; $75 - Protects the Pokémon from sand, hail, and powder/spores.
	const POISON_TOUCH	; $76 - 30% chance of poisoning foes when making contact. Doesn't work on Poison or Steel types.
	const REGENERATOR	; $77 - Restores 33% of the Pokémon's maximum HP upon switching out, unless suppressed.
	const BIG_PECKS		; $78 - Prevents the Pokémon from having its Defense stat lowered. Ignored by Mold Breaker.
	const SAND_RUSH		; $79 - Speed is doubled in Sandstorms.
	const WONDER_SKIN	; $7a - lowers accuracy of foes' status moves to 50%. Unaffected if already lower than 50%. Ignored by Mold Breaker.
	const ANALYTIC		; $7b - Boosts move power by 30% when the Pokémon moves last.
	const IMPOSTER		; $7c - Immediate transformation. Won't activate if for is transformed, or w/ Substitute. Cannot be copied by Trace or Power of Alchemy.
	const INFILTRATOR	; $7d - This Pokemon bypasses foes' screens, Aurora Veil, and Haze. If leading, chance of wild mons -50%.
	const MOXIE			; $7e - Boosts Attack by one stage after directly knocking out a foe w/ a move. (Find this effect and apply Fell Stinger as well)
	const JUSTIFIED		; $7f - Raises Attack by one stage when hit by a Dark-type move.
	const RATTLED		; $7a - Dark-, Ghost-, and Bug-type attacks, or Intimidate ability, boost its Speed stat one stage.
	const MAGIC_BOUNCE	; $7b - Bounces back certain status moves to the attacker.
	const SAP_SIPPER	; $7c - Immunity to Grass moves. If hit, move will boost Attack by 1 stage.
	const PRANKSTER		; $7d - Gives +1 priority to a status move. Dark-types are immune to moves that gain this benefit.
	const SAND_FORCE	; $7e - Boosts Rock-, Ground-, and Steel-type attacks by 30% in a sandstorm. Negates Sandstorm damage.
	const FUR_COAT		; $7f - Doubles Defense of the Pokemon to halve physical damage. Has no effect on confusion damage.
	const BULLETPROOF	; $80 - Protects the Pokémon from ball and bomb moves. (New for Ursaluna)
	const COMPETITIVE	; $81 - With every stat lowering by an opponent, Special Attack stat increases by 2 stages. Activates before White Herb. 
	const MEGA_LAUNCHER	; $82 - Powers up Pulse moves by 50%. (For now, UNUSED)
	const TOUGH_CLAWS	; $83 - Powers up moves that make direct contact by 30%.
	const PIXILATE			; $84 - Normal-type moves become Fairy-type, boosted in power by 20%.
	const AERILATE			; $85 - Normal-type moves become Flying-type, boosted in power by 20%.
	const PARENTAL_BOND		; $86 - Causes most damaging moves used by the Pokémon to become two-strike moves. The second move deals 25% damage.
	const BERSERK			; $87 - Every time the HP of this drops below half, its Special Attack is raised +1.
	const SLUSH_RUSH		; $88 - Speed is doubled in Hail.
	const GALVANIZE			; $89 - Normal-type moves become Electric-type, boosted in power by 20%.
	const SURGE_SURFER		; $8a - Powers up Electric-type moves by 50%. 
	const CORROSION			; $8b - Can poison Steel or Poison type foes.
	const TANGLING_HAIR		; $8c - Making contact lowers the foe's Speed stat one stage.
;	const MISTY_SURGE		; $8d - This protects this Pokémon from non-volatile status conditions and confusion for 5 turns.
	const GORILLA_TACTICS	; $8e - Boosts the Pokémon's Attack stat but only allows the use of the first selected move. (UNUSED)
	const NEUTRALIZING_GAS	; $8f - Nullifies all abilities.
	const PASTEL_VEIL		; $90 - Prevents poisoning. Upon switch-in, if ally switching out was poisoned, this cures poisoning.
	const QUICK_DRAW		; $91 - Enables the Pokémon to move first occasionally
;	const CURIOUS_MEDICINE	; $92 - 1/3 chance of removing stat reductions.
;	const POWER_OF_ALCHEMY	; $?? - Copies ability of defeated ally on switch-in. Trace and Imposter not eligible.
	const SCREEN_CLEANER	; $94 - When entering battle, screens and Aurora Veil are cleared from both sides.
	const STEELY_SPIRIT		; $93 - Powers up Steel-type moves by 50%.
;	const CUD_CHEW			; $?? - If a berry is used, the effect occurs again on the next turn.
	const SHARPNESS			; $?? - Slicing moves are boosted by 50%.
NUM_ABILITIES EQU const_value
