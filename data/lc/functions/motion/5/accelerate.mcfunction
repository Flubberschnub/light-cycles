#function lc:motion/786/accelrate
execute unless score @s speed >= 5 topSpeed run scoreboard players operation @s speed += 5 acceleration
execute if score @s speed >= 5 topSpeed run scoreboard players operation @s speed = 5 topSpeed
