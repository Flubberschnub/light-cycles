#function lc:motion/786/accelrate
execute unless score @s speed >= 786 topSpeed run scoreboard players operation @s speed += 786 acceleration
execute if score @s speed >= 786 topSpeed run scoreboard players operation @s speed = 786 topSpeed
