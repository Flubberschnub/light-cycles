##move (run as cyclestand)

#execute as @s[nbt={OnGround:1b},tag=!moveup] run function aestd1:entity/set_motion_from_rotation
#execute as @s[scores={speed=1000..},tag=!moveup] at @s if block ~ ~-0.2 ~ #lj:passthrough rotated ~90 45 run function aestd1:entity/set_motion_from_rotation
#execute as @s[tag=moveup] at @s rotated ~90 -30 run function aestd1:entity/set_motion_from_rotation
function aestd1:entity/set_motion_from_rotation2d
#scoreboard players operation @s[nbt={OnGround:1b}] aestd.math.in = @s speed
#scoreboard players operation @s[tag=moveup] aestd.math.in = @s speed
#execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
#execute as @s[tag=moveup] run function aestd1:entity/set_motion_magnitude
scoreboard players operation @s aestd.math.in = @s speed
function aestd1:entity/set_motion_magnitude
execute as @s run function lj:motion/tick
execute as @s run function lj:rotate/tick
kill @e[tag=aestd.context.position_cloud]

##speed gauges and stuff
execute as @a[predicate=lj:lj/riding_jet,tag=matchedid] run function lj:gauges/speedometer

##light ribbons
execute if entity @s[tag=ribboning] if entity @a[tag=matchedid,predicate=lj:lj/accelerating] run function lj:lightribbon/deactivate
execute if entity @s[tag=!ribboning] if entity @a[tag=matchedid,predicate=lj:lj/accelerating] run function lj:lightribbon/activate
execute as @s[tag=ribboning] at @s run function lj:lightribbon/tick
