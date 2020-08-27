##collider derez
scoreboard players operation IDMatcher JetID = @s JetID
execute as @e if score @s JetID = IDMatcher JetID run tag @s add matchedid
execute unless entity @a[tag=matchedid,predicate=lj:lj/riding_jet] run tag @s add derezzing
execute as @e[tag=matchedid,tag=jetstand] unless entity @a[tag=matchedid,predicate=lc:lc/riding_jet] run tag @s add derezzing
execute as @e[tag=matchedid,tag=jetstand] unless entity @a[tag=matchedid,predicate=lc:lc/riding_jet] run scoreboard players set @s rezanimate 16
execute at @e[tag=jetstand,tag=matchedid] unless entity @a[tag=matchedid,predicate=lc:lc/riding_jet] run playsound lightjet.derez master @a[distance=..30] ~ ~ ~ 1 1
tag @e[tag=matchedid] remove matchedid
