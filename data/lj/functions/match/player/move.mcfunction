##match/player/move
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute as @e[tag=jetstand,tag=matchedid,limit=1] unless score @s sputtertimer matches 1.. at @s rotated ~90 ~ run function lj:move
tag @e[tag=matchedid] remove matchedid
