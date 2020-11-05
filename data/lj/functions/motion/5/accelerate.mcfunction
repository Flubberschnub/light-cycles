#function lc:motion/jet5/accelrate
execute unless score @s[tag=!ribboning] speed >= jet5 topSpeed run scoreboard players operation @s speed += jet5 acceleration
execute if score @s[tag=!ribboning] speed >= jet5 topSpeed run scoreboard players operation @s speed = jet5 topSpeed
execute unless score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed += jet5 acceleration
execute if score @s[tag=ribboning] speed >= ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
