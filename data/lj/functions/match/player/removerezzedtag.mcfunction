##removerezzedtag
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e[tag=jetstand] if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute unless entity @e[tag=matchedid] run tag @s remove rezzedvehicle
tag @e[tag=matchedid] remove matchedid
