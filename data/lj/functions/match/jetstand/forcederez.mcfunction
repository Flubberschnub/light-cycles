##speed stand forcederez
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
tag @e[tag=jetcollider,tag=matchedid] add derezzing
tag @s add derezzing
scoreboard players set @s rezanimate 16
execute at @s run playsound lightjet.derez master @a[distance=..30] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
