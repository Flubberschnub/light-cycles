#function lc:motion/73/accelrate
execute unless score @s[tag=!ribboning] speed >= 73 topSpeed run scoreboard players operation @s speed += 73 acceleration
execute if score @s[tag=!ribboning] speed >= 73 topSpeed run scoreboard players operation @s speed = 73 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += 73 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
