##move
execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_from_rotation
scoreboard players operation @s[nbt={OnGround:1b}] aestd.math.in = @s speed
execute as @s run function lc:motion/tick
execute as @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
execute as @s[nbt={OnGround:1b}] run function lc:rotate/tick
