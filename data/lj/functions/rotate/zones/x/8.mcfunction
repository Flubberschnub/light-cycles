##8
execute as @e[tag=jetfacingx,scores={y_rot_zone=1},tag=matchedid] as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltleft
execute as @e[tag=jetfacingx,scores={y_rot_zone=2..3},tag=matchedid] as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltleft
execute as @e[tag=jetfacingx,scores={y_rot_zone=7},tag=matchedid] as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltright
execute as @e[tag=jetfacingx,scores={y_rot_zone=5..6},tag=matchedid] as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltright
execute as @e[tag=jetfacingx,scores={y_rot_zone=8},tag=matchedid] if score @s y_rot > @a[predicate=lj:lj/riding_jet,tag=matchedid,limit=1] y_rot as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltleft
execute as @e[tag=jetfacingx,scores={y_rot_zone=8},tag=matchedid] if score @s y_rot < @a[predicate=lj:lj/riding_jet,tag=matchedid,limit=1] y_rot as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/tiltright
