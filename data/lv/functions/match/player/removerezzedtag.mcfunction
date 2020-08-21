##removerezzedtag
scoreboard players operation IDMatcher JetID = @s JetID
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e[tag=jetstand] if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute as @e[tag=cyclestand] if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
execute unless entity @e[tag=matchedid] run tag @s remove rezzedvehicle
tag @e[tag=matchedid] remove matchedid
