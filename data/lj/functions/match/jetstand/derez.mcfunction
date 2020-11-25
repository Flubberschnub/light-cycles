scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
scoreboard players add @a[tag=matchedid] derezzed 1
execute as @e[tag=jetcollider,tag=matchedid] run function lj:derez/self
tag @e[tag=matchedid] remove matchedid
