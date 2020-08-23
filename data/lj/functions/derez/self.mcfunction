##derez self
execute as @e[tag=jetstand,tag=matchedid] run tag @s add derezzing
effect clear @a[tag=matchedid] jump_boost
effect clear @a[tag=matchedid] invisibility
tag @a[tag=rezzedvehicle,tag=matchedid] remove rezzedvehicle
tag @a[tag=matchedid] remove uniquejetid
execute at @e[tag=jetstand,tag=matchedid] as @s run function lj:rez/batons/derez
tp @e[tag=matchedid,tag=jetcollider] ~ -1 ~
data merge entity @e[tag=matchedid,tag=jetcollider,limit=1] {DeathTime:0}
kill @e[tag=matchedid,tag=lightjet]
