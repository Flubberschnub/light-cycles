##move (run as cyclestand)


function aestd1:entity/set_motion_from_rotation2d
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
scoreboard players reset tempYPos Constant
