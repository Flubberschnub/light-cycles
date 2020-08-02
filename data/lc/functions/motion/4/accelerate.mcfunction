#function lc:motion/4/accelrate
execute unless score @s[tag=!ribboning] speed >= 4 topSpeed run scoreboard players operation @s speed += 4 acceleration
execute if score @s[tag=!ribboning] speed >= 4 topSpeed run scoreboard players operation @s speed = 4 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += 4 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
