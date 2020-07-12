##oncollide
execute if block ~ ~1 ~ #lc:passthrough as @e[tag=matchedid,tag=cyclestand] if score @s speed matches 1.. unless entity @e[tag=lightribbon,distance=..2] run function lc:motion/collision/moveup
execute as @e[tag=matchedid,tag=cyclestand,scores={speed=..1600},tag=!moveup] run function lc:motion/collision/stop
execute as @e[tag=matchedid,tag=cyclestand,scores={speed=1601..},tag=!moveup] run function lc:motion/collision/movingderez
