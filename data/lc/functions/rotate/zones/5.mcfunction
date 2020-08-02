##5
execute as @e[tag=cyclefacing,scores={y_rot_zone=6},tag=matchedid] as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltleft
execute as @e[tag=cyclefacing,scores={y_rot_zone=7..8},tag=matchedid] as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltleft
execute as @e[tag=cyclefacing,scores={y_rot_zone=4},tag=matchedid] as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltright
execute as @e[tag=cyclefacing,scores={y_rot_zone=2..3},tag=matchedid] as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltright
execute as @e[tag=cyclefacing,scores={y_rot_zone=5},tag=matchedid] if score @s y_rot > @a[predicate=lc:lc/riding_cycle,tag=matchedid,limit=1] y_rot as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltleft
execute as @e[tag=cyclefacing,scores={y_rot_zone=5},tag=matchedid] if score @s y_rot < @a[predicate=lc:lc/riding_cycle,tag=matchedid,limit=1] y_rot as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/tiltright
