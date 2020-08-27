#function lc:motion/jet4/accelrate
execute unless score @s[tag=!ribboning] speed >= jet4 topSpeed run scoreboard players operation @s speed += jet4 acceleration
execute if score @s[tag=!ribboning] speed >= jet4 topSpeed run scoreboard players operation @s speed = jet4 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += jet4 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
