scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
execute as @e[tag=cyclecollider,tag=matchedid] run function lc:derez/self
tag @e[tag=matchedid] remove matchedid
