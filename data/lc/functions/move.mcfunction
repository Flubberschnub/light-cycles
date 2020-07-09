##move (run as cyclestand)
execute as @s[nbt={OnGround:1b},tag=!moveup] run function aestd1:entity/set_motion_from_rotation
execute as @s[scores={speed=1000..},tag=!moveup] at @s if block ~ ~-0.2 ~ #lc:passthrough rotated ~90 45 run function aestd1:entity/set_motion_from_rotation
execute as @s[tag=moveup] at @s rotated ~90 -30 run function aestd1:entity/set_motion_from_rotation
scoreboard players operation @s[nbt={OnGround:1b}] aestd.math.in = @s speed
scoreboard players operation @s[tag=moveup] aestd.math.in = @s speed
tag @s[tag=moveup] remove moveup
execute as @s run function lc:motion/tick
execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
execute as @s[tag=moveup] run function aestd1:entity/set_motion_magnitude
execute as @s run function lc:rotate/tick

##speed gauges and stuff
execute as @a[predicate=lc:lc/controllingbike] run function lc:gauges/speedometer

##light ribbons
execute if entity @s[tag=ribboning] if entity @a[tag=matchedid,predicate=lc:lc/controllingbike] if entity @e[tag=cyclecollider,tag=matchedid,nbt={HurtTime:10s}] run function lc:lightribbon/deactivate
execute if entity @s[tag=!ribboning] if entity @a[tag=matchedid,predicate=lc:lc/controllingbike] if entity @e[tag=cyclecollider,tag=matchedid,nbt={HurtTime:10s}] run function lc:lightribbon/activate
execute as @s[tag=ribboning] at @s run function lc:lightribbon/tick
