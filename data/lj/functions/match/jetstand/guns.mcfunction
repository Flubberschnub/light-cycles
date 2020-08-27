##guns match (run by jetstand)
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid

execute as @s at @s run function lj:guns/tick

tag @e[tag=matchedid] remove matchedid
