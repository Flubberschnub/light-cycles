##oncollide
#execute unless block ~ ~1 ~ #lc:passthrough as @e[tag=matchedid,tag=cyclestand] if score @s speed matches 1.. run data merge entity @s {NoGravity:1b}
#execute unless block ~ ~1 ~ #lc:passthrough as @e[tag=matchedid,tag=cyclestand] if score @s speed matches 1.. run scoreboard players set @s speed 0
#execute if block ~ ~1 ~ #lc:passthrough as @e[tag=matchedid,tag=cyclestand,tag=onground] if score @s speed matches 1.. at @s run tp ~ ~.5 ~
execute as @e[tag=matchedid,tag=cyclestand,scores={speed=..1600}] run function lc:motion/collision/stop
execute as @e[tag=matchedid,tag=cyclestand,scores={speed=1601..}] run function lc:motion/collision/movingderez
