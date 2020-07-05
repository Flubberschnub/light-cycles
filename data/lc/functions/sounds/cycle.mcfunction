##cycle sounds
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] run function lc:sounds/cycle/engines
tag @e[tag=matchedid] remove matchedid
