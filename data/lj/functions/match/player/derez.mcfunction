##derez
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
tag @s remove derezjet
scoreboard players set @e[tag=jetstand,tag=matchedid] rezanimate 16
tag @e[tag=jetstand,tag=matchedid] add derezzing
tag @e[tag=jetstand,tag=matchedid] remove rezzing
execute at @e[tag=jetstand,tag=matchedid] run playsound lightjet.derez master @a[distance=..30] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
