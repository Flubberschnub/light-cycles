##animatetp
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute at @a[tag=matchedid,limit=1] rotated ~ 0 anchored feet positioned ^ ^ ^2 run tp @s ~ ~ ~ ~-90 ~
tag @e[tag=matchedid] remove matchedid
