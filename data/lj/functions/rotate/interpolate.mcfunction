##interpolate

#execute unless entity @a[predicate=lj:lj/riding_jet] run kill @e[tag=playerfacing]

##balance
execute as @e[tag=jetstand,tag=matchedid] run function lj:rotate/tilt/balance

##rotationx zones (left or right detection)
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=1}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/1
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=2}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/2
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=3}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/3
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=4}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/4
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=5}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/5
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=6}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/6
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=7}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/7
execute as @a[predicate=lj:lj/riding_jet,scores={y_rot_zone=8}] if score @s JetID = IDMatcher JetID run function lj:rotate/zones/x/8

##rotationy up or down
#execute as @a[predicate=lj:lj/riding_jet] if score @s x_rot < @e[tag=jetfacing2d,tag=matchedid,limit=1] x_rot if score @s JetID = IDMatcher JetID run function lj:rotate/tilt/tiltup
#execute as @a[predicate=lj:lj/riding_jet] if score @s x_rot > @e[tag=jetfacing2d,tag=matchedid,limit=1] x_rot if score @s JetID = IDMatcher JetID run function lj:rotate/tilt/tiltdown
execute as @e[tag=jetstand,tag=matchedid,limit=1] store result entity @s Pose.Head.[2] float 1 run data get entity @s Rotation.[1] -1
