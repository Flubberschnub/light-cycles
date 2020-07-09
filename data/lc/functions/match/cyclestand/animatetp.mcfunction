##animatetp
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
execute at @a[tag=matchedid,limit=1] rotated ~ 0 anchored feet positioned ^ ^ ^2 run tp @s ~ ~ ~ ~-90 ~
tag @e[tag=matchedid] remove matchedid
