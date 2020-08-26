##air rezzing
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid

execute as @a[tag=matchedid,limit=1,predicate=!lj:lj/riding_jet] at @s anchored eyes run tp @e[tag=rezzing,tag=jetstand,tag=matchedid] ^ ^ ^3 ~-90 ~
effect give @a[tag=matchedid,limit=1] minecraft:levitation 1 252 true

tag @e[tag=matchedid] remove matchedid
