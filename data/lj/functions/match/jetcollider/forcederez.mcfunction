##collider forcederez
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
tag @s add derezzing
execute as @e[tag=matchedid,tag=jetstand] run tag @s add derezzing
execute as @e[tag=matchedid,tag=jetstand] run scoreboard players set @s rezanimate 16
execute at @e[tag=jetstand,tag=matchedid] run playsound lightcycle.derez master @a[distance=..30] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
