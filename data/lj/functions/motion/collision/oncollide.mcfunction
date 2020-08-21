##oncollide
#execute if block ~ ~1 ~ #lj:passthrough as @e[tag=matchedid,tag=jetstand] if score @s speed matches 1.. unless entity @e[tag=lightribbon,distance=..2] unless entity @e[tag=lightjet,tag=!matchedid,distance=..1.2] run function lc:motion/collision/moveup
execute as @e[tag=matchedid,tag=jetstand,scores={speed=..1600},tag=!moveup] run function lj:motion/collision/stop
execute as @e[tag=matchedid,tag=jetstand,scores={speed=1601..},tag=!moveup] run function lj:motion/collision/movingderez
