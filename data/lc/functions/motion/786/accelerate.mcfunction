#function lc:motion/786/accelrate
execute unless score @s[tag=!ribboning] speed >= 786 topSpeed run scoreboard players operation @s speed += 786 acceleration
execute if score @s[tag=!ribboning] speed >= 786 topSpeed run scoreboard players operation @s speed = 786 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += 786 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
