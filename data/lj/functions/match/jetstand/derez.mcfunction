scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute as @e[tag=jetcollider,tag=matchedid] run function lj:derez/self
tag @e[tag=matchedid] remove matchedid
