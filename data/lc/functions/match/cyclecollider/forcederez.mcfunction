##collider forcederez
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
tag @s add derezzing
execute as @e[tag=matchedid,tag=cyclestand] run tag @s add derezzing
execute as @e[tag=matchedid,tag=cyclestand] run scoreboard players set @s rezanimate 16
execute at @e[tag=cyclestand,tag=matchedid] run playsound lightcycle.derez master @a[distance=..10] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
