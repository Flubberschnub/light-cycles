##derez
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
tag @s remove derezcycle
scoreboard players set @e[tag=cyclestand,tag=matchedid] rezanimate 16
tag @e[tag=cyclestand,tag=matchedid] add derezzing
tag @e[tag=cyclestand,tag=matchedid] add noclipbaton
execute at @e[tag=cyclestand,tag=matchedid] run playsound lightcycle.derez master @a[distance=..30] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
