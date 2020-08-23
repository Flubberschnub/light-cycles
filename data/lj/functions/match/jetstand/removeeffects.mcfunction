scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
kill @e[tag=jetcart,limit=1,tag=matchedid]
effect clear @a[tag=matchedid] jump_boost
effect clear @a[tag=matchedid] invisibility
effect clear @a[tag=matchedid] slowness
effect clear @a[tag=matchedid] speed

tag @e[tag=matchedid] remove matchedid
