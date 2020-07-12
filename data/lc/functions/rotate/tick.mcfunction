##rotation

##position components
function lc:rotate/components/position

##store rotation in score
execute as @a[predicate=lc:lc/riding_cycle,tag=matchedid] run function lc:rotate/storecyclerotation
execute as @e[tag=cyclefacing,tag=matchedid] run function lc:rotate/storecyclerotation

##other stuff
execute as @a[predicate=lc:lc/riding_cycle,tag=matchedid] if entity @e[tag=cyclestand,tag=matchedid,nbt={OnGround:1b}] run function lc:rotate/interpolate
execute at @e[tag=cyclestand,nbt={OnGround:1b},tag=matchedid] at @s facing entity @e[tag=cyclefacing,tag=matchedid,limit=1] feet rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~
#execute at @e[tag=cyclestand] if score @s CycleID = IDMatcher CycleID at @s store result entity @s Rotation float 1 run data get entity @e[tag=cyclefacing,tag=matchedid,limit=1] Rotation
#kill @e[tag=cyclefacing]
##temp particles
