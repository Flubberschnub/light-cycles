##rotation

##position components
function lj:rotate/components/position

##store rotation in score
execute as @a[predicate=lj:lj/riding_jet] run function lj:rotate/storejetrotation
execute as @e[tag=jetfacing2d] run function lj:rotate/storejetrotation

##other stuff
execute as @a[predicate=lj:lj/riding_jet,tag=matchedid] if entity @e[tag=jetstand,tag=matchedid] run function lj:rotate/interpolate
#execute as @e[tag=jetfacing,tag=matchedid,limit=1] at @s facing entity @e[tag=jetstand,tag=matchedid] feet facing ^ ^ ^-1 run tp @s ~ ~ ~ ~-90 ~
#execute as @e[tag=jetstand,tag=matchedid] run data modify entity @s Rotation[0] set from entity @e[tag=jetfacing,tag=matchedid,limit=1] Rotation[0]
#execute as @e[tag=jetfacing,tag=matchedid,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
#execute as @e[tag=jetfacing2d,tag=matchedid] run data modify entity @s Motion[1] set from entity @e[tag=jetstand,tag=matchedid,limit=1] Motion[1]
execute at @e[tag=jetstand,tag=matchedid] at @s facing entity @e[tag=jetfacing2d,tag=matchedid,limit=1] feet rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~
#execute as @e[tag=jetstand,tag=matchedid] run data modify entity @s Motion[1] set from entity @e[tag=jetfacing2d,tag=matchedid,limit=1] Motion[1]
#execute as @e[tag=jetfacing2d,tag=matchedid] run data modify entity @s Motion[1] set value 0d
#execute at @e[tag=jetstand] if score @s CycleID = IDMatcher CycleID at @s store result entity @s Rotation float 1 run data get entity @e[tag=jetfacing,tag=matchedid,limit=1] Rotation
#kill @e[tag=jetfacing]
##temp particles
