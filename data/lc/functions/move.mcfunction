##move (run as cyclestand)
execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_from_rotation
scoreboard players operation @s[nbt={OnGround:1b}] aestd.math.in = @s speed
execute as @s run function lc:motion/tick
execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
execute as @s run function lc:rotate/tick

##light ribbons
execute if entity @s[tag=!ribboning] if entity @a[tag=matchedid,predicate=lc:lc/controllingbike] if entity @e[tag=cyclecollider,tag=matchedid,nbt={HurtTime:10s}] run function lc:lightribbon/activate
execute if entity @s[tag=ribboning] if entity @a[tag=matchedid,predicate=lc:lc/controllingbike] if entity @e[tag=cyclecollider,tag=matchedid,nbt={HurtTime:10s}] run function lc:lightribbon/deactivate
execute as @s[tag=ribboning] at @s run function lc:lightribbon/tick
