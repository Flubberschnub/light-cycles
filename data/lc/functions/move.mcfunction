##move (run as cyclestand)
##store falldistance
execute store result score FallDistance Constant run data get entity @s FallDistance 1
execute at @s if block ~ ~-0.2 ~ #lc:passthrough run tag @s add inAir

#execute as @s[nbt={OnGround:1b},tag=!moveup] run function aestd1:entity/set_motion_from_rotation
#execute as @s[scores={speed=1000..},tag=!moveup] at @s if block ~ ~-0.2 ~ #lc:passthrough rotated ~90 45 run function aestd1:entity/set_motion_from_rotation
#execute as @s[tag=moveup] at @s rotated ~90 -30 run function aestd1:entity/set_motion_from_rotation
function aestd1:entity/set_motion_from_rotation
#scoreboard players operation @s[nbt={OnGround:1b}] aestd.math.in = @s speed
#scoreboard players operation @s[tag=moveup] aestd.math.in = @s speed
#execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
#execute as @s[tag=moveup] run function aestd1:entity/set_motion_magnitude
scoreboard players operation @s aestd.math.in = @s speed
function aestd1:entity/set_motion_magnitude
#execute as @s[tag=moveup] run data modify entity @s Motion[1] set value 0.5d
execute as @s[tag=moveup] store result entity @s Motion[1] double 0.0004 run scoreboard players get @s speed
execute as @s run function lc:motion/tick
execute as @s run function lc:rotate/tick
kill @e[tag=aestd.context.position_cloud]
##moveup tick
execute as @s[tag=moveup,scores={movinguptick=1..}] run scoreboard players remove @s movinguptick 1
execute at @s[tag=moveup,scores={movinguptick=..0}] run tag @s remove moveup

##speed gauges and stuff
execute as @a[predicate=lc:lc/riding_cycle,tag=matchedid] run function lc:gauges/speedometer

##light ribbons
execute if entity @s[tag=ribboning] if entity @a[tag=matchedid,predicate=lc:lc/accelerating] run function lc:lightribbon/deactivate
execute if entity @s[tag=!ribboning] if entity @a[tag=matchedid,predicate=lc:lc/accelerating] run function lc:lightribbon/activate
execute as @s[tag=ribboning] at @s run function lc:lightribbon/tick

##reset falldistance
scoreboard players reset FallDistance Constant
tag @s remove inAir
