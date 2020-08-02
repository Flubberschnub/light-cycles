#function lc:motion/5/accelrate
execute unless score @s[tag=!ribboning] speed >= 5 topSpeed run scoreboard players operation @s speed += 5 acceleration
execute if score @s[tag=!ribboning] speed >= 5 topSpeed run scoreboard players operation @s speed = 5 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += 5 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
