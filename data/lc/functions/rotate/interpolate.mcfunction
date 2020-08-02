##interpolate

#execute unless entity @a[predicate=lc:lc/riding_cycle] run kill @e[tag=playerfacing]

##balance
execute as @e[tag=cyclestand,tag=matchedid] run function lc:rotate/tilt/balance

##rotation zones
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=1}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/1
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=2}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/2
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=3}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/3
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=4}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/4
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=5}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/5
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=6}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/6
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=7}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/7
execute as @a[predicate=lc:lc/riding_cycle,scores={y_rot_zone=8}] if score @s CycleID = IDMatcher CycleID run function lc:rotate/zones/8
