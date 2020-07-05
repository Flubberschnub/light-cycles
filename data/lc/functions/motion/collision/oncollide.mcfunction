##oncollide
execute as @e[tag=matchedid,tag=cyclestand] run scoreboard players set @s speed 0
execute as @e[tag=matchedid,tag=cyclestand] run data modify entity @s Motion.[0] set value 0
execute as @e[tag=matchedid,tag=cyclestand] run data modify entity @s Motion.[2] set value 0
