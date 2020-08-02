##rotation

##position components
function lc:rotate/components/position

##store rotation in score
execute as @a[predicate=lc:lc/riding_cycle] run function lc:rotate/storecyclerotation
execute as @e[tag=cyclefacing] run function lc:rotate/storecyclerotation

##other stuff
execute as @a[predicate=lc:lc/riding_cycle,tag=matchedid] if entity @e[tag=cyclestand,tag=matchedid,nbt={OnGround:1b}] run function lc:rotate/interpolate
#execute as @e[tag=cyclefacing,tag=matchedid,limit=1] at @s facing entity @e[tag=cyclestand,tag=matchedid] feet facing ^ ^ ^-1 run tp @s ~ ~ ~ ~-90 ~
#execute as @e[tag=cyclestand,tag=matchedid] run data modify entity @s Rotation[0] set from entity @e[tag=cyclefacing,tag=matchedid,limit=1] Rotation[0]
#execute as @e[tag=cyclefacing,tag=matchedid,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=cyclefacing,tag=matchedid] run data modify entity @s Motion[1] set from entity @e[tag=cyclestand,tag=matchedid,limit=1] Motion[1]
execute at @e[tag=cyclestand,tag=matchedid] at @s facing entity @e[tag=cyclefacing,tag=matchedid,limit=1] feet rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~
execute as @e[tag=cyclestand,tag=matchedid] run data modify entity @s Motion[1] set from entity @e[tag=cyclefacing,tag=matchedid,limit=1] Motion[1]
execute as @e[tag=cyclefacing,tag=matchedid] run data modify entity @s Motion[1] set value 0d
#execute at @e[tag=cyclestand] if score @s CycleID = IDMatcher CycleID at @s store result entity @s Rotation float 1 run data get entity @e[tag=cyclefacing,tag=matchedid,limit=1] Rotation
#kill @e[tag=cyclefacing]
##temp particles
